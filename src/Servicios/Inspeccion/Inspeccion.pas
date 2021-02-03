unit Inspeccion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ExtCtrls, Vcl.StdCtrls, AdvEdit, DBAdvEd,
  Vcl.DBCtrls, AdvGlowButton, Vcl.ComCtrls, AdvDateTimePicker,
  AdvDBDateTimePicker, Vcl.Mask, AdvSmoothEdit, AdvSmoothEditButton,
  AdvSmoothDatePicker, DBAdvSmoothDatePicker, System.StrUtils, AdvDropDown,
  AdvCustomGridDropDown, AdvGridDropDown;

type
  TFrmInspeccion = class(TForm)
    pnlLeft: TPanel;
    CRDBGrid1: TCRDBGrid;
    DsData: TDataSource;
    Label1: TLabel;
    DBrgEstado: TDBRadioGroup;
    qData: TUniQuery;
    DBAdvEdit2: TDBAdvEdit;
    DBAdvEdit6: TDBAdvEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBAdvEdit1: TDBAdvEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    btnCliente: TAdvGlowButton;
    btnVehiculo: TAdvGlowButton;
    btnEmpleado: TAdvGlowButton;
    DrpDownGas: TAdvGridDropDown;
    AdvDBDateTimePicker1: TAdvDBDateTimePicker;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    qDataID: TIntegerField;
    qDataID_VEHICULO: TIntegerField;
    qDataID_EMPLEADO: TIntegerField;
    qDataRALLADURAS: TIntegerField;
    qDataGOMA_REPUESTO: TIntegerField;
    qDataGATO: TIntegerField;
    qDataROTURA_CRISTAL: TIntegerField;
    qDataESTADO_NEUMATICO_1: TIntegerField;
    qDataESTADO_NEUMATICO_2: TIntegerField;
    qDataESTADO_NEUMATICO_3: TIntegerField;
    qDataESTADO_NEUMATICO_4: TIntegerField;
    qDataFECHA: TDateField;
    qDataESTADO: TIntegerField;
    qDataID_CLIENTE: TIntegerField;
    qDataCLIENTE: TStringField;
    qDataVEHICULO: TStringField;
    qDataEMPLEADO: TStringField;
    qDataCANTIDAD_COMBUSTIBLE: TStringField;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    qDataSTATUS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qDataBeforePost(DataSet: TDataSet);
    procedure qDataAfterInsert(DataSet: TDataSet);
    procedure qDataCalcFields(DataSet: TDataSet);
    procedure btnClienteClick(Sender: TObject);
    procedure btnVehiculoClick(Sender: TObject);
    procedure btnEmpleadoClick(Sender: TObject);
    procedure DsDataStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInspeccion: TFrmInspeccion;

implementation

uses
  DataModule, MainForm, Busqueda;

{$R *.dfm}

procedure TFrmInspeccion.btnClienteClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBusqueda, frmBusqueda);

    frmBusqueda.Caption := 'Busqueda de Clientes';

    frmBusqueda.Tabla := 'CLIENTES';
    frmBusqueda.Campos := 'ID AS CODIGO, NOMBRES, APELLIDOS,CEDULA,TIPO_PERSONA';
    frmBusqueda.Condiciones := 'WHERE ESTADO = 1';
    frmBusqueda.Order := 'ORDER BY ID ASC';
    frmBusqueda.Campo_Busqueda := 'NOMBRES';

    if frmBusqueda.ShowModal = mrOk then
    begin
      qDataID_CLIENTE.AsInteger := frmBusqueda.qUnquery.Fields[0].AsInteger;
    end;
  finally
    FreeAndNil(frmBusqueda);
  end;
end;

procedure TFrmInspeccion.btnEmpleadoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBusqueda, frmBusqueda);

    frmBusqueda.Caption := 'Busqueda de Empleados';

    frmBusqueda.Tabla := 'EMPLEADOS';
    frmBusqueda.Campos := 'ID AS CODIGO, NOMBRES, APELLIDOS,CEDULA';
    frmBusqueda.Condiciones := 'WHERE ESTADO = 1';
    frmBusqueda.Order := 'ORDER BY ID ASC';
    frmBusqueda.Campo_Busqueda := 'NOMBRES';

    if frmBusqueda.ShowModal = mrOk then
    begin
      qDataID_EMPLEADO.AsInteger := frmBusqueda.qUnquery.Fields[0].AsInteger;
    end;
  finally
    FreeAndNil(frmBusqueda);
  end;
