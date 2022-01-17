unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels,
  Vcl.Mask, Vcl.DBCtrls, System.ImageList, Vcl.ImgList;

type
  TFrmPrincipal = class(TForm)
    PcPrincipal: TPageControl;
    TsCadastroEdicao: TTabSheet;
    tsConsulta: TTabSheet;
    PnlCadastroCliente: TPanel;
    PnlCadCliente: TPanel;
    PnlCadastro: TPanel;
    EdtCPF: TEdit;
    LblCPF: TLabel;
    EdtEmail: TEdit;
    LblNascimento: TLabel;
    EdtNascimento: TEdit;
    LblEmail: TLabel;
    EdtNome: TEdit;
    LblNome: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    LblPesquisa: TEdit;
    Panel6: TPanel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Button2: TButton;
    Edit11: TEdit;
    PnlConsulta1: TPanel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Edit6: TEdit;
    PnlEdtCadastroCliente: TPanel;
    CardPanel1: TCardPanel;
    CardPanel2: TCardPanel;
    ImageList1: TImageList;
    BtnSalvar: TButton;
    Button4: TButton;
    MkEdtOperadora: TMaskEdit;
    MkEdtTelefone: TMaskEdit;
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MkEdtOperadoraKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTelefoneExit(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;
  Count, TopPos: Integer;


implementation

{$R *.dfm}




procedure TFrmPrincipal.Button3Click(Sender: TObject);

var
  Operadora: TButton;
  Telefone: TButton;
  Salvar: TButton;
begin

  if Count > 5 then
  begin
    ShowMessage('Limite atingido!');
    Exit;
  end;

  if Count > 0 then
    TopPos := TopPos + 30;
    Inc(Count);

  Operadora := TButton.Create(self);
    Operadora.Parent := FrmPrincipal.PnlCadCliente;
    Operadora.Left := 6;
    Operadora.Top := TopPos;
    Operadora.Width := 69;
    Operadora.Caption := TButton(FindComponent('MkEdtOperadora')).Caption;

  Telefone := TButton.Create(self);
    Telefone.Parent := FrmPrincipal.PnlCadCliente;
    Telefone.Left := 82;
    Telefone.Top := TopPos;
    Telefone.Width := 100;
    Telefone.Caption := TButton(FindComponent('MkEdtTelefone')).Caption;

  Salvar := TButton.Create(self);
    Salvar.Parent := FrmPrincipal.PnlCadCliente;
    Salvar.Left := 188;
    Salvar.Height := 23;
    Salvar.Width := 23;
    Salvar.Top := TopPos;
    Salvar.Images := ImageList1;
    Salvar.ImageIndex := 0;
    (*Criar o evento para Deletar elemento*)

  MkEdtOperadora.Clear;
  MkEdtTelefone.Clear;

end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  Count := 0;
  TopPos := 33;
end;


procedure TFrmPrincipal.MkEdtOperadoraKeyPress(Sender: TObject; var Key: Char);
begin
   if not(key in ['A'..'Z','a'..'z', #8]) then
      Key := #0;
end;

function fncSomenteNumeros(AString: String): String;
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

procedure TFrmPrincipal.EdtTelefoneExit(Sender: TObject);
begin
var
  NTelefone: String;

  begin
    NTelefone := FncSomenteNumeros(MkEdtTelefone.Text);

    if NTelefone <> '' then
      begin

        if Length(NTelefone) = 10 then
          FrmPrincipal.MkEdtTelefone.EditMask := '(00) 0000-0000';
          (* https://www.youtube.com/watch?v=5mTQCarIV9A&ab_channel=SWHSistemas *)



      end;

  end;
end;

end.


