unit uPrincipal;

interface

{$Region 'Uses'}
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels,
  Vcl.Mask, Vcl.DBCtrls, System.ImageList, Vcl.ImgList, Data.FMTBcd, Data.SqlExpr,
  uClientes, uConexaoBD;
{$EndRegion}


{$Region 'Types'}
type

  TPrincipal = class(TForm)
    ImageList: TImageList;
    DtSrcOperadora: TDataSource;
    DtSrcCliente_Telefone: TDataSource;
    DtSrcCliente: TDataSource;
    PcPrincipal: TPageControl;
    TsCadastroEdicao: TTabSheet;
    CadPnlTelefone: TPanel;
    CadGrdPnlTelefone: TGridPanel;
    CadBtnSalvarTelefone: TButton;
    CadMkEdtTelefone: TMaskEdit;
    CadCbBoxOperadora: TComboBox;
    CadPnlPrincipal: TPanel;
    CadPnlForm: TPanel;
    CadLblNome: TLabel;
    CadLblCPF: TLabel;
    CadLblEmail: TLabel;
    CadLblDataNascimento: TLabel;
    CadLblDataHora: TLabel;
    CadLblRemovido: TLabel;
    CadDBEdtNom: TDBEdit;
    CadDBEdtCP: TDBEdit;
    CadDBEdtEmai: TDBEdit;
    CadDBEdtDataNasciment: TDBEdit;
    CadDBEdtRemovid: TDBEdit;
    CadBtnSalvar: TButton;
    CadBtnNovo: TButton;
    CadPnlTitulo: TPanel;
    TsConsulta: TTabSheet;
    ConsPnlTitulo: TPanel;
    ConsPnlTelefone: TPanel;
    ConsSpdBtnExcluirTelefone: TSpeedButton;
    ConsDBGrdTelefone: TDBGrid;
    ConsLblPesquisar: TEdit;
    ConsPnlCardCliente: TPanel;
    ConsEdtNome: TEdit;
    ConsEdtDataHora: TEdit;
    ConsEdtCPF: TEdit;
    ConsEdtDataNascimento: TEdit;
    ConsBtnEditar: TButton;
    ConsEdtEmail: TEdit;
    ConsBtnPesquisar: TButton;
    CadDBEdtDataHora: TMaskEdit;
    CadDBEdtDataHor: TDBEdit;
    CadDBEdtRemovido: TEdit;
    CadDBEdtNome: TEdit;
    CadDBEdtEmail: TEdit;
    CadDBEdtCPF: TMaskEdit;
    CadDBEdtDataNascimento: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure CadBtnSalvarTelefoneClick(Sender: TObject);
    procedure CadMkEdtOperadoraKeyPress(Sender: TObject; var Key: Char);
    procedure CadMkEdtTelefoneExit(Sender: TObject);
    procedure CadMkEdtTelefoneEnter(Sender: TObject);
    procedure CadBtnNovoClick(Sender: TObject);
    procedure CadBtnSalvarClick(Sender: TObject);
    procedure DeletarTelefone(Sender: TObject);


  private

  public
    { Public declarations }
  end;

{$EndRegion}

var
  Principal: TPrincipal;
  ID, Count, TopPos: Integer;


implementation

{$R *.dfm}


procedure TPrincipal.FormCreate(Sender: TObject);
begin
  ID := 0;
  Count := 0;
  TopPos := 33;
end;

procedure TPrincipal.CadBtnNovoClick(Sender: TObject);
begin

  uConexaoBD.DMConexaoBD.QryOperadora.Active := True;
  uConexaoBD.DMConexaoBD.QryCliente.Active := True;
  uConexaoBD.DMConexaoBD.QryCliente_Telefone.Active := True;

  uConexaoBD.DMConexaoBD.QryOperadora.Append;
  uConexaoBD.DMConexaoBD.QryCliente.Append;
  uConexaoBD.DMConexaoBD.QryCliente_Telefone.Append;

  CadBtnNovo.Enabled := False;
  CadMkEdtTelefone.Enabled := True;
  CadCbBoxOperadora.Enabled := True;
  CadBtnSalvarTelefone.Enabled := True;
  CadDBEdtDataHora.Enabled := True;
  CadDBEdtRemovido.Enabled := True;
  CadDBEdtNome.Enabled := True;
  CadDBEdtEmail.Enabled := True;
  CadDBEdtCPF.Enabled := True;
  CadDBEdtDataNascimento.Enabled := True;
  CadBtnSalvar.Enabled := True;

  CadDBEdtNome.SetFocus;
end;

procedure TPrincipal.CadBtnSalvarClick(Sender: TObject);
var
varNow: TDateTime;

begin

