object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 312
  Top = 178
  Height = 540
  Width = 783
  object tblDisks: TTable
    TableName = 'disks.db'
    Left = 80
    Top = 24
    object tblDisksDISKID: TIntegerField
      FieldName = 'DISKID'
    end
    object tblDisksLabel: TStringField
      FieldName = 'Label'
      Size = 50
    end
    object tblDisksRead: TDateTimeField
      FieldName = 'Read'
    end
    object tblDisksSize: TFloatField
      FieldName = 'Size'
    end
    object tblDisksNote: TBlobField
      FieldName = 'Note'
      BlobType = ftBlob
    end
  end
  object dsDisks: TDataSource
    DataSet = tblDisks
    Left = 32
    Top = 24
  end
  object tblFolders: TTable
    TableName = 'folders.DB'
    Left = 80
    Top = 88
    object tblFoldersFOLDERID: TIntegerField
      FieldName = 'FOLDERID'
    end
    object tblFoldersFolder: TStringField
      FieldName = 'Folder'
      Size = 255
      Transliterate = False
    end
    object tblFoldersLevel: TSmallintField
      FieldName = 'Level'
    end
    object tblFoldersHasSubFolders: TBooleanField
      FieldName = 'HasSubFolders'
    end
    object tblFoldersNote: TBlobField
      FieldName = 'Note'
      BlobType = ftBlob
    end
    object tblFoldersDISKID: TSmallintField
      FieldName = 'DISKID'
    end
  end
  object dsFiles: TDataSource
    DataSet = tblFiles
    Left = 32
    Top = 152
  end
  object dsFolders: TDataSource
    DataSet = tblFolders
    Left = 32
    Top = 88
  end
  object tblFiles: TTable
    FieldDefs = <
      item
        Name = 'DISKID'
        DataType = ftSmallint
      end
      item
        Name = 'FOLDERID'
        DataType = ftInteger
      end
      item
        Name = 'FILEID'
        DataType = ftInteger
      end
      item
        Name = 'FileName'
        DataType = ftMemo
        Size = 12
      end
      item
        Name = 'EntryKind'
        DataType = ftSmallint
      end
      item
        Name = 'Changed'
        DataType = ftDateTime
      end
      item
        Name = 'Attr'
        DataType = ftSmallint
      end
      item
        Name = 'Size'
        DataType = ftFloat
      end
      item
        Name = 'Note'
        DataType = ftBlob
      end
      item
        Name = 'TKind'
        DataType = ftSmallint
      end
      item
        Name = 'BKind'
        DataType = ftSmallint
      end
      item
        Name = 'TextPreview'
        DataType = ftBlob
      end
      item
        Name = 'BinPreview'
        DataType = ftBlob
      end>
    IndexDefs = <
      item
        Name = 'tblFilesIndex1'
        Fields = 'DISKID;FOLDERID;FileName'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'ByFolder'
        Fields = 'FOLDERID'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'files.DB'
    Left = 80
    Top = 152
    object tblFilesFOLDERID: TIntegerField
      FieldName = 'FOLDERID'
    end
    object tblFilesChanged: TDateTimeField
      FieldName = 'Changed'
    end
    object tblFilesAttr: TSmallintField
      FieldName = 'Attr'
    end
    object tblFilesSize: TFloatField
      FieldName = 'Size'
    end
    object tblFilesFILEID: TIntegerField
      FieldName = 'FILEID'
    end
    object tblFilesFileName: TMemoField
      FieldName = 'FileName'
      BlobType = ftMemo
      Size = 11
    end
    object tblFilesNote: TBlobField
      FieldName = 'Note'
      BlobType = ftBlob
    end
    object tblFilesTKind: TSmallintField
      FieldName = 'TKind'
    end
    object tblFilesBKind: TSmallintField
      FieldName = 'BKind'
    end
    object tblFilesTextPreview: TBlobField
      FieldName = 'TextPreview'
      BlobType = ftBlob
    end
    object tblFilesBinPreview: TBlobField
      FieldName = 'BinPreview'
      BlobType = ftBlob
    end
    object tblFilesDISKID: TSmallintField
      FieldName = 'DISKID'
    end
    object tblFilesEntryKind: TSmallintField
      FieldName = 'EntryKind'
    end
  end
  object database: TDatabase
    Params.Strings = (
      'LOCAL SHARE = FALSE')
    SessionName = 'Default'
    Left = 56
    Top = 216
  end
end