end;

procedure TFrmInspeccion.btnVehiculoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBusqueda, frmBusqueda);

    frmBusqueda.Caption := 'Busqueda de VehÝculos';

    frmBusqueda.Tabla := 'VEHICULOS';
    frmBusqueda.Campos := 'ID AS CODIGO, DESCRIPCION, CHASIS,PLACA,MOTOR';
    frmBusqueda.Condiciones := 'WHERE ESTADO = 1';
    frmBusqueda.Order := 'ORDER BY ID ASC';
    frmBusqueda.Campo_Busqueda := 'DESCRIPCION';

    if frmBusqueda.ShowModal = mrOk then
    begin
      qDataID_VEHICULO.AsInteger := frmBusqueda.qUnquery.Fields[0].AsInteger;
    end;
  finally
    FreeAndNil(frmBusqueda);
  end;
end;

procedure TFrmInspeccion.DsDataStateChange(Sender: TObject);
begin
  if qData.State in [dsInsert,dsEdit] then
  begin
    btnCliente.Enabled := True;
    btnVehiculo.Enabled := True;
    btnEmpleado.Enabled := True;
  end
  else
  begin
    btnCliente.Enabled := False;
    btnVehiculo.Enabled := False;
    btnEmpleado.Enabled := False;
  end;
end;

procedure TFrmInspeccion.FormActivate(Sender: TObject);
begin
  frmMainForm.dsMain.DataSet := qData;
end;

procedure TFrmInspeccion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMainForm.dsMain.DataSet := nil;
  Action := caFree;
end;

procedure TFrmInspeccion.FormShow(Sender: TObject);
begin
  qData.Open;
end;

procedure TFrmInspeccion.qDataAfterInsert(DataSet: TDataSet);
begin
  qDataESTADO.AsInteger := 1;
  qDataFECHA.AsDateTime := Now;
end;

procedure TFrmInspeccion.qDataBeforePost(DataSet: TDataSet);
begin
  if ((qDataID_VEHICULO.IsNull) or
     (qDataID_EMPLEADO.IsNull) or
     (qDataID_CLIENTE.IsNull) or
     (qDataRALLADURAS.IsNull) or
     (qDataGOMA_REPUESTO.IsNull) or
     (qDataGATO.IsNull) or
     (qDataROTURA_CRISTAL.IsNull) or
     (qDataESTADO_NEUMATICO_1.IsNull) or
     (qDataESTADO_NEUMATICO_2.IsNull) or
     (qDataESTADO_NEUMATICO_3.IsNull) or
     (qDataESTADO_NEUMATICO_4.IsNull))
  then
  begin
    Application.MessageBox('Faltan campos por completar...' + #13#10#13#10
      + 'Se detendra el proceso', frmMainForm.error, MB_OK +
      MB_ICONSTOP);

    Abort;
  end
  else
  begin
    qDataCANTIDAD_COMBUSTIBLE.AsString := DrpDownGas.Text;
  end;
end;

procedure TFrmInspeccion.qDataCalcFields(DataSet: TDataSet);
begin
  if qDataESTADO.AsInteger = 1 then
    qDataSTATUS.AsString := 'ACTIVO'
  else qDataSTATUS.AsString := 'INACTIVO';

  if not qDataID_CLIENTE.IsNull then
  begin
    qDataCLIENTE.AsString := frmMainForm.get_string_field('CLIENTES','ID','NOMBRES',
                           qDataID_CLIENTE.AsInteger);
  end;

  if not qDataID_EMPLEADO.IsNull then
  begin
    qDataEMPLEADO.AsString := frmMainForm.get_string_field('EMPLEADOS','ID','NOMBRES',
                           qDataID_EMPLEADO.AsInteger);
  end;

  if not qDataID_VEHICULO.IsNull then
  begin
    qDataVEHICULO.AsString := frmMainForm.get_string_field('VEHICULOS','ID','DESCRIPCION',
                           qDataID_VEHICULO.AsInteger);
  end;
end;

end.
