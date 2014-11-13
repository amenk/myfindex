unit myf_consts;

interface

const
  {
  urlz_help = 'http://localhost/self/dyn/help.php?';
  urlz_reg    = 'http://localhost/self/dyn/reg.php?program=MyFiles';
  urlz_update = 'http://localhost/self/dyn/update.php?';
}
  urlz_help = 'http://dyn.self-soft.de/help.php?';
  urlz_reg = 'http://reg.self-soft.de/?MyFiles';
  urlz_update = 'http://dyn.self-soft.de/update.php?';

  urlz_feedback = 'mailto:myfiles@self-soft.de?Subject=Feedback%20zu%20MyFiles%20';
  urlz_crash = 'mailto:myfiles_crash@self-soft.de?Subject=Absturz%20von%20MyFiles%20';

var
  tx_unreg: string;
{ Previewkind }
const
  { Text }
  pk_std = 1;
  pk_id3 = 2;
  pk_zipfile = 3;
  pk_verinfo = 4;
  pk_mp3 = 5;
  pk_img = 6;
  pk_imgt = 7;
  pk_txt = 8; { Textdateien }
  pk_html = 9; { HTML-Dateien }

{ INI }
  ini_folders = 'Folders';
  ini_collections = 'Collections';
  ini_colpre = 'Collection.';
  ini_rdopre = 'RDOptions.';
  ini_rdofo = 'Folder';
  ini_rdofi = 'File';
  ini_rdofoc = 'FoldersCount';
  ini_rdofic = 'FilesCount';

  ini_combodis = 'CombomodeDisabled';
  ini_diskvfirst = 'DiskviewFirst';
  ini_alwayssn = 'UseSerial';
  ini_gui = 'GUI';

  ini_splash = 'Splash';
  ini_xpmen = 'XPMenu';
  ini_xpgrad = 'XPGradient';
  ini_toolbg = 'ToolbarBackground';
  ini_tbcaptions = 'ToolbarShowCaptions';

  ini_guimain = 'GUI.MainForm';
  ini_guilv = 'GUI.ListView';
  ini_colors = 'GUI.Colors';  
  ini_config = 'Config';
  ini_plugins = 'PlugIns';
  ini_props = 'Properties';
  ini_pidisabled = 'DontLoad';
  ini_startcol = 'DefaultCol';
  ini_prev = 'Preview.';
  ini_h = ini_prev + 'Hoerbsp.';
  ini_ph_duration = ini_h + 'duration';
  ini_ph_qual = ini_h + 'bitrate';
  ini_ph_param = ini_h + 'paramters';
  ini_b = ini_prev + 'Bilder.';
  ini_pb_width = ini_b + 'width';
  ini_pb_height = ini_b + 'height';
  ini_pb_qual = ini_b + 'JPEG-quality';

  ini_histlen = 'history';
  ini_hperm = 'historyispermanent';

  ini_lays = 'Listlayouts';
{ CollectionIni }
  ini_labels = 'Labels';
  ini_colcleanup = 'CleanUpDisks';
  ini_lastfile = 'LastOpenedFile';

{ Spalten Daten-IDs }
  cl_filename = 'Dateiname';
  cl_size = 'Größe';
  cl_typ = 'Typ';
  cl_changed = 'Geändert am';
  cl_read = 'Eingelesen am';
  cl_note = 'Notiz';
  cl_attr = 'Attribute';
  cl_disk = 'Disk';
  cl_pfad = 'Pfad';
  cl_dskpfad = 'Ort';
  cl_prev = 'Vorschau';
  cl_text = 'Notiz/Vorschau';
  cl_label = 'Datenträger';

  cl_pnote = 'Notiz.';
  cl_pprev = 'Vorschau.';
  cl_ptext = '.';


const
  def1 = '"0,1,2,3,4","181,76,116,114,327",2,Dateiname,Größe,Typ,"Geändert am","Notiz/Vorschau"';
  def2 = '"0,1,2,3,4","169,82,68,111,384",3,Datenträger,Größe,Typ,"Eingelesen am",Notiz';
  def3= '"0,1,2,3,4,5,6","199,83,148,111,94,54,114",2,Dateiname,Größe,Typ,"Geändert am","Notiz/Vorschau",Disk,Pfad';
  def4= '"0,1,2,3,4,5","181,76,116,114,217,100",2,Dateiname,Größe,Typ,"Geändert am","Notiz/Vorschau",Disk';

{ Misc }
  lame_timeout = 5000;

  txt_startm = 'MyFiles.lnk';
  txt_protocol = 'myfiles';

{-- Sprachspezifisch --}
resourcestring
  str_needupdate = 'Diese Programmversion ist veraltet!' + #13#10 + 'Um alle Funktionen wie bisher nutzen zu können ist ein Update nötig :-)' + #13#10 + '' + #13#10 + 'Möchtest du jetzt nach Updates suchen?';
  str_funcoff = 'Funktion deaktiviert';
  str_needupds = 'Update nötig';

