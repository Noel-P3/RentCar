unit SesionInicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls, Data.DB, MemDS, DBAccess, Uni, System.UITypes,
  Vcl.ExtCtrls,Vcl.Menus,Winapi.ShellAPI, W7Classes, W7Images,UrlMon, sLabel,
  acPNG;

type
  TInicioSesion = class(TForm)
    PageControl1: TPageControl;
    Generales: TTabSheet;
    Label3: TLabel;
    edtEmail: TEdit;
    edtPass: TEdit;
    btnIniciarSesion: TButton;
    qUsers: TUniQuery;
    dsUSERS: TDataSource;
    btnSalir: TButton;
    chkSeePass: TCheckBox;
    chkRecordUser: TCheckBox;
    statbar: TStatusBar;
    btnRecuperaContra2: TButton;
    qUsersNOMBRES: TStringField;
    qUsersAPELLIDOS: TStringField;
    qUsersCORREO: TStringField;
    qUsersUSUARIO: TStringField;
    qUsersPASSWORD: TStringField;
    W7Image1: TW7Image;
    W7Image2: TW7Image;
    lblRecordarUsuario: TsLabel;
    imgPassOculto: TW7Image;
    imgPassSee: TW7Image;
    qUsersID: TIntegerField;
    procedure btnIniciarSesionClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure edtPassChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qUsersAfterPost(DataSet: TDataSet);
    procedure chkSeePassClick(Sender: TObject);
    procedure edtPassKeyPress(Sender: TObject; var Key: Char);
    procedure btnRegistroClick(Sender: TObject);
    procedure Actualiza;
    procedure btnRecuperaContraClick(Sender: TObject);
    Procedure ActivaForma(Unidad: TFormClass; Var Forma);
    procedure SesionInicioShoww;
    procedure RandomMize;
    procedure imgPassOcultoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblRecordarUsuarioClick(Sender: TObject);
  private
    { Private declarations }
    codigo : string;
  public
    { Public declarations }
    cuerpo : string;
  end;

var
  InicioSesion: TInicioSesion;

implementation

uses
  DataModule;


{$R *.dfm}

procedure TInicioSesion.ActivaForma(Unidad: TFormClass; var Forma);
Var
  Indice : Integer;
  creada : Boolean;
begin

// Procedimiento que ayuda a abrir un form de forma sencilla por parametros
// Ejemplo.: ActivaForma(TMainForm,MainForm);

  creada := False;
  If MDIChildCount < 1 Then
     Application.CreateForm(Unidad, Forma)
  Else
  Begin
     with Application.MainForm do
       for Indice := 0 to MDIChildCount-1 do
         If (MDIChildren[Indice] = TForm(Forma)) Then
         Begin
            creada := True;
            Break;
         End;
     If Not creada Then
        Application.CreateForm(Unidad, Forma)
     Else
     Begin
        MDIChildren[Indice].BringToFront;
     End;
  End;
end;

procedure TInicioSesion.Actualiza;
//var st:array[0..255] of Char;
begin
//
//  Te avisa si existe una nueva version del programa comprobando si hay
//  DM.Version_exe es la version de la aplicacion
//  DM.Version_BD es la version de la base de datos que van en conjunto con la aplicacion
//  asi se decidio el dise�o
//
//  if DM.Version_Local <> DM.Version_BD then
//  begin
//    case
//      Application.MessageBox('Hay una nueva versi�n disponible, �Deseas descargarla ahora?',
//      'NLND-Pregunta', MB_YESNO + MB_ICONWARNING + MB_TOPMOST) of
//      IDYES:
//        begin
//            //Ejecuta un archivo y en este caso abre un una pagina web donde se puede descargar el programa
//            try
//              URLDownloadToFile(nil,
//              'http://download1594.mediafire.com/48vnk6cgwvbg/97pzqqer5klq4ki/NLND.UO.exe',
//              PChar(ExtractFilePath(Application.ExeName) + 'NLND.UO.exe'),
//              0,nil);
//              ShellExecute(Handle, 'open','.\NLND.UO.exe',nil,nil, SW_SHOWNORMAL);
//            except
//              MessageDlg('Error al descargar el actualizador...' + #13#10 +
//                #13#10 + 'La actualizaci�n autom�tica fall�...',  mtError,
//                [mbOK], 0);
//            end;
//        end;
//      IDNO:
//        begin
//
//        end;
//    end;
//  end;
end;

