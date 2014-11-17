unit XplorerImageList;

{$IFDEF FPC}
  {$MODE OBJFPC}{$H+}
{$ENDIF}

{$DEFINE DEBUG_XIMGLIST}

{*******************************************************************************
*                           Unit XplorerImageList.pas                          *
*                                                                              *
*                           created 2010-12-25 ;-)                             *
********************************************************************************
*                                                                              *
*                This unit contains the class "TXplorerImageList"              *
*                                                                              *
* Use "TXplorerImageList" inside TTreeView and TListView                       *
*   EXAMPLE:                                                                   *
*     MyTreeView.SmallImagesList:= TXplorerImageList.Create( Self);            *
*     MyTreeView.Images:= SmallImagesList;                                     *
*                                                                              *
*                                                                              *
*  +++ +++ THIS +++ IS +++ A +++ WORKAROUND +++ NOT +++ A +++ BUGFIX +++ +++   *
*                                                                              *
* LAZARUS cannot handle the Windows Handle to the "System Icon Lists" which    *
* can be created with SHGetFileInfo(), called with suitable parameters (...)   *
*                                                                              *
* Until this UNIMPLEMENTED is solved, the following code enables us            *
* to manually set up a ImageList with all the Icons that are needed            *
* to represent the WINDOWS File Types, Folders and Drives.                     *
*                                                                              *
* This code should become obsolete as soon as possible ..                      *
* but until that day, use "TXplorerImageList" and be happy ... ;-)             *
*                                                                              *
*******************************************************************************}


interface

uses
  {$IFDEF FPC}
  LCLIntf,
  JwaWindows,    // for TIconInfo
  FileUtil,      // for SysToUTF8, FindFirstUTF8 ..
  {$ELSE}
  //Windows,
  //Messages,
  {$ENDIF}
  SysUtils,
  Classes,       // for TStringList
  Graphics,      // for TBitmap
  Controls,      // TImageList
  ComCtrls,      // for TTreeNodes
  ShellAPI,      // for SHFileInfo
  Dialogs;       // for DEBUG


{$IFDEF FPC}
type
  TXplorerImageList = class( TImageList)
  private
    //
  public
    utf8TypeNames: TStringList;
    //utf8DisplayName: TStringList;   // not required
    constructor Create(aOwner:TComponent); override;
    destructor Destroy; override;
  end;



{ *** THIS FUNCTION is the main thing in this unit, not the class above !  *** }
function GetIconImageAndIndex( const FileName: string;
                               ImagesList: TXplorerImageList;
                               const GetSmallIcon : boolean ): integer;
{$ENDIF}


implementation


//*  This is a WorkAround for LAZARUS so we don't need  *//
//*  to make any code compile under DELPHI ... ;-)      *//
{$IFDEF FPC}

//* Fill the ImagesList with Icons and return actual Icon Index : *//
function GetIconImageAndIndex( const FileName: string;
                               ImagesList: TXplorerImageList;
                               const GetSmallIcon : boolean ): integer;
var
  SFI       : SHFileInfo;
  SFIflags  : dword;
  anIcon    : TIcon;
  aIconInfo : TIconInfo;
  aBmp      : Graphics.TBitmap;
  s         : string;
  i         : Integer;
begin
  result:= -1;
  SFI.hIcon:= 0;           //make compiler happy ..
  aIconInfo.xHotspot:= 0;  //make compiler happy ..

  { Get the Node's Icon, DisplayName and TypeName : }
  if GetSmallIcon
    then SFIflags:= SHGFI_SMALLICON
    else SFIflags:= SHGFI_LARGEICON;

  SFIflags:= SFIflags or SHGFI_ICON
                      //Don't do:  or SHGFI_USEFILEATTRIBUTES
                      or SHGFI_DISPLAYNAME
                      or SHGFI_TYPENAME;

  if SHGetFileInfo( PChar( FileName), $80,  // Windows FILE_ATTRIBUTE_NORMAL = $80
                    SFI, SizeOf( SHFileInfo), SFIflags) <> 0 then
  begin
    if (sfi.hIcon <> 0) and (GetIconInfo( sfi.hIcon, aIconInfo)) then
        begin
          s:= SysToUTF8( sfi.szTypeName);
          {$IFDEF DEBUG_XIMGLIST}
          //ShowMessage( 'Found: ' +s);
          {$ENDIF}
          if ImagesList.Count > 0 then
          for i:= 0 to ImagesList.utf8TypeNames.Count -1 do
            //* check if Icon already exists in the list :  *//
            if s = ImagesList.utf8TypeNames[i] then
              begin
                {$IFDEF DEBUG_XIMGLIST}
                //ShowMessage( 'We have found an Icon in the existing List: '
                //             +#13#13 +'TypeName = ' +s +#13 +'i = ' +IntToStr( i)
                //             +#13#13 +'NumImages = ' +s +#13 +'i = ' +IntToStr( ImagesList.Count));
                {$ENDIF}
                result:= i;
                exit; // found, so we can leave here ..
              end;

        //* Proceed:  we have not found a suitable Icon in the list *//
        anIcon:= TIcon.Create;
        aBmp:= Graphics.TBitmap.Create;
        aBmp.LoadFromBitmapHandles( aIconInfo.hbmColor, aIconInfo.hbmMask, nil);

        //* use a WorkAround until Lazarus' TIcon is able to work with HANDLES *//
        anIcon.Assign( aBMP); // there is no other way for TIcons - you
                              // MUST use a Bitmap, as it has implemented
                              // "Handles"-handling (setHandles)
                              // TIcons themselves cannot cope with handles

        ImagesList.Add( aBMP, NIL);
        ImagesList.utf8TypeNames.Append( SysToUTF8( sfi.szTypeName) );
        // For sure Result is now = the last and new Icon in the ImageList :
        result:= ImagesList.Count - 1;

        aBmp.Free;
        anIcon.Free;
        {$IFDEF DEBUG_XIMGLIST}
        //ShowMessage( Caller +#13 +'we have found a new Icon:'
        //             +#13#13 +'TypeName = ' +s);
        {
        ShowMessage( 'Path or Ext or ..  = ' +AExt +#13#13
                     +'SmallImagesList.Count = '
                     +IntToStr( SmallImagesList.Count) +#13
                     +'SmallImagesList.ComponentCount = '
                     +IntToStr( SmallImagesList.ComponentCount) +#13#13
                     +'SmallImagesList.utf8TypeName = '
                     +SmallImagesList.utf8TypeName[ SmallImagesList.Count -1]);
        }
        {$ENDIF}
      end;
  end;
end;


{ *** TXplorerImageList ****************************************************** }
constructor TXplorerImageList.Create(aOwner:TComponent);
begin
  inherited;

  Self.utf8TypeNames:= TStringList.Create;
end;

destructor TXplorerImageList.Destroy;
begin
  inherited;

  Self.utf8TypeNames.Free;
end;
{$ENDIF}


end.