varNow := now;

  //Cliente
  DtSrcCliente.DataSet.FieldByName('Data_Hora').AsDateTime := varNow;
  DtSrcCliente.DataSet.FieldByName('Nome').AsString := CadDBEdtNome.Text;
  DtSrcCliente.DataSet.FieldByName('CPF').AsString := CadDBEdtCPF.Text;
  DtSrcCliente.DataSet.FieldByName('Data_Nascimento').AsString := CadDBEdtDataNascimento.Text;
  DtSrcCliente.DataSet.FieldByName('Email').AsString := CadDBEdtEmail.Text;
  DtSrcCliente.DataSet.FieldByName('Removido').AsString := 'N?o';

  //Operadora
  DtSrcOperadora.DataSet.FieldByName('Data_Hora').AsDateTime := varNow;
  DtSrcOperadora.DataSet.FieldByName('Operadora').AsString := CadCbBoxOperadora.Text;

  //Cliente_Telefone
  DtSrcCliente_Telefone.DataSet.FieldByName('Data_Hora').AsDateTime := varNow;
  DtSrcCliente_Telefone.DataSet.FieldByName('ClienteID').AsString := IntToStr(ID);
  DtSrcCliente_Telefone.DataSet.FieldByName('OperadoraID').AsString := IntToStr(ID);
  DtSrcCliente_Telefone.DataSet.FieldByName('Telefone').AsString := CadMkEdtTelefone.Text;
  DtSrcCliente_Telefone.DataSet.FieldByName('Removido').AsString := 'N?o';

  uConexaoBD.DMConexaoBD.QryCliente.Post;
  uConexaoBD.DMConexaoBD.QryOperadora.Post;
  uConexaoBD.DMConexaoBD.QryCliente_Telefone.Post;

  Inc(ID);

end;

procedure TPrincipal.CadBtnSalvarTelefoneClick(Sender: TObject);
var
  Operadora: TEdit;
  Telefone: TEdit;
  Excluir: TButton;

begin

  if CadMkEdtTelefone.Text = '' then
  begin
    ShowMessage('Telefone n?o preenchido!');
    Abort;
  end;

  if Count > 9 then
  begin
    ShowMessage('Limite atingido!');
    Exit;
  end;

  if Count > 0 then
  begin
    TopPos := TopPos + 30;
    Inc(Count);
  end;

  Telefone := TEdit.Create(self);
    Telefone.Parent := Principal.CadGrdPnlTelefone;
    Telefone.Name := 'TDBEdtTelefone' + IntToStr(Count);
    Telefone.Width := 100;
    Telefone.Text := CadMkEdtTelefone.Text;

  Operadora := TEdit.Create(self);
    Operadora.Parent := Principal.CadGrdPnlTelefone;
    Operadora.Name := 'TDBEdtOperadora' + IntToStr(Count);
    Operadora.Width := 69;
    Operadora.Text := CadCbBoxOperadora.Text;

  Excluir := TButton.Create(self);
    Excluir.Parent := Principal.CadGrdPnlTelefone;
    Excluir.Name := 'TButton' + IntToStr(Count);
    Excluir.Caption := '';
    Excluir.Images := ImageList;
    Excluir.ImageIndex := 0;
    Excluir.OnClick := DeletarTelefone;


    (*Criar o evento para Deletar elemento*)


  CadMkEdtTelefone.Clear;
  CadCbBoxOperadora.Clear;
  CadMkEdtTelefone.SetFocus;

end;

procedure TPrincipal.DeletarTelefone(Sender: TObject);
var
  delOperadora: TComponent;
  delTelefone: TComponent;
  delBtn: TComponent;
begin


  delOperadora := FindComponent('TDBEdtTelefone' + IntToStr(Count));
  delTelefone := FindComponent('TDBEdtOperadora' + IntToStr(Count));
  delBtn := FindComponent('TButton' + IntToStr(Count));

  delOperadora.Free;
  delTelefone.Free;
  delBtn.Free;


end;

// m?scara da operadora.
procedure TPrincipal.CadMkEdtOperadoraKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['A'..'Z','a'..'z', #8]) then
    Key := #0;
end;


// funcao que retorna somente numeros
function FncSomenteNumeros(AString: String): String;
var
  I : Integer;
  Texto : String;
begin
  Texto := '';

  for I := 1 to Length(AString) do
  begin
    if Pos( Copy(AString, I, 1 ), '0123456789' ) <> 0 then
      Texto := Texto + Copy( AString, i, 1 );
  end;

  Result := Texto;

end;

// inserir mascara do telefone
procedure TPrincipal.CadMkEdtTelefoneExit(Sender: TObject);
begin

  if Length(fncSomenteNumeros(CadMkEdtTelefone.Text)) = 10 then
  begin
    CadMkEdtTelefone.EditMask := '(00)0000-000;0;_';
  end

  else
  if Length(fncSomenteNumeros(CadMkEdtTelefone.Text)) = 11 then
  begin
    CadMkEdtTelefone.EditMask := '(00)00000-000;0;_';
  end

  else
  if Length(fncSomenteNumeros(CadMkEdtTelefone.Text)) <> 0 then
  begin
    ShowMessage('N?mero inv?lido!');
    CadMkEdtTelefone.SetFocus;
    abort;
  end;

end;

// limpar mascara do telefone
procedure TPrincipal.CadMkEdtTelefoneEnter(Sender: TObject);
begin
  CadMkEdtTelefone.EditMask := '';
end;


end.