procedure TInicioSesion.btnIniciarSesionClick(Sender: TObject);
var ChequeaPass : string;
begin
  //Con el data set hago un select con el usuario logueado
  qUsers.Close;
  qUsers.SQL.Clear;
  qUsers.SQL.Add(' SELECT * FROM USERS');
  qUsers.SQL.Add(' WHERE CORREO = '+QuotedStr(edtEmail.Text));
  qUsers.Sql.add(' AND PASSWORD =  '+QuotedSTR(edtPass.Text));
  qUsers.SQL.Add(' OR (USUARIO = '+QuotedStr(edtEmail.Text));
  qUsers.SQL.Add(' AND PASSWORD = '+QuotedSTR(edtPass.Text));
  qUsers.SQL.Add(' ) ');

  //si el data set qusuarios no esta activo que lo active no es "necesario esto" pero por seguridad
  //lo hice asi xd
  if qUsers.Active = False then
  begin
   qUsers.Open;
   ChequeaPass := qUsersPASSWORD.AsString;
  end;

  //Si el usuario logueado no trae nada pues no entra a esta condicion

  if not qUsersID.IsNull then
  begin

    if ChequeaPass = edtPass.Text then
    begin

       //Si recordar usuario es igual a verdadero que entre a esta condicion

      if chkRecordUser.Checked = true then
      begin

        //Recordar usuario en el xml se vuelve verdadero osea un 1

        DM.XMLNLND.Active:=False;
        DM.XMLNLND.Active:=True;
        DM.XMLNLND.ChildNodes.Nodes['body'].ChildNodes.Nodes['RCUP'].Text := '1';
        DM.XMLNLND.SaveToFile('DBProvider.xml');
        DM.Recordar_Usuario := '1';
        DM.XMLNLND.Active:=False;
      end
      else
      begin

        //De lo contrario sera 0 que es falso a la vez

        DM.XMLNLND.Active:=False;
        DM.XMLNLND.Active:=True;
        DM.XMLNLND.ChildNodes.Nodes['body'].ChildNodes.Nodes['RCUP'].Text := '0';
        DM.XMLNLND.SaveToFile('DBProvider.xml');
        DM.Recordar_Usuario := '0';
        DM.XMLNLND.Active:= False;
      end;

      if DM.Version_Exe <> DM.Version_Local then
      begin

        //Si la version local es diferente a la version del xml pues el xml se actualiza a la version
        //Local... �por qu�?... porque asi fue dise�ado xd :V nah es para saber sin tener que entrar al
        //Programa cual es la versi�n...

        DM.XMLNLND.Active:=False;
        DM.XMLNLND.Active:=True;
        DM.XMLNLND.ChildNodes.Nodes['body'].ChildNodes.Nodes['ver'].Text := DM.Version_Local;
        DM.XMLNLND.SaveToFile('DBProvider.xml');
        DM.Version_Exe := DM.Version_Local;
        DM.XMLNLND.Active:= False;
      end;

      //Manda el okey a MainDesktop

      Modalresult := mrok;
    end
    else
    begin
     MessageDlg('Contrase�a incorrecta',  mtError, [mbOK], 0);
    end;
  end
  else
  begin
    //De lo contrario no inicia sesion y te manda este mensaje

    MessageDlg('Email o Contrase�a incorrectos',  mtError, [mbOK], 0);
  end;
end;

procedure TInicioSesion.btnRecuperaContraClick(Sender: TObject);
begin
//  ActivaForma(TEnvio_Correo, Envio_Correo);
end;

procedure TInicioSesion.btnRegistroClick(Sender: TObject);
begin

  // Esto hace que al darle al boton "Iniciar sesion aqui!!!" o "Registrar aqui!!!" esto hace que
  // se mueva de entre iniciar sesion o registrar usuario

  if PageControl1.ActivePageIndex = 0 then
  begin
    PageControl1.ActivePageIndex := 1;
  end
  else
  begin
    PageControl1.ActivePageIndex := 0;
  end;
end;

procedure TInicioSesion.btnSalirClick(Sender: TObject);
begin
 //La aplicacion ce cierra xd
 Application.Terminate;
end;

procedure TInicioSesion.chkSeePassClick(Sender: TObject);
begin
  //Si ver contrase�a es igual a verdadero entonces se podra ver de lo contrario se ocultara con
  //puntos negros xd

  if chkSeePass.Checked = True then
  begin
    edtPass.PasswordChar := #0;
    edtPass.Height := 30;
    imgPassOculto.Visible := false;
    imgPassSee.Left := imgPassOculto.Left;
    imgPassSee.Visible := true;
  end
  else
  begin
    edtPass.PasswordChar := '*';
    edtPass.Height := 30;
    imgPassSee.Visible := false;
    imgPassOculto.Visible := true;
  end;
