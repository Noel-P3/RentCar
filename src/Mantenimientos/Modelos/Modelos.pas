unit Modelos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ExtCtrls, Vcl.StdCtrls, AdvEdit, DBAdvEd,
  Vcl.DBCtrls, AdvGlowButton, frxClass, frxDBSet;

type
  TFrmModelos = class(TForm)
    pnlLeft: TPanel;
    CRDBGrid1: TCRDBGrid;
    DsData: TDataSource;
    DBAdvEdit1: TDBAdvEdit;
    Label1: TLabel;
    DBrgEstado: TDBRadioGroup;
    qData: TUniQuery;
    DBAdvEdit2: TDBAdvEdit;
    qDataID: TIntegerField;
    qDataID_MARCA: TIntegerField;
    qDataMODELO: TStringField;
    qDataESTADO: TIntegerField;
    qDataSTATUS: TStringField;
    qDataMARCA: TStringField;
    btnBusqueda: TAdvGlowButton;
    frxData: TfrxReport;
    frxDBDsData: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qDataBeforePost(DataSet: TDataSet);
    procedure qDataAfterInsert(DataSet: TDataSet);
    procedure qDataCalcFields(DataSet: TDataSet);
    procedure btnBusquedaClick(Sender: TObject);
    procedure DsDataStateChange(Sender: TObject);
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
  FrmModelos: TFrmModelos;

implementation

uses
  DataModule, MainForm, Busqueda;

{$R *.dfm}

procedure TFrmModelos.btnBusquedaClick(Sender: TObject);
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
      qDataID_MARCA.AsInteger := frmBusqueda.qUnquery.Fields[0].AsInteger;
    end;
  finally
    FreeAndNil(frmBusqueda);
  end;
end;

procedure TFrmModelos.Busqueda(Sender : TObject);
begin
  try
    Application.CreateForm(TfrmBusqueda, frmBusqueda);

    frmBusqueda.Caption := 'Busqueda de Modelos';

    frmBusqueda.Tabla := 'MODELOS';
    frmBusqueda.Campos := 'ID AS CODIGO, MODELO';
    frmBusqueda.Order := 'ORDER BY ID ASC';
    frmBusqueda.Campo_Busqueda := 'MODELO';

    if frmBusqueda.ShowModal = mrOk then
    begin
      qData.Locate('ID',frmBusqueda.qUnquery.Fields[0].AsInteger,[]);
    end;
  finally
    FreeAndNil(frmBusqueda);
  end;
end;

procedure TFrmModelos.DsDataStateChange(Sender: TObject);
begin
  if qData.State in [dsInsert,dsEdit] then btnBusqueda.Enabled := True
  else btnBusqueda.Enabled := False;
end;

procedure TFrmModelos.FormActivate(Sender: TObject);
begin
  frmMainForm.dsMain.DataSet := qData;

  frmMainForm.btprint.OnClick := Print;
  frmMainForm.btpreview.OnClick := Preview;
  frmMainForm.btfind.OnClick := Busqueda;

  frmMainForm.btprint.Enabled := true;
  frmMainForm.btpreview.Enabled := true;
  frmMainForm.btnExport.Enabled := true;
end;

procedure TFrmModelos.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrmModelos.FormDeactivate(Sender: TObject);
begin
  frmMainForm.dsMain.DataSet := nil;

  frmMainForm.btprint.OnClick := nil;
  frmMainForm.btpreview.OnClick := nil;
  frmMainForm.btfind.OnClick := nil;

  frmMainForm.btprint.Enabled := False;
  frmMainForm.btpreview.Enabled := False;
  frmMainForm.btnExport.Enabled := False;
end;

procedure TFrmModelos.FormShow(Sender: TObject);
begin
  qData.Open;
end;

procedure TFrmModelos.Imprime(Tprint: boolean);
begin
  if Tprint then frxData.Print
  else frxData.ShowReport();
end;

procedure TFrmModelos.Preview(Sender: TObject);
begin
  Imprime(true);
end;

procedure TFrmModelos.Print(Sender: TObject);
begin
  Imprime(true);
end;

procedure TFrmModelos.qDataAfterInsert(DataSet: TDataSet);
begin
  qDataESTADO.AsInteger := 1;
end;

procedure TFrmModelos.qDataBeforePost(DataSet: TDataSet);
begin
  if ((qDataMODELO.AsString = '') or (qDataID_MARCA.IsNull))
  then
  begin
    Application.MessageBox('Faltan campos por completar...' + #13#10#13#10
      + 'Se detendra el proceso', frmMainForm.error, MB_OK +
      MB_ICONSTOP);

    Abort;
  end;
end;

procedure TFrmModelos.qDataCalcFields(DataSet: TDataSet);
begin
  if qDataESTADO.AsInteger = 1 then
    qDataSTATUS.AsString := 'Activo'
  else qDataSTATUS.AsString := 'Inactivo';

  if not qDataID_MARCA.IsNull then
  begin
    qDataMARCA.AsString := frmMainForm.get_string_field('MARCAS','ID','DESCRIPCION',
                           qDataID_MARCA.AsInteger);
  end;
end;

end.
