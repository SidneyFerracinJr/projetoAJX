program Clientes;

uses
  Vcl.Forms,
  uPrincipal in 'fontes\uPrincipal.pas' {FrmPrincipal},
  uConexaoBD in 'fontes\uConexaoBD.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
