program MonoUserSystem;

uses
  Vcl.Forms,
  uCadCli in 'uCadCli.pas' {frmCadCli};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadCli, frmCadCli);
  Application.Run;
end.
