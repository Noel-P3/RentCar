unit Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ExtCtrls, Vcl.StdCtrls, AdvEdit, DBAdvEd,
  Vcl.DBCtrls, AdvGlowButton, Vcl.Mask, AdvSmoothEdit, AdvSmoothEditButton,
  AdvSmoothDatePicker, DBAdvSmoothDatePicker;

type
  TFrmClientes = class(TForm)
    pnlLeft: TPanel;
    CRDBGrid1: TCRDBGrid;
    DsData: TDataSource;
    Label1: TLabel;
    qData: TUniQuery;
    DBAdvEdit2: TDBAdvEdit;
    DBAdvEdit6: TDBAdvEdit;
    DBAdvEdit7: TDBAdvEdit;
    DBrgEstado: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    DBAdvMaskEdit1: TDBAdvMaskEdit;
    qDataID: TIntegerField;
    qDataNOMBRES: TStringField;
    qDataAPELLIDOS: TStringField;
    qDataCEDULA: TStringField;
    qDataTARJETA_CREDITO: TStringField;
    qDataLIMITE_CREDITO: TSingleField;
    qDataTIPO_PERSONA: TIntegerField;
    qDataESTADO: TIntegerField;
    qDataSTATUS: TStringField;
    qDataTYPE_PERSON: TStringField;
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
  FrmClientes: TFrmClientes;

implementation

uses
  DataModule, MainForm, Busqueda;

{$R *.dfm}

procedure TFrmClientes.FormActivate(Sender: TObject);
begin
  frmMainForm.dsMain.DataSet := qData;
end;

procedure TFrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMainForm.dsMain.DataSet := nil;
  Action := caFree;
end;

procedure TFrmClientes.FormShow(Sender: TObject);
begin
  qData.Open;
end;

procedure TFrmClientes.qDataAfterInsert(DataSet: TDataSet);
begin
  qDataESTADO.AsInteger := 1;
  qDataTIPO_PERSONA.AsInteger := 1;
end;

procedure TFrmClientes.qDataBeforePost(DataSet: TDataSet);
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

procedure TFrmClientes.qDataCalcFields(DataSet: TDataSet);
begin
  if qDataESTADO.AsInteger = 1 then
    qDataSTATUS.AsString := 'Activo'
  else qDataSTATUS.AsString := 'Inactivo';

  if qDataTIPO_PERSONA.AsInteger = 1 then
    qDataTYPE_PERSON.AsString := 'F�sica'
  else qDataTYPE_PERSON.AsString := 'Jur�dica';
end;

end.
