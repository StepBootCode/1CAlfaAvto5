unit finish;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, main, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmFinish = class(TForm)
    DBGrid1: TDBGrid;
    ADOQuery: TADOQuery;
    DataSource1: TDataSource;
    ADOQueryid: TAutoIncField;
    ADOQueryname: TStringField;
    ADOQuerydate: TDateTimeField;
    ADOQuerynote: TStringField;
    ADOQueryuser_id: TStringField;
    ADOQuerystatus_id: TIntegerField;
    ADOQuerydateto: TDateTimeField;
    ADOQueryuserto_id: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinish: TfrmFinish;

implementation

{$R *.dfm}

end.
