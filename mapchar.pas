{ XML Sonderzeichen Verarbeitung}

unit mapchar;

//{$MODE Delphi}

interface

uses SysUtils;

const xml_characters : array[160..255] of char =
  (' ','¡','¢','£','¤','¥','¦','§','¨','©','ª','«','¬','-','®','¯','°','±','²','³','´','µ',
   '¶','·','¸','¹','º','»','¼','½','¾','¿','À','Á','Â','Ã','Ä','Å','Æ','Ç','È','É','Ê','Ë',
   'Ì','Í','Î','Ï','Ð','Ñ','Ò','Ó','Ô','Õ','Ö','×','Ø','Ù','Ú','Û','Ü','Ý','Þ','ß','à','á',
   'â','ã','ä','å','æ','ç','è','é','ê','ë','ì','í','î','ï','ð','ñ','ò','ó','ô','õ','ö','÷',
   'ø','ù','ú','û','ü','ý','þ','ÿ');

const xml_names : array[160..255] of string =
  ('nbsp','iexcl','cent','pound','curren','yen','brvbar','sect','uml','copy','ordf','laquo','not','shy','reg','macr','deg','plusmn','sup2','sup3','acute','micro',
   'para','middot','cedil','sup1','ordm','raquo','frac14','frac12','frac34','iquest','Agrave','Aacute','Acirc','Atilde','Auml','Aring','AElig','Ccedil','Egrave','Eacute','Ecirc','Euml',
   'Igrave','Iacute','Icirc','Iuml','ETH','Ntilde','Ograve','Oacute','Ocirc','Otilde','Ouml','times','Oslash','Ugrave','Uacute','Ucirc','Uuml','Yacute','THORN','szlig','agrave','aacute',
   'acirc','atilde','auml','aring','aelig','ccedil','egrave','eacute','ecirc','euml','igrave','iacute','icirc','iuml','eth','ntilde','ograve','oacute','ocirc','otilde','ouml','divide',
   'oslash','ugrave','uacute','ucirc','uuml','yacute','thorn','yuml');

function xml2ansi(s:string):string; forward;
function ansi2xml(s:string):string; forward;

implementation


{ &uuml; -> ü }

function xml2ansi(s:string):string;
var
  i,j,c : integer;
  b : string;
begin
  b := '';
  result := '';
  for i := 1 to length(s) do
    case s[i] of
      '&' : b := '&';
      ';' : if length(b) > 0 then
              if b[1] = '&' then
                begin
                delete(b,1,1);
                if b <> '' then
                  if b[1] = '#' then
                    begin
                    if length(b) > 1 then { UnicodeNr. in Hex? }
                      if upcase(b[2]) = 'X' then b[2] := '$';
                    c := strtointdef(copy(b,2,length(b)),0);
                    if (c >= 160) and (c <= 255) then { Zeichen in Tabelle hinzufügen }
                      result := result + xml_characters[c];
                    end else
                    if b = 'lt' then result := result + '<' else { XML eigene Zeichen }
                      if b = 'gt' then result := result + '>' else
                        if b = 'amp' then result := result + '&' else
                          if b = 'quot' then result := result + '"' else
                            for j := 160 to 255 do { Zeichennamen in Tabelle suchen }
                              if xml_names[j] = b then
                                begin
                                result := result + xml_characters[j];
                                break;
                                end;
                b := '';
                end else result := result + s[i]
                   else result := result + s[i];
      else
        if b <> '' then b := b + s[i] else result := result + s[i];
    end;
end;

function ansi2xml(s:string):string;
var
  i : integer;
begin
  result := '';
  for i := 1 to length(s) do
    if s[i] = '<' then result := result + '&lt;' else
      if s[i] = '>' then result := result + '&gt;' else
       if s[i] = '&' then result := result + '&amp;' else
        if s[i] = '"' then result := result + '&quot;' else
         if s[i] >= #160 then result := result + '&' + xml_names[ord(s[i])] + ';' else result := result + s[i];
end;

end.
