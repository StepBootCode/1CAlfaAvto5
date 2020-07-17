unit mainNew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,DATEUTILS,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB;

type
  TForm2 = class(TForm)
    cbTask: TComboBox;
    Label1: TLabel;
    dtdate: TDateTimePicker;
    Label2: TLabel;
    edAutor: TEdit;
    Label3: TLabel;
    Memo: TMemo;
    Label4: TLabel;
    ADOConnection: TADOConnection;
    bOK: TBitBtn;
    TrayIcon: TTrayIcon;
    ADOCommand: TADOCommand;
    ADOQuery: TADOQuery;
    procedure bOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ReTask();
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
procedure TForm2.FormShow(Sender: TObject);
begin
  ADOConnection.Connected := false;
  ReTask();
  try
    ADOConnection.Connected := True;
  finally
    bOK.Enabled := ADOConnection.Connected;
  end;

  if not ADOConnection.Connected then
  begin
    if MessageDlg('��� ���������� � ����� ������, ������� ���������?', mtConfirmation, mbYesNo, 0) =  mrYes  then
    begin
      Close;
    end
  end;
end;

procedure TForm2.ReTask();
Begin
  cbTask.ItemIndex:= 0;
  dtdate.Date:= IncDay(now,7);
  Memo.Lines.Clear;
End;

procedure TForm2.bOKClick(Sender: TObject);
var s:string;
begin
  if not ADOConnection.Connected then
  begin
    bOK.Enabled := ADOConnection.Connected;
    if MessageDlg('��� ���������� � ����� ������, ������� ���������?', mtConfirmation, mbYesNo, 0) =  mrYes  then
    begin
      Close;
    end
  end;

  if (Length(cbTask.Text) < 3) OR (Length(Memo.Lines.Text) < 3) OR (Length(Memo.Lines.Text) < 3) then
  begin
    ShowMessage('��� ���� ������ ������ ���� ���������!');
    exit;
  end;

  ADOQuery.Parameters.ParamByName('name').Value := cbTask.Text;
  ADOQuery.Parameters.ParamByName('date').DataType:= ftDateTime;
  ADOQuery.Parameters.ParamByName('date').Value := now;
  ADOQuery.Parameters.ParamByName('note').Value := Memo.Lines.Text;
  ADOQuery.Parameters.ParamByName('user_id').Value := edAutor.Text;
  ADOQuery.Parameters.ParamByName('status_id').Value := 1;
  ADOQuery.Parameters.ParamByName('userto_id').Value := 2;
  ADOQuery.Parameters.ParamByName('dateto').DataType:= ftDateTime;
  ADOQuery.Parameters.ParamByName('dateto').Value :=  dtdate.Date;

  ADOQuery.Parameters.ParamByName('ID').Direction:= pdReturnValue ;
  ADOQuery.ExecSQL;


  s:='';
  try
    s:=' �'+inttostr(ADOQuery.Parameters.ParamByName('ID').Value);
  finally

  end;


  if MessageDlg('���� ������'+s+' �������, ������� ���������?', mtConfirmation, mbYesNo, 0) =  mrYes  then
  begin
    Close;
  end
  else
  begin
    ReTask();
  end;
end;

end.
