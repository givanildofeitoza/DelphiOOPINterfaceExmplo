unit WorkInterface;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, ICadastros,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtcodfor: TEdit;
    txtrazao: TEdit;
    txtcnpj: TEdit;
    txtcod: TEdit;
    txtnome: TEdit;
    txtcpf: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TxtEmail: TEdit;
    Label7: TLabel;
    TxtFone: TEdit;
    TxtFonel: TLabel;
    Panel1: TPanel;
    Memo1: TMemo;
    Bevel1: TBevel;
    function Cadastros(ObjCadastro:ICadastro):boolean;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.BitBtn1Click(Sender: TObject);
var
ObCli:TCliente;
begin
    ObCli:= TCliente.Create();
    ObCli.SetCodigo(StrToInt(txtcod.Text));
    ObCli.SetNome(txtnome.Text);
    ObCli.SetTipo('C');
    ObCli.SetDocumento(txtcpf.Text);
    ObCli.fone:= TxtFone.Text;
    Cadastros(ObCli);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
ObFor:TFornecedor;
begin

    ObFor:= TFornecedor.Create();
    ObFor.SetCodigo(StrToInt(txtcodfor.Text));
    ObFor.SetNome(TxtRazao.Text);
    ObFor.SetTipo('F');
    ObFor.SetDocumento(txtcnpj.Text);
    ObFor.Email:= TxtEmail.Text;
    Cadastros(ObFor);

end;

function TForm1.Cadastros(ObjCadastro:ICadastro):Boolean;
begin

      if ObjCadastro.Validar = True then
      begin
         ObjCadastro.Cadastrar();
         Result:=True;
      end;

  Result:=False;


end;
end.
