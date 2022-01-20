program Clientes;

uses
  Vcl.Forms,
  uPrincipal in 'fontes\uPrincipal.pas' {Principal},
  uConexaoBD in 'fontes\uConexaoBD.pas' {DMConexaoBD: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TDMConexaoBD, DMConexaoBD);
  Application.Run;
end.