//  str_muchresult = 'Deine Suchanfrage hat bereits über 500 passende Dateien ergeben!' + #10#13 + 'Es wird empfohlen, die Suche abzubrechen um weitere Kritierien anzugeben.' + #10#13 + 'Suche trotzdem fortsetzen?';
  str_question = 'Frage';
  str_error = 'Fehler';
  str_notice = 'Hinweis';
  str_delcol = 'Bist du sicher, dass du die Sammlung ''%s'' löschen möchtest?';
  str_delcol2 = '...willst du vielleicht doch noch abbrechen?';
  str_delcol3 = 'Ernste Frage';

  str_cantdel = 'Die aktuelle Sammlung kann nicht gelöscht werden!';
  str_cantrename = 'Ein Datenträger mit diesem Namen existiert bereits in dieser Sammlung!'+ #10#13+
                   'Gib bitte einen anderen Namen ein.';

  str_dellist = 'Bist du sicher, dass du die Liste ''%s'' löschen möchtest?';
  str_showlist = 'Möchtest du nun zur neuen Liste wechseln?';
  str_listexists = 'Die Liste ''%s'' existiert bereits!';
// Listenkombinationen
  str_lc1 = '[doppelte Dateien aus %s]';
  str_lc2 = '[in %s aber nicht in %s]';
  str_lc3 = '[in %s und in %s]';
  str_lc4 = '[%s + %s]';
  str_filecount = 'Die aktuelle Liste enthält %.0n Dateien.';
// Modus
  str_cmode1 = 'Doppelte Dateien';
  str_cmode2 = 'nicht in 2. Liste vorhanden';
  str_cmode3 = 'in 2. Liste vorhanden';
  str_cap1 = 'Liste mit doppelten Dateien';
  str_cap2 = 'Generierte Liste';
  str_cap3 = 'Kombinierte Liste';

  str_Enoopt = 'keine Optionen ausgewählt';
  str_wait = 'Einen Moment bitte...';

  str_Eicol = 'Ungültige Spalte zur Sortierung';
  str_s1 = 'Initialisierung ... ok';
  str_s2 = 'Lade ';
  str_s3 = 'ok';
  str_s4 = '... neu!';
  str_selected = '%.0n Objekt(e) markiert';
  str_nothing = 'kein Objekt gewählt';

  str_plugzip = 'ZIP: %.0n Datei(en) - %s';
  str_plughtml = 'HTML-Dokument';
  str_plugtxt = 'Text';
  str_plugmp3 = 'MP3-Audio Datei';

  str_Eimpossible = 'unmöglicher Fehler';
  str_listcreated = '''%s'' wurde erzeugt (enhält %.0n Dateien)';
  str_Esize = 'Minimale Größe größer als maximale Größe';
  str_Edate = 'Minimales Datum größer als maximales Datum';
  str_file = 'Datei';
  str_listfromview = 'Liste wurde erzeugt und mit den Dateien der aktuellen Ansicht gefüllt.';
  str_quickinfo = 'Du hast diese Funktion noch nie genutzt!' + #13#10 + 'Möchtest du zusätzliche Informationen und Tipps sehen?';
  str_confirm = 'bestätigen...';
  str_sresult = 'Suchergebnis';
  str_list = 'Liste:';
  str_Enotthere = '''%s'' existiert in ''%s'' nicht!';
  str_links = 'Verknüpfung(en) wurden auf dem Desktop erstellt.';
  str_folders = 'Ordneransicht';
  str_disks = 'Datenträgerübersicht';
  str_search = 'Suchergebnis';
  str_connecting = 'Registrierseite wird im Browser geöffnet - Achtung: Es wird eine Internet-Verbindung benötigt!';

  str_verbund = 'Verbundordner';
  str_xdisk = 'Datenträger';
  str_drive = 'LW';
  str_nolabel = 'Label unbekannt';
  str_misc = 'versch.';
  str_nodisc = 'kein Datenträger';
  str_read = 'Einlesen...';
