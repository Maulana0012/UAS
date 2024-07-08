unit Unit2;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDataModule2 = class(TDataModule)
    dsKustomer: TDataSource;
    zqryKustomer: TZQuery;
    conKustomer: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
