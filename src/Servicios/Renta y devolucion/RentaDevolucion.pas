unit RentaDevolucion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ExtCtrls, Vcl.StdCtrls, AdvEdit, DBAdvEd,
  Vcl.DBCtrls, AdvGlowButton, Vcl.ComCtrls, AdvDateTimePicker,
  AdvDBDateTimePicker, Vcl.Mask, AdvSmoothEdit, AdvSmoothEditButton,
  AdvSmoothDatePicker, DBAdvSmoothDatePicker, System.StrUtils, AdvDropDown,
  AdvCustomGridDropDown, AdvGridDropDown,System.DateUtils;

type
  TFrmRentaDevolucion = class(TForm)
    pnlLeft: TPanel;
    CRDBGrid1: TCRDBGrid;
    DsData: TDataSource;
    Label1: TLabel;
    qData: TUniQuery;
    DBAdvEdit2: TDBAdvEdit;
    DBAdvEdit6: TDBAdvEdit;
    DBAdvEdit1: TDBAdvEdit;
    btnCliente: TAdvGlowButton;
    btnVehiculo: TAdvGlowButton;
    btnEmpleado: TAdvGlowButton;
    AdvDBDateTimePicker1: TAdvDBDateTimePicker;
    AdvDBDateTimePicker2: TAdvDBDateTimePicker;
    DBAdvEdit3: TDBAdvEdit;
    DBAdvEdit4: TDBAdvEdit;
    btnRentar: TButton;
    btnDevolver: TButton;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBAdvEdit5: TDBAdvEdit;
    qDataID: TIntegerField;
    qDataID_EMPLEADO: TIntegerField;
    qDataID_VEHICULO: TIntegerField;
    qDataID_CLIENTE: TIntegerField;
    qDataFECHA_RENTA: TDateField;
    qDataFECHA_DEVOLUCION: TDateField;
    qDataMONTOXDIA: TSingleField;
    qDataDIAS: TIntegerField;
    qDataOBSERVACION: TStringField;
    qDataESTADO: TIntegerField;
    qDataCLIENTE: TStringField;
    qDataVEHICULO: TStringField;
    qDataEMPLEADO: TStringField;
    qDataRENTADO: TStringField;
    qDataSTATUS: TStringField;
    qRentar: TUniQuery;
    qUnquery: TUniQuery;
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
    procedure qDataFECHA_DEVOLUCIONChange(Sender: TField);
    procedure btnRentarClick(Sender: TObject);
    procedure qDataAfterScroll(DataSet: TDataSet);
    procedure qDataAfterPost(DataSet: TDataSet);
    procedure btnDevolverClick(Sender: TObject);
    procedure qDataBeforeDelete(DataSet: TDataSet);
    procedure qDataAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; documento: Integer); reintroduce;

    var
    documento1 : integer;
  end;

var
  FrmRentaDevolucion: TFrmRentaDevolucion;

implementation

uses
  DataModule, MainForm, Busqueda;

{$R *.dfm}

procedure TFrmRentaDevolucion.btnClienteClick(Sender: TObject);
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

procedure TFrmRentaDevolucion.btnDevolverClick(Sender: TObject);
begin
  qUnquery.Close;
  qUnquery.SQL.Clear;
  qUnquery.SQL.Add('SELECT ESTADO FROM VEHICULOS');
  qUnquery.SQL.Add('WHERE ID = '+qDataID_VEHICULO.AsString);
  qUnquery.Open;

  if qUnquery.Fields[0].AsInteger = 0 then
  begin
    try
      qRentar.Close;
      qRentar.SQL.Clear;
      qRentar.SQL.Add('UPDATE VEHICULOS SET ESTADO = 1 WHERE ID = '+qDataID_VEHICULO.AsString);
      qRentar.Execute;
    finally
      frmMainForm.dsMain.DataSet := nil;
      qData.Edit;
      qDataESTADO.AsInteger := 0;
      qData.Post;
      frmMainForm.dsMain.DataSet := qData;
    end;
  end;
end;

procedure TFrmRentaDevolucion.btnEmpleadoClick(Sender: TObject);
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

procedure TFrmRentaDevolucion.btnRentarClick(Sender: TObject);
begin
  qUnquery.Close;
  qUnquery.SQL.Clear;
  qUnquery.SQL.Add('SELECT ESTADO FROM VEHICULOS');
  qUnquery.SQL.Add('WHERE ID = '+qDataID_VEHICULO.AsString);
  qUnquery.Open;

  if qUnquery.Fields[0].AsInteger = 1 then
  begin
    try
      qRentar.Close;
      qRentar.SQL.Clear;
      qRentar.SQL.Add('UPDATE VEHICULOS SET ESTADO = 0 WHERE ID = '+qDataID_VEHICULO.AsString);
      qRentar.Execute;
    finally
      frmMainForm.dsMain.DataSet := nil;
      qData.Edit;
      qDataESTADO.AsInteger := 1;
      qData.Post;
      frmMainForm.dsMain.DataSet := qData;
    end;
  end
  else
  begin
    qUnquery.Close;
    qUnquery.SQL.Clear;
    qUnquery.SQL.Add('SELECT ID FROM RENTA_DEVOLUCION');
    qUnquery.SQL.Add('WHERE ID_VEHICULO = '+qDataID_VEHICULO.AsString);
    qUnquery.SQL.Add('AND ESTADO = 1');
    qUnquery.Open;

    Application.MessageBox(PChar('Este vehiculo ya esta rentado en el documento '+qUnquery.Fields[0].AsString),
    frmMainForm.error, MB_OK + MB_ICONSTOP);
  end;
