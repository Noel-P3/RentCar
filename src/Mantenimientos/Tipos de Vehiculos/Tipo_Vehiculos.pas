unit Tipo_Vehiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ExtCtrls, Vcl.StdCtrls, AdvEdit, DBAdvEd,
  Vcl.DBCtrls, frxClass, frxDBSet;

type
  TFrmTipo_Vehiculos = class(TForm)
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
    procedure Print(Sender : TObject);
    procedure Preview(Sender : TObject);
    procedure Busqueda(Sender : TObject);
  end;

var
  FrmTipo_Vehiculos: TFrmTipo_Vehiculos;

implementation

uses
  DataModule, MainForm, Busqueda;

{$R *.dfm}

procedure TFrmTipo_Vehiculos.Busqueda(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBusqueda, frmBusqueda);

    frmBusqueda.Caption := 'Busqueda de Tipos de Vehiculos';

    frmBusqueda.Tabla := 'TIPO_VEHICULOS';
    frmBusqueda.Campos := 'ID AS CODIGO, DESCRIPCION AS TIPO_VEHICULOS';
    frmBusqueda.Condiciones := 'WHERE ESTADO = 1';
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

procedure TFrmTipo_Vehiculos.FormActivate(Sender: TObject);
begin
  frmMainForm.dsMain.DataSet := qData;
  frmMainForm.btprint.OnClick := Print;
  frmMainForm.btpreview.OnClick := Preview;
  frmMainForm.btfind.OnClick := Busqueda;

  frmMainForm.btprint.Enabled := true;
  frmMainForm.btpreview.Enabled := true;
  frmMainForm.btnExport.Enabled := true;
end;

procedure TFrmTipo_Vehiculos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMainForm.dsMain.DataSet := nil;

  frmMainForm.btprint.OnClick := nil;
  frmMainForm.btpreview.OnClick := nil;
  frmMainForm.btfind.OnClick := nil;

  frmMainForm.btprint.Enabled := False;
  frmMainForm.btpreview.Enabled := False;
  frmMainForm.btnExport.Enabled := False;

  Action := caFree;
end;

procedure TFrmTipo_Vehiculos.FormDeactivate(Sender: TObject);
begin
  frmMainForm.dsMain.DataSet := nil;

  frmMainForm.btprint.OnClick := nil;
  frmMainForm.btpreview.OnClick := nil;
  frmMainForm.btfind.OnClick := nil;

  frmMainForm.btprint.Enabled := False;
  frmMainForm.btpreview.Enabled := False;
  frmMainForm.btnExport.Enabled := False;
end;

procedure TFrmTipo_Vehiculos.FormShow(Sender: TObject);
begin
  qData.Open;
end;

procedure TFrmTipo_Vehiculos.Imprime(Tprint: boolean);
begin
  if Tprint then frxData.Print
  else frxData.ShowReport();
end;

procedure TFrmTipo_Vehiculos.Preview(Sender: TObject);
begin
  Imprime(false);
end;

procedure TFrmTipo_Vehiculos.Print(Sender: TObject);
begin
  Imprime(true);
end;

procedure TFrmTipo_Vehiculos.qDataAfterInsert(DataSet: TDataSet);
begin
  qDataESTADO.AsInteger := 1;
end;

procedure TFrmTipo_Vehiculos.qDataBeforePost(DataSet: TDataSet);
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

procedure TFrmTipo_Vehiculos.qDataCalcFields(DataSet: TDataSet);
begin
  if qDataESTADO.AsInteger = 1 then
    qDataSTATUS.AsString := 'Activo'
  else qDataSTATUS.AsString := 'Inactivo';
end;

end.
