program frmBike_p;

uses
  Vcl.Forms,
  frmBike_u in 'frmBike_u.pas' {frmBike},
  clsBike_u in 'clsBike_u.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Ruby Graphite');
  Application.CreateForm(TfrmBike, frmBike);
  Application.Run;
end.