end;

procedure TInicioSesion.edtPassChange(Sender: TObject);
begin
   if edtEmail.Text <> '' then
  begin
    if edtPass.Text <> '' then
    btnIniciarSesion.Enabled := True;
  end
  else
    btnIniciarSesion.Enabled := False;
end;

procedure TInicioSesion.edtPassKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then btnIniciarSesionClick(btnIniciarSesion)
end;

procedure TInicioSesion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TInicioSesion.FormCreate(Sender: TObject);
begin
    // Ejecuta el procedimiento actualiza
    Actualiza;
end;

procedure TInicioSesion.FormShow(Sender: TObject);
begin
    //Ejecuta el inicio de la pantalla
    SesionInicioShoww;
end;

procedure TInicioSesion.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    edtEmail.Height := 30;
    edtPass.Height := 30;
    InicioSesion.Caption := 'Grullon D. RentCar-Inicio de sesi�n';
  end;
end;

procedure TInicioSesion.qUsersAfterPost(DataSet: TDataSet);
begin
  edtEmail.Text := qUsersCORREO.AsString;
  edtPass.Text  := qUsersPASSWORD.AsString;

  case Application.MessageBox('Desea iniciar sesion con el nuevo usuario registrado?',
    'Usuario registrado con exito!!', MB_YESNO +
    MB_ICONQUESTION) of
    IDYES:
      begin
        btnIniciarSesionClick(btnIniciarSesion);
      end;
    IDNO:
      begin
        edtEmail.Text := '';
        edtPass.Text  := '';

        PageControl1.ActivePageIndex := 0;
      end;
  end;
end;
procedure TInicioSesion.RandomMize;
var
  i: Integer;
  codigoEmail : integer;
begin
  // Randomize initializes the built-in random number generator with a random value
  //(obtained from the system clock). The random number generator should be initialized by
  //making a call to Randomize, or by assigning a value to RandSeed.
  Randomize;

  codigoEmail := 0;

  //Asigna un valor random a la variable boddy entre 10000 a 1 y se repetira hasta que codigoemail sea mayor que 999
  while codigoEmail < 999 do
  begin
    for i := 1 to 1 do
    codigoEmail := ( Random( 10000 ) + 1 );
  end;

//  repeat
//    for i := 1 to 1 do
//    codigoEmail := ( Random( 10000 ) + 1 );
//  until(codigoEmail > 999);
    //codigo va a ser igual a boddy que tendra un numero random "x"
    codigo := IntToStr(codigoEmail);

    //Sera el cuerpo del mensaje o del correo en este caso
    Cuerpo := '<html>'+'<body><h2>Hola este es tu codigo para confirma tu correo</h2></body>'+'<p><b><h3>Codigo.: '+codigo+'</h3></b></p>'+'</html>';
end;

procedure TInicioSesion.SesionInicioShoww;
begin
 PageControl1.ActivePageIndex := 0;

  edtEmail.Height := 30;
  edtPass.Height := 30;

  if DM.Estado = 1 then
  begin
    statbar.Panels[0].Text := 'Estado.: Conectado!!!';
  end
  else
  begin
    statbar.Panels[0].Text := 'Estado.: Desconectado D:';
    edtEmail.Enabled := False;
    edtPass.Enabled := False;
    btnIniciarSesion.Enabled := False;
    btnRecuperaContra2.Enabled := False;
    chkSeePass.Enabled := False;
    chkRecordUser.Enabled := False;
  end;
//
  statbar.Panels[1].Text := 'Ver.:'+(DM.Version_Local);

  if DM.Recordar_Usuario = '1' then
  begin
    chkRecordUser.Checked := true;

    DM.XMLNLND.Active:=False;
    DM.XMLNLND.Active:=True;
    edtEmail.Text := dm.XMLNLND.ChildNodes.FindNode('body').ChildNodes.Nodes['email'].Text;
    DM.XMLNLND.Active:=False;
  end;

  if edtEmail.Text <> '' then
    edtPass.SetFocus
  else edtEmail.SetFocus;
end;

procedure TInicioSesion.imgPassOcultoClick(Sender: TObject);
begin
  if chkSeePass.Checked = true then chkSeePass.Checked := false
  else chkSeePass.Checked := true;
end;

procedure TInicioSesion.lblRecordarUsuarioClick(Sender: TObject);
begin
  if chkRecordUser.Checked = false then
  chkRecordUser.Checked := true
  else chkRecordUser.Checked := false;
end;

end.
