program MyTVGu;

uses
  Forms,
  main in 'main.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'TVG';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