//  str_missingfiles = 'Hinweis: Einige Dateien der Liste sind in der aktuellen Sammlung nicht (mehr) vorhanden und werden ausgelendet.';
  str_readlist = 'Informationen zu den Dateien der Liste wurden eingelesen.';
  str_Ednotfound = 'Datenträger ''%s'' nicht gefunden';
  str_Efnotfound = 'Ordner ''%s'' auf DiskID %s nicht gefunden';
  str_Esyntax = 'Fehlerhafte Suchsyntax: keine Parameter angegeben.';
  str_Everbund = 'Die Verbundanzeige wurde deaktiviert!';
  str_sel = 'Selektion...';
  str_delete1 = 'Lösche Dateieinträge...';
  str_delete2 = 'Lösche Ordnereinträge...';
  str_delete3 = 'Datenträger ''%s'' erfolgreich entfernt.';
  str_menhear = 'Anhören';
  str_menopen = 'Öffnen';
  str_upde1 = 'Der benötigte Datenträger ist in keinem (überwachten) Laufwerk eingelegt.';
  str_upde2 = 'Datenträger aktualisieren';
  str_ovrp = 'Vorschau überschreiben';
  str_stats1 = 'Es wurden %d Datenträger %s. Insgesamt verstrichene Zeit: %.2ns';
  str_stats2 = 'Datenträger ''%s'' erfolgreich %s eingelesen. Benötigte Zeit: %.2ns';

  str_stat1 = 'Nutzungsdauer: %.0n:%02d,%02dh';
  str_stat2 = 'Sammlungen: %.0n';
  str_stat3 = 'Datenträger: %.0n';
  str_stat4 = 'Dateien: %.0n';
  str_stat5 = 'Listen: %.0n';


  str_optreset = 'Möchtest du alle Einstellungen auf die Standardwerte zurück setzen?' + #13#10 + 'Dieser Vorgang kann nicht rückgängig gemacht werden.';
{ Spalten }

  sp1 = 'Dateiname,Größe,Typ,"Geändert am",Notiz,Attribute,Disk,Pfad,Ort';
  sp2 = 'Datenträger,Größe,Typ,"Eingelesen am",Notiz';

{ Readdisk }
  str_r1 = 'Lese Inhaltsverzeichnis:';
  str_r2 = 'Lese Versionsinformationen:';
  str_r3 = 'Erzeuge Vorschaubild:';
  str_r4 = 'Lese Text:';
  str_r5 = 'Erzeuge Hörbeispiel:';
  str_r6 = 'Lese Titelinformationen:';
  str_rignore = 'Ignoriert:';
  str_diskexists = 'Ein Datenträger mit diesem Namen ist in dieser Sammlung bereits vorhanden!' + #13#10 + 'Falls Du den Datenträger neu einlesen willst, benutze die' + #13#10 + 'Funktion "Datenträger akualisieren" in Kontextmenü des Datenträgers,'+#13#10+'falls es sich um einen anderen Datenträger handelt, ändere die Bezeichnung ab.';
  str_diskmis = 'Der Datenträger ist in dieser Sammlung NICHT vorhanden und kann nicht aktualisiert werden!';
  str_prev1 = 'Icon';
  str_prev2 = 'Windows-BMP';
  str_prev3 = 'Windows-Metadatei';
  str_prev4 = 'JPEG-Bild';
  str_prev5 = 'GIF-Bild';
  str_prev6 = 'Bild';

  str_readgen = 'Datenträger "%s" wird %s... ';
  str_readupd1 = 'aktualisiert';
  str_readupd0 = 'Aktualisieren...';
  str_readnew1 = 'eingelesen';
  str_readnew0 = 'Einlesen...';

