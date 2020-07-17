unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.UI, FireDAC.Comp.DataSet,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Mask, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin,DATEUTILS;

type
  TfrmMain = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    ADOConnection: TADOConnection;
    ADOTStatus: TADOTable;
    DataSourceStatus: TDataSource;
    DataSourceTask: TDataSource;
    ADODataSetTasks: TADODataSet;
    ADODataSetTasksid: TAutoIncField;
    ADODataSetTasksname: TStringField;
    ADODataSetTasksnote: TStringField;
    ADODataSetTasksuser_id: TStringField;
    ADODataSetTasksstatus_id: TIntegerField;
    ADODataSetTasksuserto_id: TIntegerField;
    ADODataSetTasksstatus: TStringField;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    ToolButton2: TToolButton;
    ADODataSetTasksdate: TDateTimeField;
    ADODataSetTasksdateto: TDateTimeField;
    ToolButton3: TToolButton;
    Timer: TTimer;
    ADOQueryCount: TADOQuery;
    ADOQueryCountcnt: TIntegerField;
    cbNew: TCheckBox;
    ToolButton4: TToolButton;
    TrayIcon1: TTrayIcon;
    procedure ToolButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ToolButton3Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    max_id:integer;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
  uses act, finish;
{$R *.dfm}

procedure TfrmMain.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with DBGrid1.Canvas do begin
  if TDBGrid(Sender).DataSource.DataSet.FieldByName('dateto').AsDateTime < IncDay(now,3) then
  begin
   Brush.Color:=clWebSalmon;
   Font.Color:=clBlack;
    if State = [gdFocused] then
    begin
      Brush.Color := clWebTomato;
    end;

    //if State = [gdFocused,gdSelected] then
    if gdSelected in State then
    begin
      Brush.Color := clWebTomato;
    end;


  end else begin
  Brush.Color:=clWhite;
   Font.Color:=clBlack;
    if State = [gdFocused] then
    begin
      Brush.Color := clSkyBlue;
    end;

    //if State = [gdFocused,gdSelected] then
    if gdSelected in State then
    begin
      Brush.Color := clSkyBlue;
    end;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  max_id := 0;
end;

procedure TfrmMain.TimerTimer(Sender: TObject);
begin
  ADODataSetTasks.Close;
  ADODataSetTasks.Open;

  ADODataSetTasks.first;

  if (ADODataSetTasksid.AsInteger > max_id) AND (max_id <>0) AND (cbNew.Checked) then
  begin
    ShowMessage('� ��� ��������� ����� ������. ���-�� - '+intToStr(ADODataSetTasksid.AsInteger-max_id));
  end;
  max_id:= ADODataSetTasksid.AsInteger;
end;

procedure TfrmMain.ToolButton1Click(Sender: TObject);
begin
  frmAct.ShowModal;
end;

procedure TfrmMain.ToolButton3Click(Sender: TObject);
begin
  frmFinish.ShowModal;
end;

end.
