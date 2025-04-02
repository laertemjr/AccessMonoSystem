unit uCadCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Phys.ODBCBase;

type
  TfrmCadCli = class(TForm)
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    FDTable1Cliente_ID: TFDAutoIncField;
    DBGrid1: TDBGrid;
    FDTable1Cliente_Email: TWideStringField;
    FDTable1Cliente_Celular: TWideStringField;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
    FDTable1Cliente_NomeCompleto: TWideStringField;
    DBLabeledEdit1: TDBLabeledEdit;
    DBLabeledEdit2: TDBLabeledEdit;
    DBLabeledEdit3: TDBLabeledEdit;
    DBLabeledEdit4: TDBLabeledEdit;
    DBNavigator1: TDBNavigator;
    StatusBar1: TStatusBar;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDTable1BeforePost(DataSet: TDataSet);
    procedure DBLabeledEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FDTable1AfterInsert(DataSet: TDataSet);
    procedure DBLabeledEdit2Exit(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCli: TfrmCadCli;

implementation

{$R *.dfm}
// Copyright � 2025 Mancuso Software (laertemjr@outlook.com.br)

procedure TfrmCadCli.FormActivate(Sender: TObject);
var s:string;
begin
   s := ExtractFilePath(Application.ExeName) + 'MonoUserSystem.mdb';
   if not FileExists(s) then
   begin
      ShowMessage('Banco de dados n�o localizado no mesmo diret�rio do programa.');
      Self.Close;
   end
   else
   begin
      FDConnection1.Params.Add('Database=' + s);
      FDTable1.Open;
   end;
end;

procedure TfrmCadCli.DBGrid1TitleClick(Column: TColumn);
begin
   TFDTable(DBGrid1.DataSource.DataSet).IndexFieldNames := Column.FieldName;
end;

procedure TfrmCadCli.DBLabeledEdit2Exit(Sender: TObject);
var s:string;
begin
   if DataSource1.State in [dsEdit, dsInsert] then
   begin
      s := Trim(DBLabeledEdit2.Text);
      DBLabeledEdit2.Field.AsString := s;
   end;
end;

procedure TfrmCadCli.DBLabeledEdit2KeyPress(Sender: TObject; var Key: Char);
begin
   if (not(Key in ['A' .. 'Z', 'a' .. 'z', '�', '�', '�', '�', '�',
                   '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', #8, #32, #39])) then
      Key := #0; // #8 backspace, #32 space, #39 aspas simples
end;

procedure TfrmCadCli.FDTable1AfterInsert(DataSet: TDataSet);
begin
   DBLabeledEdit2.SetFocus;
   DBLabeledEdit2.SelLength := 0;
end;

procedure TfrmCadCli.FDTable1BeforePost(DataSet: TDataSet);
var s:String;
begin
   if Trim(FDTable1Cliente_NomeCompleto.AsString) = EmptyStr then
   begin
      ShowMessage('Nome n�o pode estar sem preenchimento.');
      DBLabeledEdit2.SetFocus;
      Abort;
   end;
end;

procedure TfrmCadCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FDTable1.Close;
end;

end.
