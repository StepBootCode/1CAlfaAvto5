program ProgTasks;

uses
  Vcl.Forms,
  main in 'main.pas' {frmMain},
  act in 'act.pas' {frmAct},
  finish in 'finish.pas' {frmFinish};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAct, frmAct);
  Application.CreateForm(TfrmFinish, frmFinish);
  Application.Run;
end.
