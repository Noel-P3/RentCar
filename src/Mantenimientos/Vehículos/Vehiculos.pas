unit Vehiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ExtCtrls, Vcl.StdCtrls, AdvEdit, DBAdvEd,
  Vcl.DBCtrls, AdvGlowButton,System.UITypes;

type
  TFrmVehiculos = class(TForm)
    pnlLeft: TPanel;
    CRDBGrid1: TCRDBGrid;
    DsData: TDataSource;
    DBAdvEdit1: TDBAdvEdit;
    Label1: TLabel;
    DBrgEstado: TDBRadioGroup;
    qData: TUniQuery;
    DBAdvEdit2: TDBAdvEdit;
    btnMarca: TAdvGlowButton;
    btnModelo: TAdvGlowButton;
    DBAdvEdit3: TDBAdvEdit;
    DBAdvEdit4: TDBAdvEdit;
    btnTipoVehiculos: TAdvGlowButton;
    DBAdvEdit5: TDBAdvEdit;
    btnTipoCombustibles: TAdvGlowButton;
    DBAdvEdit6: TDBAdvEdit;
    DBAdvEdit7: TDBAdvEdit;
    DBAdvEdit8: TDBAdvEdit;
    qDataID: TIntegerField;
    qDataID_MARCA: TIntegerField;
    qDataID_MODELO: TIntegerField;
    qDataID_TIPO_VEHICULO: TIntegerField;
    qDataID_TIPO_COMBUSTIBLE: TIntegerField;
    qDataDESCRIPCION: TStringField;
    qDataCHASIS: TStringField;
    qDataPLACA: TStringField;
    qDataMOTOR: TStringField;
    qDataSTATUS: TStringField;
    qDataESTADO: TIntegerField;
    qDataMARCA: TStringField;
    qDataTIPO_VEHICULO: TStringField;
    qDataTIPO_COMBUSTIBLE: TStringField;
    qDataMODELO: TStringField;
    qUnquery: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qDataBeforePost(DataSet: TDataSet);
    procedure qDataAfterInsert(DataSet: TDataSet);
    procedure qDataCalcFields(DataSet: TDataSet);
    procedure btnMarcaClick(Sender: TObject);
    procedure DsDataStateChange(Sender: TObject);
    procedure btnModeloClick(Sender: TObject);
    procedure btnTipoVehiculosClick(Sender: TObject);
    procedure btnTipoCombustiblesClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Busqueda(Sender : TObject);
  end;

var
  FrmVehiculos: TFrmVehiculos;

implementation

uses
  DataModule, MainForm, Busqueda;

{$R *.dfm}

procedure TFrmVehiculos.btnMarcaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBusqueda, frmBusqueda);

    frmBusqueda.Caption := 'Busqueda de Marcas';

    frmBusqueda.Tabla := 'MARCAS';
    frmBusqueda.Campos := 'ID AS CODIGO, DESCRIPCION AS MARCA';
    frmBusqueda.Condiciones := 'WHERE ESTADO = 1';
    frmBusqueda.Order := 'ORDER BY ID ASC';
    frmBusqueda.Campo_Busqueda := 'DESCRIPCION';

    if frmBusqueda.ShowModal = mrOk then
    begin
      qDataID_MARCA.AsInteger := frmBusqueda.qUnquery.Fields[0].AsInteger;
    end;
  finally
    FreeAndNil(frmBusqueda);
  end;
end;

procedure TFrmVehiculos.btnModeloClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBusqueda, frmBusqueda);

    frmBusqueda.Caption := 'Busqueda de Modelos';

    frmBusqueda.Tabla := 'MODELOS';
    frmBusqueda.Campos := 'ID AS CODIGO, MODELO';
    frmBusqueda.Condiciones := 'WHERE ESTADO = 1';
    frmBusqueda.Order := 'ORDER BY ID ASC';
    frmBusqueda.Campo_Busqueda := 'MODELO';

    if frmBusqueda.ShowModal = mrOk then
    begin
      qDataID_MODELO.AsInteger := frmBusqueda.qUnquery.Fields[0].AsInteger;
    end;
  finally
    FreeAndNil(frmBusqueda);
  end;
end;

procedure TFrmVehiculos.btnTipoCombustiblesClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBusqueda, frmBusqueda);

    frmBusqueda.Caption := 'Busqueda de Tipos de Combustibles';

    frmBusqueda.Tabla := 'TIPO_COMBUSTIBLES';
    frmBusqueda.Campos := 'ID AS CODIGO, DESCRIPCION AS TIPO_COMBUSTIBLES';
    frmBusqueda.Condiciones := 'WHERE ESTADO = 1';
    frmBusqueda.Order := 'ORDER BY ID ASC';
    frmBusqueda.Campo_Busqueda := 'DESCRIPCION';

    if frmBusqueda.ShowModal = mrOk then
    begin
      qDataID_TIPO_COMBUSTIBLE.AsInteger := frmBusqueda.qUnquery.Fields[0].AsInteger;
    end;
  finally
    FreeAndNil(frmBusqueda);
  end;
