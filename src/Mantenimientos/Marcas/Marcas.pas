unit Marcas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ExtCtrls, Vcl.StdCtrls, AdvEdit, DBAdvEd,
  Vcl.DBCtrls, frxClass, frxDBSet;

type
  TFrmMarcas = class(TForm)
    pnlLeft: TPanel;
    CRDBGrid1: TCRDBGrid;
    DsData: TDataSource;
    DBAdvEdit1: TDBAdvEdit;
    Label1: TLabel;
    DBrgEstado: TDBRadioGroup;
    qData: TUniQuery;
    qDataID: TIntegerField;
    qDataDESCRIPCION: TStringField;
    qDataESTADO: TIntegerField;
    qDataSTATUS: TStringField;
    frxData: TfrxReport;
    frxDBDsData: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qDataBeforePost(DataSet: TDataSet);
    procedure qDataAfterInsert(DataSet: TDataSet);
    procedure qDataCalcFields(DataSet: TDataSet);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
    procedure Imprime(Tprint : boolean);
  public
    { Public declarations }
    procedure busqueda(Sender: TObject);
    procedure Print(Sender : TObject);
    procedure Preview(Sender : TObject);
  end;

var
  FrmMarcas: TFrmMarcas;

implementation

uses
  DataModule, MainForm, Busqueda;

{$R *.dfm}

procedure TFrmMarcas.busqueda(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBusqueda, frmBusqueda);

    frmBusqueda.Caption := 'Busqueda de Marcas';

    frmBusqueda.Tabla := 'MARCAS';
    frmBusqueda.Campos := 'ID AS CODIGO, DESCRIPCION AS MARCA';
    frmBusqueda.Order := 'ORDER BY ID ASC';
    frmBusqueda.Campo_Busqueda := 'DESCRIPCION';

    if frmBusqueda.ShowModal = mrOk then
    begin
      qData.Locate('ID',frmBusqueda.qUnquery.Fields[0].AsInteger,[]);
    end;
  finally
    FreeAndNil(frmBusqueda);
  end;
end;

procedure TFrmMarcas.FormActivate(Sender: TObject);
begin
  frmMainForm.dsMain.DataSet := qData;
  frmMainForm.btfind.OnClick := Busqueda;

  frmMainForm.btprint.OnClick := Print;
  frmMainForm.btpreview.OnClick := Preview;

  frmMainForm.btprint.Enabled := true;
  frmMainForm.btpreview.Enabled := true;
  frmMainForm.btnExport.Enabled := true;
end;

procedure TFrmMarcas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMainForm.dsMain.DataSet := nil;

  frmMainForm.btprint.OnClick := nil;
  frmMainForm.btpreview.OnClick := nil;

  frmMainForm.btprint.Enabled := False;
  frmMainForm.btpreview.Enabled := False;
  frmMainForm.btnExport.Enabled := False;
  Action := caFree;
end;

procedure TFrmMarcas.FormDeactivate(Sender: TObject);
begin
  frmMainForm.dsMain.DataSet := nil;

  frmMainForm.btprint.OnClick := nil;
  frmMainForm.btpreview.OnClick := nil;

  frmMainForm.btprint.Enabled := False;
  frmMainForm.btpreview.Enabled := False;
  frmMainForm.btnExport.Enabled := False;
end;

procedure TFrmMarcas.FormShow(Sender: TObject);
begin
  qData.Open;
end;

procedure TFrmMarcas.Imprime(Tprint: boolean);
begin
  if Tprint then frxData.Print
  else frxData.ShowReport();
end;

procedure TFrmMarcas.Preview(Sender: TObject);
begin
  Imprime(false);
end;

procedure TFrmMarcas.Print(Sender: TObject);
begin
 Imprime(true);
end;

procedure TFrmMarcas.qDataAfterInsert(DataSet: TDataSet);
begin
  qDataESTADO.AsInteger := 1;
end;

procedure TFrmMarcas.qDataBeforePost(DataSet: TDataSet);
begin
  if qDataDESCRIPCION.AsString  = ''
  then
  begin
    Application.MessageBox('Faltan campos por completar...' + #13#10#13#10
      + 'Se detendra el proceso', frmMainForm.error, MB_OK +
      MB_ICONSTOP);

    Abort;
  end;
end;

procedure TFrmMarcas.qDataCalcFields(DataSet: TDataSet);
begin
  if qDataESTADO.AsInteger = 1 then
    qDataSTATUS.AsString := 'Activo'
  else qDataSTATUS.AsString := 'Inactivo';
end;

end.
