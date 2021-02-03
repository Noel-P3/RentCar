program RentCar;

uses
  Vcl.Forms,
  MainForm in 'src\MainForm.pas' {frmMainForm},
  SesionInicio in 'src\Iniciar Sesion\SesionInicio.pas' {InicioSesion},
  DBProvider in 'src\DM\DBProvider.pas',
  DataModule in 'src\DM\DataModule.pas' {DM: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  Users in 'src\Configuraciones\Usuarios y Accesos\Users.pas' {FrmUsers},
  Marcas in 'src\Mantenimientos\Marcas\Marcas.pas' {FrmMarcas},
  Modelos in 'src\Mantenimientos\Modelos\Modelos.pas' {FrmModelos},
  Busqueda in 'src\Utilidades\Busqueda\Busqueda.pas' {frmBusqueda},
  Tipo_Combustibles in 'src\Mantenimientos\Tipo de Combustibles\Tipo_Combustibles.pas' {FrmTipo_Combustibles},
  Vehiculos in 'src\Mantenimientos\Vehículos\Vehiculos.pas' {FrmVehiculos},
  Tipo_Vehiculos in 'src\Mantenimientos\Tipos de Vehiculos\Tipo_Vehiculos.pas' {FrmTipo_Vehiculos},
  Empleados in 'src\Mantenimientos\Empleados\Empleados.pas' {FrmEmpleados},
  Clientes in 'src\Mantenimientos\Clientes\Clientes.pas' {FrmClientes},
  Inspeccion in 'src\Servicios\Inspeccion\Inspeccion.pas' {FrmInspeccion},
  RentaDevolucion in 'src\Servicios\Renta y devolucion\RentaDevolucion.pas' {FrmRentaDevolucion},
  ReportRentDevol in 'src\Servicios\Reportes\Renta Devolucion\ReportRentDevol.pas' {frmReportRentDevol};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Lavender Classico');
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMainForm, frmMainForm);
  Application.Run;
end.
