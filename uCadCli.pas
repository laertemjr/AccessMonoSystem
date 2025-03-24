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
    StatusBar1: TStatusBar;
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    FDTable1Cliente_ID: TFDAutoIncField;
    DBGrid1: TDBGrid;
    FDTable1Cliente_Email: TWideStringField;
    FDTable1Cliente_Celular: TWideStringField;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
    FDTable1Cliente_NomeCompleto: TWideStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FDTable1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCli: TfrmCadCli;

implementation

{$R *.dfm}


procedure TfrmCadCli.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if DBGrid1.SelectedField <> FDTable1.FieldByName('Cliente_NomeCompleto') then Exit;
   if not (key in ['A'..'Z', 'a'..'z', #8, #32]) then Key := #0; // #8 backspace, #32 space
end;

procedure TfrmCadCli.FDTable1BeforePost(DataSet: TDataSet);
begin
      if Trim(FDTable1Cliente_NomeCompleto.AsString) = EmptyStr then
      begin
         ShowMessage('Nome não pode estar sem preenchimento.');
         Abort;
      end;
end;

procedure TfrmCadCli.FormActivate(Sender: TObject);
begin
   if not FileExists(ExtractFilePath(Application.ExeName) + 'MonoUserSystem0.1.0.0.mdb') then
   begin
      ShowMessage('Banco de dados não localizado no mesmo diretório do programa.');
      Self.Close;
   end
   else
   begin
      FDConnection1.Params.Add('Database=' + ExtractFilePath(Application.ExeName) + 'MonoUserSystem0.1.0.0.mdb');
      FDTable1.Open;
   end;
end;

procedure TfrmCadCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FDTable1.Close;
end;

end.
