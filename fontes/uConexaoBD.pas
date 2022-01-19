unit uConexaoBD;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
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
    QryClienteCPF: TIntegerField;
    QryClienteData_Nascimento: TDateField;
    QryClienteEmail: TStringField;
    QryClienteRemovido: TStringField;
    QryCliente_TelefoneData_Hora: TDateTimeField;
    QryCliente_TelefoneClienteID: TIntegerField;
    QryCliente_TelefoneOperadoraID: TIntegerField;
    QryCliente_TelefoneTelefone: TIntegerField;
    QryCliente_TelefoneRemovido: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