(*  str_waiting = 'Warte auf Datenträger...';
  str_autor = 'Einlesen von %s [%s:]...';
  str_autor1 = '[%s:] %s bereits eingelesen';
  str_autor2 = '[%s:] kein Datenträger';
*)

  str_d1 = 'Produktname:';
  str_d2 = 'Firmenname:';
  str_d3 = 'Original-Dateiname:';
  str_d4 = 'Kommentare:';
  str_d5 = 'Interner Name:';
  str_d6 = 'Produktversion:';
  str_d7 = 'Dateiversion:';
  str_d8 = 'Copyright:';
  str_d9 = 'Warenzeichen:';
  str_d10 = 'Flags:';

  str_id31 = 'Titel:';
  str_id32 = 'Interpret:';
  str_id33 = 'Album:';
  str_id34 = 'Jahr:';
  str_id35 = 'Kommentare:';
  str_id36 = 'Genre:';

  str_options = 'Optionen';
  str_sopt = 'Einleseoptionen speichern';

  str_Epicempty = 'Fehler: Bild ist leer (%s%s)';
  str_Elame = 'Fehler: Timeout bei LAME.EXE (%s%s)';
  str_Emp3 = 'Fehler beim erzeugen des MP3-Ausschnitts';
  str_Elamemissing = 'LAME.EXE konnte nicht gestartet werden (%s%s)';
  str_Elameerror = 'LAME.EXE hat Ausgabedatei nicht erzeugt (%s%s)';
  str_Epnotfound = 'existiert nicht';

  str_sb0 = 'keine Sammlung!';
  str_sb1 = '%.0n Objekt(e)';
  str_sb2 = 'Suche läuft...';
  str_sb3 = 'Suche vorzeitig beendet.';
  str_sb4 = 'Suche abgeschlossen. (%.0n Datenbankeinträge wurden durchsucht)';
  str_sb5 = 'Suchzeit: %.2ns';
  str_sb6 = 'Aktualisierungsvorgang abgebrochen - Die Datenträgerinformationen können teilweise fehlerhaft sein!';
  str_sb7 = 'Einlesevorgang abgebrochen - Datenträger wieder entfernt.';
  str_sb8 = 'Exportiere...';
  str_sb9 = 'Export nach ''%s'' (%s) erfolgreich.';
  str_sb10 = 'Playlist erzeugt: ''%s'' (%s) ';
  str_sb11 = 'Liste wurde bearbeitet (enthält %.0n Dateien)';
  str_sb12 = 'Es wird eine Verbindung zum Update-Server hergestellt...';
  str_sb13 = 'Online-Hilfe wird geladen...';
  str_hint = 'Drücke [F1] für weitere Infomationen.';

  str_deldisk = 'Bist du sicher, dass du den Datenträger ''%s'' aus der MyFiles-Sammlung entfernen möchtest?';
  str_deldisk2 = 'Datenträger entfernen';
  str_creadonly = 'Einige Dateien in ''%s'' konnten nicht gelöscht werden.' + #13#10 + 'Bitte entferne (ggf. nach einem Neustart) den o.a. Ordner manuell.';
  str_coldel = 'Sammlung ''%s'' gelöscht.';
  str_capt1 = 'Eigenschaften der Sammlung';
  str_capt2 = 'Ansicht in Liste speichern';
  str_Elexists = 'Die Liste ''%s'' existiert bereits!';
  str_listload = 'Liste ''%s'' geladen. (enthält %.0n Dateien)';
  str_listinvalid = 'Es wurde(n) %.0n Listenelement(e) entfernt, da sie nicht mehr in der Sammlung vorhanden sind.';

  inival_def = '< zuletzt geöffnete Sammlung >';
  str_compares = 'Dateiname,Dateityp,Dateigröße,Dateidatum';

  str_readdisko1 = '"nicht indizieren","Ordnernotizen aus file_id.diz","Dateinotizen aus descript.ion","Titelinformationen (mp3)","Hörbeispiel (mp3)"';
  str_readdisko2 = '"Vorschau (bmp,jpeg,gif,ico)","Versionsinfo (exe,scr,dll...)","Inhaltsverzeichnis (zip)","Textinfos (html,txt)","Playlisten importieren (m3u)"';
  str_rfiles = 'Dateien';
  str_rfolders = 'Ordner';
  str_new = '<neu>';
  str_templistans = 'Alle Dateien (%s)';
  str_templistmark = 'Markierung (%s)';
  str_readstatus = '%d%% eingelesen';

  str_savelayout = 'Speichern unter: %s';
  { Repair }

  str_repairok = 'Datenbank wurde erfolgreich neu aufgebaut.';
  str_repairfail = 'Datenbank konnte nicht neu aufgebaut werden.';

  { Layout Defaults }
  str_layverbund = 'Verbundansicht';
  str_laydisks = 'Datenträgerübersicht';
  str_laydisk = 'Datenträgeransicht';
  str_laysearch = 'Suchergebnisse';
  str_laylist = 'Listen';

  str_diskdefprop = 'Lagerort Verliehen';
var
  str_thelaydisk, str_thelaydisks, str_thelaylist, str_thelaysearch, str_thelayverbund : string;
  { Dateien / Ordner }
  dir_db, dir_rawdb, dir_templ, dir_plugins, file_lame, file_mpdll : string;

resourcestring
  { Caption }
  str_nocolopened = 'keine Sammlung geöffnet';
{
const // Spalten
  predef: array[1..4, -1..7] of Byte =
  ((216, 88, 112, 100, 154, 100, 100, 100, 100),
    (203, 77, 69, 100, 224, 50, 50, 50, 50),
    (132, 72, 115, 100, 60, 53, 140, 100, 100),
    (216, 88, 112, 100, 154, 77, 100, 100, 100));
  szpredef: array[1..4] of Byte = (2, 3, 2, 2); // Modus für Anzeige der Dateigröße
  colpredef: array[1..4] of Byte = (15, 15, 111, 47);
}
implementation

uses usefulprcs;

begin;
  tx_unreg := Decrypt(#202+#19+#158+#203+#8+#205+#42+#142+#41+#36+#254+#47+#214+#186+#233,35894);  // Freewareversion

  str_thelaydisk := str_laydisk+'»'+'<*';
  str_thelaydisks := str_laydisks+'»'+'';
  str_thelaylist := str_laylist+'»'+'List:*';
  str_thelaysearch := str_laysearch+'»'+'Search:*';
  str_thelayverbund := str_layverbund+'»'+'\*';

end.
