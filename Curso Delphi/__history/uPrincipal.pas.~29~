unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.UITypes,  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList;

type
  TFrmPrincipal = class(TForm)
    PnlTitulo: TPanel;
    PgCtrlPrincipal: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtCaracteres: TEdit;
    btnForm: TButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    rgListaOpcoes: TRadioGroup;
    btnAvancar: TButton;
    Label2: TLabel;
    lstBxItensSelecionados: TListBox;
    btnLimpar: TButton;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button1: TButton;
    Panel3: TPanel;
    Button4: TButton;
    MmObservacao: TMemo;
    Label3: TLabel;
    Button5: TButton;
    Button6: TButton;
    procedure FormShow(Sender: TObject);
    procedure edtCaracteresEnter(Sender: TObject);
    procedure edtCaracteresExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}


procedure TFrmPrincipal.btnLimparClick(Sender: TObject);
begin
  lstBxItensSelecionados.Items.Clear;
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  PgCtrlPrincipal.ActivePageIndex := 1;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  PgCtrlPrincipal.ActivePageIndex := 0;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
begin
PgCtrlPrincipal.ActivePageIndex := 2;
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
begin
PgCtrlPrincipal.ActivePageIndex := 1;
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
begin
  MmObservacao.SelectAll;
  MmObservacao.SetFocus;
end;

procedure TFrmPrincipal.Button6Click(Sender: TObject);
begin
  MmObservacao.Lines.Clear;
end;

procedure TFrmPrincipal.btnAvancarClick(Sender: TObject);
begin
  if rgListaOpcoes.ItemIndex >= 0 then
  begin
    lstBxItensSelecionados.Items.Add(rgListaOpcoes.Items[rgListaOpcoes.ItemIndex]);
    rgListaOpcoes.ItemIndex:= -1;
  end
  else
    MessageDlg('Voce nao selecionou nenhum item', mtError, [mbOK], 0);
end;

procedure TFrmPrincipal.edtCaracteresEnter(Sender: TObject);
begin
    edtCaracteres.Color := $00B9FFFF;
end;

procedure TFrmPrincipal.edtCaracteresExit(Sender: TObject);
begin
 if edtCaracteres.Text = '' then
 begin
   MessageDlg('VocÊ não digitou nenhum conteúdo',
   mtError, [mbOK], 0);
   edtCaracteres.SetFocus;
 end
 else
  if Length(edtCaracteres.Text) <> 4 then
  begin
    MessageDlg('Você não digitou 4 caracteres',
    mtError, [mbOk], 0);
    edtCaracteres.SetFocus;
    edtCaracteres.SelectAll;
  end
  else
    edtCaracteres.Color := clWindow;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  PnlTitulo.Caption := 'Mudando o caption do Panel com onShow';
  PnlTitulo.Color := $00B9FFFF;
end;

end.
