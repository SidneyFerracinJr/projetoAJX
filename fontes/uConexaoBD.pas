unit uConexaoBD;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Data.DBXMySQL, Data.FMTBcd, Data.SqlExpr;

type
  TDMConexaoBD = class(TDataModule)
    FDConnection: TFDConnection;
    MySQLDriverLink: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    QryOperadora: TFDQuery;
    QryCliente: TFDQuery;
    QryCliente_Telefone: TFDQuery;
    QryOperadoraData_Hora: TDateTimeField;
    QryOperadoraOperadora: TStringField;
    QryClienteData_Hora: TDateTimeField;
    QryClienteNome: TStringField;
    QryClienteCPF: TStringField;
    QryClienteData_Nascimento: TDateField;
    QryClienteEmail: TStringField;
    QryClienteRemovido: TStringField;
    QryCliente_TelefoneData_Hora: TDateTimeField;
    QryCliente_TelefoneClienteID: TIntegerField;
    QryCliente_TelefoneOperadoraID: TIntegerField;
    QryCliente_TelefoneTelefone: TStringField;
    QryCliente_TelefoneRemovido: TStringField;
    procedure FDConnectionBeforeConnect(Sender: TObject);
  private
    function F_TemCPF (a,b : integer) : integer;
    procedure P_Telefone (Sender: TObject);

  public
    { Public declarations }
  end;

var
  DMConexaoBD: TDMConexaoBD;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



procedure TDMConexaoBD.FDConnectionBeforeConnect(Sender: TObject);
begin
  MySQLDriverLink.VendorLib := GetCurrentDir + '\lib\libmysql.dll';
end;

//fun??o "F_TemCPF": recebe o CPF e retorna true ou false se o CPF j? existir
function TDMConexaoBD.F_TemCPF(a: Integer; b: Integer): Integer;
begin

end;

//procedure "P_Telefone": recebe o c?digo do cliente, operadora e telefone e cadastra no banco de dados
procedure TDMConexaoBD.P_Telefone(Sender: TObject);
begin

end;



end.