end;

procedure TFrmVehiculos.btnTipoVehiculosClick(Sender: TObject);
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
      qDataID_TIPO_VEHICULO.AsInteger := frmBusqueda.qUnquery.Fields[0].AsInteger;
    end;
  finally
    FreeAndNil(frmBusqueda);
  end;
end;

procedure TFrmVehiculos.Busqueda(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBusqueda, frmBusqueda);

    frmBusqueda.Caption := 'Busqueda de VehÝculos';

    frmBusqueda.Tabla := 'VEHICULOS';
    frmBusqueda.Campos := 'ID AS CODIGO, DESCRIPCION, CHASIS,PLACA,MOTOR';
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

procedure TFrmVehiculos.DsDataStateChange(Sender: TObject);
begin
  if qData.State in [dsInsert,dsEdit] then
  begin
    btnMarca.Enabled := True;
    btnModelo.Enabled := True;
    btnTipoVehiculos.Enabled := True;
    btnTipoCombustibles.Enabled := True;
  end
  else
  begin
    btnMarca.Enabled := False;
    btnModelo.Enabled := False;
    btnTipoVehiculos.Enabled := False;
    btnTipoCombustibles.Enabled := False;
  end;
end;

procedure TFrmVehiculos.FormActivate(Sender: TObject);
begin
  frmMainForm.dsMain.DataSet := qData;

  frmMainForm.btfind.OnClick := Busqueda;

  frmMainForm.btnExport.Enabled := true;
end;

procedure TFrmVehiculos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMainForm.dsMain.DataSet := nil;

  frmMainForm.btfind.OnClick := nil;

  frmMainForm.btnExport.Enabled := False;
  Action := caFree;
end;

procedure TFrmVehiculos.FormDeactivate(Sender: TObject);
begin
  frmMainForm.dsMain.DataSet := nil;

  frmMainForm.btfind.OnClick := nil;

  frmMainForm.btnExport.Enabled := False;
end;

procedure TFrmVehiculos.FormShow(Sender: TObject);
begin
  qData.Open;
end;

procedure TFrmVehiculos.qDataAfterInsert(DataSet: TDataSet);
begin
  qDataESTADO.AsInteger := 1;
end;

procedure TFrmVehiculos.qDataBeforePost(DataSet: TDataSet);
begin
  if ((qdataDESCRIPCION.AsString = '') or
     (qDataID_MARCA.IsNull) or
     (qDataID_MODELO.IsNull) or
     (qDataID_TIPO_VEHICULO.IsNull) or
     (qDataID_TIPO_COMBUSTIBLE.IsNull))
  then
  begin
    Application.MessageBox('Faltan campos por completar...' + #13#10#13#10
      + 'Se detendra el proceso', frmMainForm.error, MB_OK +
      MB_ICONSTOP);

    Abort;
  end;

  qUnquery.close;
  qUnquery.SQL.Clear;
  qUnquery.SQL.Add('SELECT ID_VEHICULO, ID FROM RENTA_DEVOLUCION');
  qUnquery.SQL.Add('WHERE ESTADO = 1');
  qUnquery.Open;

  qUnquery.First;
  while not qUnquery.Eof do
  begin
    if qUnquery.Fields[0].AsInteger = qDataID.AsInteger then
    begin
      MessageDlg(PChar('No es posible actulizar el estado del vehiculo a disponible porque esta rentado en el documento '+qUnquery.Fields[1].AsString),
      mtError, [mbOK], 0);

      qDataESTADO.AsInteger := 0;
      Abort;
    end;

    qUnquery.Next;
  end;
end;

procedure TFrmVehiculos.qDataCalcFields(DataSet: TDataSet);
begin
  if qDataESTADO.AsInteger = 1 then
    qDataSTATUS.AsString := 'Disponible'
  else qDataSTATUS.AsString := 'Rentado';

  if not qDataID_MARCA.IsNull then
  begin
    qDataMARCA.AsString := frmMainForm.get_string_field('MARCAS','ID','DESCRIPCION',
                           qDataID_MARCA.AsInteger);
  end;

  if not qDataID_MODELO.IsNull then
  begin
    qDataMODELO.AsString := frmMainForm.get_string_field('MODELOS','ID','MODELO',
                           qDataID_MODELO.AsInteger);
  end;

  if not qDataID_TIPO_VEHICULO.IsNull then
  begin
    qDataTIPO_VEHICULO.AsString := frmMainForm.get_string_field('TIPO_VEHICULOS','ID','DESCRIPCION',
                           qDataID_TIPO_VEHICULO.AsInteger);
  end;

  if not qDataID_TIPO_COMBUSTIBLE.IsNull then
  begin
    qDataTIPO_COMBUSTIBLE.AsString := frmMainForm.get_string_field('TIPO_COMBUSTIBLES','ID','DESCRIPCION',
                           qDataID_TIPO_COMBUSTIBLE.AsInteger);
  end;
end;

end.