end;

procedure TFrmRentaDevolucion.btnVehiculoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBusqueda, frmBusqueda);

    frmBusqueda.Caption := 'Busqueda de Veh�culos';

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

constructor TFrmRentaDevolucion.Create(AOwner: TComponent; documento: Integer);
begin
  documento1 := documento;
  inherited create(AOwner);
end;

procedure TFrmRentaDevolucion.DsDataStateChange(Sender: TObject);
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

procedure TFrmRentaDevolucion.FormActivate(Sender: TObject);
begin
  frmMainForm.dsMain.DataSet := qData;
end;

procedure TFrmRentaDevolucion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMainForm.dsMain.DataSet := nil;
  Action := caFree;
end;

procedure TFrmRentaDevolucion.FormShow(Sender: TObject);
begin
  qData.Open;
  if documento1 <> 0 then qData.Locate('ID',documento1,[]);
end;

procedure TFrmRentaDevolucion.qDataAfterCancel(DataSet: TDataSet);
begin
  qData.AfterScroll := qDataAfterScroll;
  qData.Refresh;
end;

procedure TFrmRentaDevolucion.qDataAfterInsert(DataSet: TDataSet);
begin
  qDataFECHA_RENTA.AsDateTime := Now;
  qDataFECHA_DEVOLUCION.AsDateTime := Now;

  qData.AfterScroll := nil;

  btnRentar.Enabled := False;
  btnDevolver.Enabled := false;
end;

procedure TFrmRentaDevolucion.qDataAfterPost(DataSet: TDataSet);
begin
  qData.AfterScroll := qDataAfterScroll;
  qData.Refresh;
end;

procedure TFrmRentaDevolucion.qDataAfterScroll(DataSet: TDataSet);
begin
  if ((qDataESTADO.AsInteger = 0) or (qDataESTADO.IsNull)) then
  begin
    btnRentar.Enabled := True;
    btnDevolver.Enabled := False;
  end
  else
  begin
    btnRentar.Enabled := False;
    btnDevolver.Enabled := True;
  end;
end;

procedure TFrmRentaDevolucion.qDataBeforeDelete(DataSet: TDataSet);
begin
  qUnquery.Close;
  qUnquery.SQL.Clear;
  qUnquery.SQL.Add('SELECT ESTADO FROM VEHICULOS');
  qUnquery.SQL.Add('WHERE ID = '+qDataID_VEHICULO.AsString);
  qUnquery.Open;

  if qUnquery.Fields[0].AsInteger = 0 then
  begin
    try
      qRentar.Close;
      qRentar.SQL.Clear;
      qRentar.SQL.Add('UPDATE VEHICULOS SET ESTADO = 1 WHERE ID = '+qDataID_VEHICULO.AsString);
      qRentar.Execute;
    finally
      Application.MessageBox(PChar('Vehiculo liberado...'),
        frmMainForm.avisa, MB_OK + MB_ICONINFORMATION);
    end;
  end;
end;

procedure TFrmRentaDevolucion.qDataBeforePost(DataSet: TDataSet);
begin
  if ((qDataID_VEHICULO.IsNull) or
     (qDataID_EMPLEADO.IsNull) or
     (qDataID_CLIENTE.IsNull) or
     (qDataMONTOXDIA.IsNull) or
     (qDataOBSERVACION.IsNull))
  then
  begin
    Application.MessageBox('Faltan campos por completar...' + #13#10#13#10
      + 'Se detendra el proceso', frmMainForm.error, MB_OK +
      MB_ICONSTOP);

    Abort;
  end;
end;

procedure TFrmRentaDevolucion.qDataCalcFields(DataSet: TDataSet);
begin
  if not qDataESTADO.IsNull then
  begin
    if qDataESTADO.AsInteger = 1 then
    begin
      qDataRENTADO.AsString := 'RENTADO'
    end
    else qDataRENTADO.AsString := 'DEVUELTO';
  end;

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

procedure TFrmRentaDevolucion.qDataFECHA_DEVOLUCIONChange(Sender: TField);
begin
  if qDataFECHA_DEVOLUCION.AsDateTime < qDataFECHA_RENTA.AsDateTime then
  begin
    Application.MessageBox('La fecha de devoluci�n no puede ser menor que la '
      + #13#10 + 'fecha de renta...', 'Grullon D. RentCar - Pregunta', MB_OK +
      MB_ICONSTOP);

    qDataFECHA_DEVOLUCION.AsDateTime := qDataFECHA_RENTA.AsDateTime;
  end
  else
  begin
    qDataDIAS.AsInteger := DaysBetween(qDataFECHA_RENTA.AsDateTime,qDataFECHA_DEVOLUCION.AsDateTime);
  end;
end;

end.
