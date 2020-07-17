unit act;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, main, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Data.Win.ADODB;

type
  TfrmAct = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBMemo1: TDBMemo;
    DBTId: TDBText;
    DBLCStatus: TDBLookupComboBox;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    bOK: TBitBtn;
    ADOCommand: TADOCommand;
    procedure bOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAct: TfrmAct;

implementation

{$R *.dfm}

procedure TfrmAct.bOKClick(Sender: TObject);
begin



  ADOCommand.Parameters.ParamByName('status_id').Value := DBLCStatus.KeyValue;
  ADOCommand.Parameters.ParamByName('ID').Value := DBTId.DataSource.DataSet.FieldByName('id').AsInteger;

  ADOCommand.Execute;
  frmMain.ADODataSetTasks.Close;
  frmMain.ADODataSetTasks.Open;
  close;

end;

end.
