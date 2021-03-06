unit Empleados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ExtCtrls, Vcl.StdCtrls, AdvEdit, DBAdvEd,
  Vcl.DBCtrls, AdvGlowButton, Vcl.ComCtrls, AdvDateTimePicker,
  AdvDBDateTimePicker, Vcl.Mask, AdvSmoothEdit, AdvSmoothEditButton,
  AdvSmoothDatePicker, DBAdvSmoothDatePicker, System.StrUtils;

type
  TFrmEmpleados = class(TForm)
    pnlLeft: TPanel;
    CRDBGrid1: TCRDBGrid;
    DsData: TDataSource;
    Label1: TLabel;
    DBrgEstado: TDBRadioGroup;
    qData: TUniQuery;
    DBAdvEdit2: TDBAdvEdit;
    DBAdvEdit6: TDBAdvEdit;
    DBAdvEdit7: TDBAdvEdit;
    qDataID: TIntegerField;
    qDataNOMBRES: TStringField;
    qDataAPELLIDOS: TStringField;
    qDataCEDULA: TStringField;
    qDataTANDA: TIntegerField;
    qDataCOMISION: TSingleField;
    qDataFECHA_INGRESO: TDateField;
    qDataFECHA_SALIDA: TDateField;
    qDataESTADO: TIntegerField;
    qDataSTATUS: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    qDataTANDAN: TStringField;
    DBAdvSmoothDatePicker1: TDBAdvSmoothDatePicker;
    DBAdvSmoothDatePicker2: TDBAdvSmoothDatePicker;
    DBAdvMaskEdit1: TDBAdvMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qDataBeforePost(DataSet: TDataSet);
    procedure qDataAfterInsert(DataSet: TDataSet);
    procedure qDataCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpleados: TFrmEmpleados;

implementation

uses
  DataModule, MainForm, Busqueda;

{$R *.dfm}

procedure TFrmEmpleados.FormActivate(Sender: TObject);
begin
  frmMainForm.dsMain.DataSet := qData;
end;

procedure TFrmEmpleados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMainForm.dsMain.DataSet := nil;
  Action := caFree;
end;

procedure TFrmEmpleados.FormShow(Sender: TObject);
begin
  qData.Open;
end;

procedure TFrmEmpleados.qDataAfterInsert(DataSet: TDataSet);
begin
  qDataESTADO.AsInteger := 1;
  qDataTANDA.AsInteger := 1;
  qDataFECHA_INGRESO.AsDateTime := Now;
  qDataFECHA_SALIDA.AsDateTime := Now;
end;

procedure TFrmEmpleados.qDataBeforePost(DataSet: TDataSet);
begin
  if ((qDataNOMBRES.AsString = '') or
     (qDataAPELLIDOS.IsNull) or
     (qDataCEDULA.IsNull))
  then
  begin
    Application.MessageBox('Faltan campos por completar...' + #13#10#13#10
      + 'Se detendra el proceso', frmMainForm.error, MB_OK +
      MB_ICONSTOP);

    Abort;
  end;
end;

procedure TFrmEmpleados.qDataCalcFields(DataSet: TDataSet);
begin
  if qDataESTADO.AsInteger = 1 then
    qDataSTATUS.AsString := 'ACTIVO'
  else qDataSTATUS.AsString := 'INACTIVO';

  if qDataTANDA.AsInteger = 1 then
    qDataTANDAN.AsString := 'MATUTINO'
  else qDataTANDAN.AsString := 'NOCTURNO';
end;

end.
