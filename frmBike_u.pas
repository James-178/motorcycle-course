unit frmBike_u;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Samples.Spin, Vcl.Mask, adodb, dateutils, Vcl.Imaging.pngimage, strutils,
  UITypes,clsBike_u, math, EASendMailObjLib_TLB;

type
  TfrmBike = class(TForm)
    pgcMain: TPageControl;
    tsLogin: TTabSheet;
    btnSignUp: TButton;
    btnStudentLogin: TButton;
    btnAdminLogin: TButton;
    tsSignup: TTabSheet;
    edtName: TEdit;
    edtSurname: TEdit;
    dtpDOB: TDateTimePicker;
    cmbAdvisorID: TComboBox;
    pnlSignupBackground: TPanel;
    lbl1: TLabel;
    lblName: TLabel;
    lblSurname: TLabel;
    lblDOB: TLabel;
    lblAdvisorid: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    lblUsername: TLabel;
    lblPassword: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btnCreateAccount: TButton;
    bmbHelpSignUp: TBitBtn;
    bmbResetSignUp: TBitBtn;
    imgUnsure: TImage;
    pnlLogin: TPanel;
    btnLoginStudent: TButton;
    tsBegin: TTabSheet;
    pnlBegin: TPanel;
    lbl4: TLabel;
    lbl6: TLabel;
    bmbYes2: TBitBtn;
    bmbNo2: TBitBtn;
    btnBegin: TButton;
    tsViewStudents: TTabSheet;
    dbOutput: TDBGrid;
    btnSortAge: TButton;
    btnAdvisorsStudents: TButton;
    btnAvgStudentMArk: TButton;
    tsAddDelQuestions: TTabSheet;
    btnSeachSurname: TButton;
    edtStuUser: TLabeledEdit;
    lblLogin: TLabel;
    edtStuPass: TLabeledEdit;
    edtAdvisorEmail: TLabeledEdit;
    edtAdvisorPassword: TLabeledEdit;
    lblNotSignedUp: TLabel;
    btnDelQuestion: TButton;
    sedQuestionNumber: TSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    redQuestion: TRichEdit;
    edtOption1: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtOption2: TEdit;
    edtOption3: TEdit;
    edtOption4: TEdit;
    rgbCorrectans: TRadioGroup;
    btnAddQuestion: TButton;
    btnViewQuestion: TButton;
    redViewQuestion: TRichEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    btnContact: TButton;
    imgBike: TImage;
    tsCourse_1: TTabSheet;
    Label26: TLabel;
    Label24: TLabel;
    Label22: TLabel;
    Sh6: TShape;
    Sh7: TShape;
    Label19: TLabel;
    sh1: TShape;
    sh2: TShape;
    sh4: TShape;
    Sh5: TShape;
    imgControls: TImage;
    Label20: TLabel;
    Label23: TLabel;
    shpControls: TShape;
    sh3: TShape;
    Label21: TLabel;
    Sh8: TShape;
    Label25: TLabel;
    Label18: TLabel;
    lblBasic: TLabel;
    redControls: TRichEdit;
    redBasicInfo: TRichEdit;
    pnladddelQuestions: TPanel;
    bmbHelpAddQuestions: TBitBtn;
    bmbResetAddQuestion: TBitBtn;
    bmbLogout1: TBitBtn;
    tsMiniGame: TTabSheet;
    lblMiniGame: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    cmbManufacturer: TComboBox;
    Label30: TLabel;
    cmbBikeColour: TComboBox;
    Label31: TLabel;
    chkRoadBikeYes: TCheckBox;
    chkRoadbikeNo: TCheckBox;
    Label32: TLabel;
    sedEngineSize: TSpinEdit;
    sedWeight: TSpinEdit;
    Label33: TLabel;
    redMiniGameResults: TRichEdit;
    tmr1: TTimer;
    bmbHelpControls: TBitBtn;
    bmbNextControls: TBitBtn;
    bmbBackControls: TBitBtn;
    tsCourse_2: TTabSheet;
    btnLoginAdmin: TButton;
    tsAdminNavigation: TTabSheet;
    lblWelcomeAdvisor: TLabel;
    pnlAdminNavigation: TPanel;
    lblWelcomeadvisor2: TLabel;
    btnViewStudents: TButton;
    btnAddDelQuestions: TButton;
    btnPlayMinigameAdvisor: TButton;
    btnLogoutNavigation: TButton;
    btnNavigationHelp: TButton;
    imgAdvisorNav: TImage;
    imgEasteregg: TImage;
    tsTest: TTabSheet;
    pnlTest1: TPanel;
    shpQuestion: TShape;
    pnlQuestion: TPanel;
    shpO1: TShape;
    sbtnOption1: TSpeedButton;
    shpO2: TShape;
    shpO3: TShape;
    shpO4: TShape;
    sbtnOption2: TSpeedButton;
    sbtnOption3: TSpeedButton;
    sbtnOption4: TSpeedButton;
    btnNext: TButton;
    bmbQuestionLogout: TBitBtn;
    bmbQuestionHelp: TBitBtn;
    bmbLogoutControls: TBitBtn;
    Label27: TLabel;
    shStep1: TShape;
    lblStep1_1: TLabel;
    pnlStep1: TPanel;
    shpstep2: TShape;
    lbl2_1: TLabel;
    lblStep1: TLabel;
    pnlStep2: TPanel;
    lblStep2: TLabel;
    Shape1: TShape;
    lblStep3_1: TLabel;
    pnlStep3: TPanel;
    lblStep3: TLabel;
    shStep4: TShape;
    lblstep4_1: TLabel;
    pnlStep4: TPanel;
    lblStep4: TLabel;
    bmbLogoutC2: TBitBtn;
    btnNextpage: TButton;
    btnPrevFirstRide: TButton;
    bmbHelpc1: TBitBtn;
    tsCourse_3: TTabSheet;
    lblArs: TLabel;
    shpSmartRider: TShape;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    imgResq: TImage;
    shpPlanYourRide: TShape;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    btnResq: TButton;
    bmbLogoutARS: TBitBtn;
    btnNextARS: TButton;
    btnPrevARS: TButton;
    btnARSHelp: TBitBtn;
    redMotorbikeSpecs: TRichEdit;
    btnViewBike: TButton;
    edtBikeName: TEdit;
    btnRace: TButton;
    bmbMiniGameHelp: TBitBtn;
    bmbLogoutMiniGame: TBitBtn;
    dtpManufacture: TDateTimePicker;
    Label45: TLabel;
    tmrRace: TTimer;
    rgpSortStudents: TRadioGroup;
    Label2: TLabel;
    lblSearchSurname: TLabel;
    edtSeachSurname: TEdit;
    btnAvgMarkAdv: TButton;
    btnQuestions: TButton;
    cmbSelAdvisor: TComboBox;
    Label3: TLabel;
    btnMoreThan10: TButton;
    bmbHelpView: TBitBtn;
    bmbLogoutview: TBitBtn;
    btnBackToNav: TButton;
    btnBackNav: TButton;
    tsEmail: TTabSheet;
    btnSendEmail: TButton;
    lblTo: TLabel;
    lblEm: TLabel;
    lblSubject: TLabel;
    edtSubject: TEdit;
    Label8: TLabel;
    redBody: TRichEdit;
    edtEmail: TEdit;
    bmbHelpEmail: TBitBtn;
    bmbLogoutemail: TBitBtn;
    btnBackCourse: TButton;
    tsRace: TTabSheet;
    imgRaceTrack: TImage;
    imgBike3: TImage;
    imgBike1: TImage;
    imgBike2: TImage;
    imgBike4: TImage;
    btnBackMiniGame: TButton;
    btnPlayMiniGame: TButton;
    btnBackCourseMiniGame: TButton;
    tsEnd: TTabSheet;
    lblFinished: TLabel;
    redFinalOutput: TRichEdit;
    bmbLoginHelp: TBitBtn;
    bmbHelpBegin: TBitBtn;
    bmbCLose: TBitBtn;
    bmbLogout: TBitBtn;
    Label1: TLabel;
    bmbLogoutBegin: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnSignUpClick(Sender: TObject);
    procedure btnStudentLoginClick(Sender: TObject);
    procedure btnLoginStudentClick(Sender: TObject);
    procedure lbl3Click(Sender: TObject);
    procedure btnCreateAccountClick(Sender: TObject);
    procedure bmbResetSignUpClick(Sender: TObject);
    procedure bmbHelpSignUpClick(Sender: TObject);
    procedure btnAdminLoginClick(Sender: TObject);
    procedure btnLoginAdminClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure imgEastereggClick(Sender: TObject);
    procedure btnViewStudentsClick(Sender: TObject);
    procedure btnAddDelQuestionsClick(Sender: TObject);
    procedure btnPlayMinigameAdvisorClick(Sender: TObject);
    procedure btnNavigationHelpClick(Sender: TObject);
    procedure btnLogoutNavigationClick(Sender: TObject);
    procedure bmbLogout1Click(Sender: TObject);
    procedure bmbLogoutARSClick(Sender: TObject);
    procedure bmbHelpAddQuestionsClick(Sender: TObject);
    procedure btnAddQuestionClick(Sender: TObject);
    procedure btnViewQuestionClick(Sender: TObject);
    procedure btnDelQuestionClick(Sender: TObject);
    procedure bmbResetAddQuestionClick(Sender: TObject);
    procedure bmbQuestionLogoutClick(Sender: TObject);
    procedure sbtnOption1Click(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure sbtnOption2Click(Sender: TObject);
    procedure sbtnOption3Click(Sender: TObject);
    procedure sbtnOption4Click(Sender: TObject);
    procedure btnBeginClick(Sender: TObject);
    procedure sh1MouseEnter(Sender: TObject);
    procedure sh2MouseEnter(Sender: TObject);
    procedure sh3MouseEnter(Sender: TObject);
    procedure sh4MouseEnter(Sender: TObject);
    procedure Sh5MouseEnter(Sender: TObject);
    procedure Sh6MouseEnter(Sender: TObject);
    procedure Sh8MouseEnter(Sender: TObject);
    procedure Sh7MouseEnter(Sender: TObject);
    procedure bmbHelpControlsClick(Sender: TObject);
    procedure bmbLogoutControlsClick(Sender: TObject);
    procedure bmbBackControlsClick(Sender: TObject);
    procedure bmbNextControlsClick(Sender: TObject);
    procedure bmbLogoutC2Click(Sender: TObject);
    procedure btnPrevFirstRideClick(Sender: TObject);
    procedure bmbHelpc1Click(Sender: TObject);
    procedure btnNextpageClick(Sender: TObject);
    procedure btnResqClick(Sender: TObject);
    procedure btnNextARSClick(Sender: TObject);
    procedure btnPrevARSClick(Sender: TObject);
    procedure btnViewBikeClick(Sender: TObject);
    procedure bmbLogoutMiniGameClick(Sender: TObject);
    procedure chkRoadbikeNoClick(Sender: TObject);
    procedure chkRoadBikeYesClick(Sender: TObject);
    procedure btnRaceClick(Sender: TObject);
    procedure tmrRaceTimer(Sender: TObject);
    procedure btnSortAgeClick(Sender: TObject);
    procedure btnSeachSurnameClick(Sender: TObject);
    procedure btnAvgStudentMArkClick(Sender: TObject);
    procedure btnAvgMarkAdvClick(Sender: TObject);
    procedure btnQuestionsClick(Sender: TObject);
    procedure btnAdvisorsStudentsClick(Sender: TObject);
    procedure btnMoreThan10Click(Sender: TObject);
    procedure bmbLogoutviewClick(Sender: TObject);
    procedure bmbHelpViewClick(Sender: TObject);
    procedure btnBackToNavClick(Sender: TObject);
    procedure btnBackNavClick(Sender: TObject);
    procedure btnSendEmailClick(Sender: TObject);
    procedure bmbHelpEmailClick(Sender: TObject);
    procedure bmbLogoutemailClick(Sender: TObject);
    procedure btnContactClick(Sender: TObject);
    procedure btnBackCourseClick(Sender: TObject);
    procedure btnBackMiniGameClick(Sender: TObject);
    procedure bmbMiniGameHelpClick(Sender: TObject);
    procedure btnPlayMiniGameClick(Sender: TObject);
    procedure btnBackCourseMiniGameClick(Sender: TObject);
    procedure bmbYes2Click(Sender: TObject);
    procedure bmbNo2Click(Sender: TObject);
    procedure bmbLoginHelpClick(Sender: TObject);
    procedure bmbHelpBeginClick(Sender: TObject);
    procedure bmbQuestionHelpClick(Sender: TObject);
    procedure btnARSHelpClick(Sender: TObject);
    procedure bmbLogoutBeginClick(Sender: TObject);
  private
  //global variables
    icountusers, ieecount,ircount, iAdvisorID, iQRight, iQWrong, iAnswered, iQuestionNum : integer;
  //objects
    objMotorBike : TMotrobike;
    objRandom1 : TMotrobike;
    objRandom2 : TMotrobike;
    objRandom3 : TMotrobike;
  //arrays
    arrNum : array[1..50] of Integer;
    arrUsername, arrPassword : array[1..50] of String;
    arrPos : array[1..4,1..2] of Integer;
  //procedures
    procedure Connect;
    procedure Logout;
    procedure StartTest;
    procedure Endtest;
    procedure DisplayControls(pControlNum : integer);
    procedure MiniGameInit;
    procedure FitGrid(Grid: TDBGrid);
  public
    { Public declarations }
  const
  //email connections
  ConnectNormal = 0;
  ConnectSSLAuto = 1;
  ConnectSTARTTLS = 2;
  ConnectDirectSSL = 3;
  ConnectTryTLS = 4;

  //constant arrays
   arrCompanies : array[1..5] of string = ('Honda','BMW','Kawasaki','Harley Davidson','Other');
   arrColours : array[1..5] of string = ('Red','Black','Blue','Brown','Yellow');
   arrEngineSize : Array[1..10] of integer = (50,125,250,375,500,650,825,1000,1100,1200);
   arrWeight : Array[1..5] of integer = (150, 200 ,250, 315, 400);
   arrRoad : Array[1..2] of boolean = (True, False);
   arrManufactured : Array[1..6] of String = ('1998/01/02','2004/01/02','2010/01/02','2016/01/02','2018/01/02','2021/01/02');

end;

var
  frmBike: TfrmBike;

  tblAdvisor : TADOTable;
  tblStudents : TADOTable;
  tblQuestions : TADOTable;
  // Declare a DB query component for SQL
  qrySQL : TADOQuery;
  //Declare datasources, One for each table in your DB and one for the ADOquery.
  dsrAdvisor, dsrStudents, dsrQuestions, dsrSQL : TDataSource;
  //Declare an adoconnection,  only one.
  dbConnect : TADOConnection;
implementation

{$R *.dfm}


procedure TfrmBike.bmbLogoutC2Click(Sender: TObject);
begin
  Logout();
end;

procedure TfrmBike.bmbLogoutARSClick(Sender: TObject);
begin
  logout();
end;

procedure TfrmBike.bmbLogoutBeginClick(Sender: TObject);
begin
  Logout();
end;

procedure TfrmBike.bmbLogoutviewClick(Sender: TObject);
begin
  Logout();
end;

procedure TfrmBike.bmbMiniGameHelpClick(Sender: TObject);
begin
  Showmessage('Welcome to the Motorbike Race Mini-Game'+#10+'Please ensure to select the manufacturer, colour, engine size and weight of your bike are selected.'+#10+'Please enter a name for your motorbike and select when it was manufactured.');
  Showmessage('Once you have selected all the specifications of your bike, press "View Bike"'+#10+'After you have viewed your bike, press "Race Bike" and watch as your custom bike races against others!');
end;

procedure TfrmBike.bmbBackControlsClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsBegin;
end;

procedure TfrmBike.bmbHelpAddQuestionsClick(Sender: TObject);
begin
  ShowMessage('To add a question to the database, enter the question, the 4 possible answers for the question and select which answer is correct. Click "Add Question" to add the question to the database.');
  ShowMessage('To delete a question, select which question number you wish to delete from the database. To view the question before deleting it click "View Question". Click "Delete Question" to remove the question from the database.')
end;

procedure TfrmBike.bmbHelpBeginClick(Sender: TObject);
begin
  ShowMessage('Select if you own a bike or not. Press Begin Course to start the course.'+#10+'Click Contact your Advisor to send an email to your advisor.');
end;

procedure TfrmBike.bmbHelpc1Click(Sender: TObject);
begin
  Showmessage('Study!');
end;

procedure TfrmBike.bmbHelpControlsClick(Sender: TObject);
begin
  ShowMessage('Hover over the numbers with your mouse to view which each control does. Click "Next Page" when you have studied what each control does.')
end;

procedure TfrmBike.bmbHelpEmailClick(Sender: TObject);
begin
  ShowMessage('Enter your email to test, enter a subject and the email you want to send. Press Send Email');
end;

procedure TfrmBike.bmbHelpSignUpClick(Sender: TObject);
begin
  ShowMessage('Enter all the your information to sign up for the Ultimate Motorbike Course!'+#10+'Once you have entered your information press "Sign Up"'+#10+'If you already have an account then login!'+#10+'If you are still unsure please call our 24/7 helpline on 10111!');
end;

procedure TfrmBike.bmbHelpViewClick(Sender: TObject);
begin
  ShowMessage('You can view students and question information here.'+#10+'if neccessary, select or enter the relevant information first.'+#10+'Click the various buttons to view information');
end;

procedure TfrmBike.bmbLoginHelpClick(Sender: TObject);
begin
  ShowMessage('Click "Student Login" to login as a student.'+#10+' Click "Advisor Login" to login as a Advisor.');
  ShowMessage('Click "Sign Up" to create an accout.')
end;

procedure TfrmBike.bmbLogout1Click(Sender: TObject);
begin
  logout;
end;

procedure TfrmBike.bmbLogoutControlsClick(Sender: TObject);
begin
  logout();
end;

procedure TfrmBike.bmbLogoutemailClick(Sender: TObject);
begin
  logout();
end;

procedure TfrmBike.bmbLogoutMiniGameClick(Sender: TObject);
begin
  logout();
end;

procedure TfrmBike.bmbNextControlsClick(Sender: TObject);//initialises tsCourse_2
begin
  pgcMain.ActivePage := tsCourse_2;
  lblStep1.Caption := 'Mount the bike:'+#10+'Stand next to your bike and apply the front break.'+#10+'Swing your leg over the motorcycle and gain your balance.'+#10+'Kick up the stand.';
  lblStep2.Caption := 'Start the bike:'+#10+'Turn the key to the on position.'+#10+'Ensure the motorbike is in neutral-Neutral is between bear 1 and 2. '+#10+'Start the engine.';
  lblStep3.Caption := 'Get used to the clutch:'+#10+'Pull the clutch lever in.'+#10+'Sr lever down into first.'+#10+'Gently apply the throttle.'+#10+'At the same time slowly release the clutch lever.'+#10+'The bike should start moving.';
  lblStep4.Caption := 'Changing gears and breaking:'+#10+'To change gears, release the accelerator.'  +#10+'Pull in the clutch lever and shift the gear lever up or down.'+#10+'To slow down or stop, release the accelerator'+#10+'Pull in the clutch lever and apply the front and rear break gradually.' ;
end;

procedure TfrmBike.bmbNo2Click(Sender: TObject);//update if they dont own a bike
begin
  tblStudents.Edit;
  tblStudents['OwnBike'] := False;
  tblStudents.Post;
  ShowMessage('Your info has been updated');
end;

procedure TfrmBike.bmbQuestionHelpClick(Sender: TObject);
begin
  ShowMessage('Read the question at the top of the form.'+#10+'Select the correct answer.'+#10+'Click Next to go to the next question.');
end;

procedure TfrmBike.bmbQuestionLogoutClick(Sender: TObject);
begin
  logout();
end;

procedure TfrmBike.bmbResetAddQuestionClick(Sender: TObject);//reset question
begin
  redQuestion.Lines.Clear;
  edtOption1.Text := '';
  edtOption2.Text := '';
  edtOption3.Text := '';
  edtOption4.Text := '';
  redViewQuestion.Lines.Clear;
  sedQuestionNumber.Value := 0;
end;

procedure TfrmBike.bmbResetSignUpClick(Sender: TObject);//reset sign up
begin
  edtName.Text := '';
  edtSurname.Text := '';
  cmbAdvisorID.ItemIndex := 0;
  edtUsername.Text := '';
  edtPassword.Text := '';
end;

procedure TfrmBike.bmbYes2Click(Sender: TObject);//update record if they own a bike
begin
  tblStudents.Edit;
  tblStudents['OwnBike'] := true;
  tblStudents.Post;
  ShowMessage('Awesome, your info has been updated.');

end;

procedure TfrmBike.btnAddDelQuestionsClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsAddDelQuestions;
  edtOption1.SetFocus;
end;

procedure TfrmBike.btnAddQuestionClick(Sender: TObject);//add question
var
  sQuestion, sOption1, sOption2, sOption3, sOption4 : string;
  iCorrect : integer;
begin
  if redQuestion.text = '' then
    begin
      ShowMessage('Please enter a question to add!');
      exit
    end;
  if (edtOption1.Text = '') or (edtOption2.Text = '') or (edtOption3.Text = '') or (edtOption4.Text = '') then
    begin
      ShowMessage('Please enter all possible answers!');
      exit
    end;
  if rgbCorrectans.ItemIndex < 0 then
    begin
      ShowMessage('Please select which answer is correct!');
      exit
    end;
//add question
  sQuestion := StringReplace(redQuestion.Text, #13#10, #32, [rfReplaceAll]); //making text of rich edit 1 line
  sOption1 := edtOption1.Text;
  sOption2 := edtOption2.Text;
  sOption3 := edtOption3.Text;
  sOption4 := edtOption4.Text;
  iCorrect := rgbCorrectAns.ItemIndex + 1;

  qrySQL.Close;   //inserting question into db
  qrySQL.SQL.Text := 'INSERT INTO tblQuestions(Question,Answer1,Answer2, Answer3,Answer4,Correctanswer,AdvisorID) VALUES("'+sQuestion+'","'+sOption1+'","'+sOption2+'","'+sOption3+'","'+sOption4+'",'+inttostr(iCorrect)+','+inttostr(iAdvisorID)+')';
  qrySQL.ExecSQL;

  ShowMessage('Question added!');
  redQuestion.Lines.Clear;
  edtOption1.Text := '';
  edtOption2.Text := '';
  edtOption3.Text := '';
  edtOption4.Text := '';
  rgbCorrectAns.ItemIndex := -1;
end;

procedure TfrmBike.btnAdminLoginClick(Sender: TObject);//if admin login
begin
  edtStuUser.Visible := false;
  edtStuPass.Visible := false;
  btnLoginStudent.Visible := false;
  edtAdvisorEmail.Visible := true;
  edtAdvisorPassword.Visible := true;
  btnLoginAdmin.Visible := true;
end;

procedure TfrmBike.btnAdvisorsStudentsClick(Sender: TObject);//shows all students of a specific advisor
var
  sID : string;
begin
  if cmbSelAdvisor.ItemIndex < 0 then
  begin
    ShowMessage('Please select and Advisor ID from the options below!');
    exit
  end;

  sID := cmbSelAdvisor.Items[cmbSelAdvisor.ItemIndex];

  qrySQL.Close;
  qrySQL.SQL.Text := 'SELECT Name, Surname, AdvisorID FROM tblStudents WHERE AdvisorID = '+sID;
  qrySQL.Open;
  FitGrid(dbOutput);
end;

procedure TfrmBike.btnARSHelpClick(Sender: TObject);
begin
  ShowMessage('Study the information before starting the test. Press Start Test to start the test');
end;

procedure TfrmBike.btnAvgMarkAdvClick(Sender: TObject);//displays avg mark of students per advisor
begin
  qrySQL.Close;
  qrySQL.SQL.Text := 'SELECT tblAdvisor.Name, tblAdvisor.Surname ,Round(AVG(PassMark),2) as [Average Mark] FROM tblStudents,tblAdvisor WHERE tblAdvisor.AdvisorID = tblStudents.AdvisorID and PassMark is not Null GROUP By tblAdvisor.name, tblAdvisor.Surname';
  qrySQL.Open;
  FitGrid(dbOutput);
end;

procedure TfrmBike.btnAvgStudentMArkClick(Sender: TObject);//displays the average mark of all students
begin
  qrySQL.Close;
  qrySQL.SQL.Text := 'SELECT Round(AVG(PassMark),2) as [Average Mark] FROM tblStudents WHERE PassMark is not Null';
  qrySQL.Open;
end;

procedure TfrmBike.btnBackCourseClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsBegin;
end;

procedure TfrmBike.btnBackMiniGameClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsAdminNavigation;
end;

procedure TfrmBike.btnBackNavClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsAdminNavigation;
end;

procedure TfrmBike.btnBackToNavClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsAdminNavigation;
  cmbSelAdvisor.Items.Clear;
  cmbSelAdvisor.Text := 'Select Advisor';
end;

procedure TfrmBike.btnBeginClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsCourse_1;
  bmbNextControls.SetFocus;
end;

procedure TfrmBike.btnContactClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsEmail;
end;

procedure TfrmBike.btnCreateAccountClick(Sender: TObject); //sign a student up, adds their details to the textfiles and database
var
  sname, sSur, susername, spass : string;
  dDOB : tdate;
  iadvisorID : integer;
  tfile : textfile;
begin
  if (edtName.Text = '') or (edtSurname.Text = '') then
  begin
    ShowMessage('Please enter your name and surname');
    exit;
  end;
  if (edtUsername.Text = '') or (edtPassword.Text = '') then
  begin
    ShowMessage('Please enter your username and password');
    exit
  end;
  if cmbAdvisorID.ItemIndex < 0 then
  Begin
    ShowMessage('Please select an advisor');
    exit
  End;

  sname := edtName.Text;
  sSur := edtSurname.Text;
  susername := edtUsername.Text;
  spass := edtPassword.Text;
  dDOB := dtpDOB.Date;
  iadvisorID := strtoint(cmbAdvisorID.Items[cmbAdvisorID.ItemIndex]);

  qrySQL.Close;              //insert student into database
  qrysql.SQL.Text := 'Insert Into tblStudents(Name,Surname,RegDate,AdvisorID,DOB) Values ("'+sname+'","'+ssur+'",#'+datetostr(Date)+'#,'+inttostr(iadvisorID)+',#'+datetostr(dDOB) +'#)';
  qrySql.ExecSQL;

  qrySQL.Close;
  qrysql.SQL.Text := 'SELECT * FROM tblStudents WHERE [Name] = "' + sName + '" and Surname="'+sSur+'"';
  qrySQl.Open;

  AssignFile(tfile, 'login.txt');//add to tfile
  Append(tfile);
  Writeln(tfile,qrysql['StudentID'],'#',susername,'#',spass);
  closefile(tfile);

  ShowMessage('You are now signed up please login to continue!');
  pgcMain.ActivePage := tsLogin;
end;

procedure TfrmBike.btnDelQuestionClick(Sender: TObject);//delete question
begin
  if sedQuestionNumber.Value < 0 then
  begin
    ShowMessage('Please enter a valid question number.');
    exit
  end;
  //Delete Question
  qrySQL.Close;
  qrySql.SQL.Text := 'SELECT questionnumber FROM tblQuestions WHERE questionnumber = '+inttostr(sedQuestionNumber.value);
  qrySQL.Open;

  if qrySQL['questionnumber'] = null then
  begin
    ShowMessage('Please select a valid question number.');
    exit
  end;

  if MessageDlg('Are you sure you want to delete question '+inttostr(sedQuestionNumber.Value)+'?', mtCustom, [mbYes, mbNo], 0) = mrYes then
    begin
      qrySQL.Close;
      qrySQL.SQL.Text := 'DELETE FROM tblQuestions WHERE QuestionNumber = '+inttostr(sedQuestionNumber.value);
      qrySQL.ExecSQL;
      ShowMessage('Question deleted!');
    end;
end;

procedure TfrmBike.btnLoginAdminClick(Sender: TObject);//Tests if the advisor's email and password are valid and logs them in
var
  sEmail, sPassword : string;
  bfind : boolean;
begin
  sEmail := edtAdvisorEmail.Text;
  sPassword := edtAdvisorPassword.text;

  qrySQL.Close;
  qrySql.SQL.Text := 'SELECT AdvisorID, Email, Password, Name, Surname FROM tblAdvisor';
  qrySQL.Open;

  bfind := false;
  qrySQL.First;
  while (not(qrySQl.Eof)) and (bfind = false) do
  begin
    if (semail = qrySQL['Email']) and (sPassword = qrySQL['Password']) then
      begin
        pgcMain.ActivePage := tsAdminNavigation;
        iAdvisorID := qrySQL['AdvisorID'];
        bfind := true;
      end
    else
    qrySQL.Next;
  end;
  if bfind = false then
    ShowMessage('Please enter a valid E-mail and Password!')
  else
    begin
      lblWelcomeAdvisor.Caption := 'Welcome advisor '+ qrySQL['Name'] +' '+qrySQL['Surname']+'!';
    end;
end;

procedure TfrmBike.btnLoginStudentClick(Sender: TObject);//tests if the username and password is valid and logs the student it
var
  sUsername, sPassword : string;
  i : integer;
  bCheck : boolean;
begin
  sUsername := edtStuUser.Text;
  sPassword := edtStuPass.Text;
  bcheck := false;
  for i := 1 to icountusers do
    if (sUsername = arrUsername[i]) and (sPassword = arrPassword[i]) then
      begin
        pgcMain.ActivePage := tsBegin;
        tblStudents.RecNo := arrNum[i];
        lbl4.Caption := 'Welcome to the Ultimate Motorbike Course, ' + tblStudents['name']+' ' + tblStudents['surname'];
        bcheck := true;
        break;
      end;
  if bCheck = false then
    ShowMessage('Please enter a valid username and password');

end;

procedure TfrmBike.btnLogoutNavigationClick(Sender: TObject);
begin
  logout
end;

procedure TfrmBike.btnMoreThan10Click(Sender: TObject);  //dispalys all questions that have been answered correctly more than 10 times
begin
  qrySQL.Close;
  qrySQL.SQL.Text := 'SELECT QuestionNumber, TimesCorrect FROM tblQuestions WHERE timescorrect >= 10';
  qrySQL.Open;
  FitGrid(dbOutput);
end;

procedure TfrmBike.btnNavigationHelpClick(Sender: TObject);
begin
  ShowMessage('Select where you would like to proceed to, or logout.')
end;

procedure TfrmBike.btnNextARSClick(Sender: TObject);
begin
  Starttest();
end;

procedure TfrmBike.btnNextClick(Sender: TObject);//loads the next question to be answered in the test
begin
if iQuestionNum = iAnswered then
  begin
    Endtest;
    exit
  end;

  qrySql.Close;
  qrySQL.SQL.Text := 'SELECT * FROM tblQuestions WHERE questionnumber = '+inttostr(iAnswered);
  qrySql.open;

  pnlQuestion.Caption := qrySQL['Question'];
  sbtnOption1.Caption := qrySQL['Answer1'];
  sbtnOption2.Caption := qrySQL['Answer2'];
  sbtnOption3.Caption := qrySQL['Answer3'];
  sbtnOption4.Caption := qrySQL['Answer4'];

  shpO1.Brush.Color := clBlack;
  shpO2.Brush.Color := clBlack;
  shpO3.Brush.Color := clBlack;
  shpO4.Brush.Color := clBlack;

  sbtnOption1.Enabled := true;
  sbtnOption2.Enabled := true;
  sbtnOption3.Enabled := true;
  sbtnOption4.Enabled := true;
  btnNext.Enabled := false;
end;

procedure TfrmBike.btnNextpageClick(Sender: TObject);//kinda useless since i changed my theme
begin
  pgcMain.ActivePage := tsCourse_3;
  shpSmartRider.brush.Color := $008CFF;
  shpPlanYourRide.Brush.Color := $2D52A0;
end;

procedure TfrmBike.btnPlayMinigameAdvisorClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsMiniGame;
  btnBackMiniGame.Visible := true;
  MiniGameInit();
end;

procedure TfrmBike.btnQuestionsClick(Sender: TObject);//displays all questions
begin
  qrySQL.Close;
  qrySQL.SQL.Text := 'SELECT QuestionNumber ,Question, TimesAnswered, TimesCorrect FROM tblQuestions';
  qrySQL.Open;
  FitGrid(dbOutput);
end;

procedure TfrmBike.btnSeachSurnameClick(Sender: TObject);//searches for a student based on surname
var
  sSearchSur : String;
begin
  if edtSeachSurname.Text = '' then
  begin
    Showmessage('Please enter the student surname you are looking for below!');
    exit
  end;
  sSearchSur := edtSeachSurname.Text;

  qrySQL.Close;
  qrySQL.SQL.Text := 'SELECT * FROM tblStudents WHERE surname = "'+sSearchSur+'"';
  qrySQL.Open;
  FitGrid(dbOutput);
end;

procedure TfrmBike.btnSendEmailClick(Sender: TObject);
//Send email, i found the code on google but i understand it
var
//you may need to run easendemail.exe, and install it.
//Then go to C:\Program Files\EASendMail\Include\delphi or C:\Program Files (x86)\EASendMail\Include\delphi folder, find EASendMailObjLib_TLB.pas, and then copy this file to your project folder.
  oSmtp : TMail;
  tfPassword : TextFile;
  sline, sSubject, sBody, sEmail : string;
begin
  sSubject := edtSubject.Text;
  sBody := redBody.Lines.Text;
  sEmail := edtEmail.Text;

  oSmtp := TMail.Create(Application);
  oSmtp.LicenseCode := 'TryIt';

  oSmtp.FromAddr := 'jamesdelphibot@gmail.com';
  oSmtp.AddRecipientEx(sEmail, 0);

  oSmtp.Subject := sSubject;
  oSmtp.BodyText := sBody;

  oSmtp.ServerAddr := 'smtp.gmail.com';
  oSmtp.ServerPort := 465;

  oSmtp.ConnectType := ConnectSSLAuto;
  oSmtp.UserName := 'jamesdelphibot@gmail.com';

  assignfile(tfPassword,'password.txt');
  Reset(tfPassword);
  readln(tfPassword,sline);
  oSmtp.Password := sline;

  ShowMessage('start to send email ...');
  if oSmtp.SendMail() = 0 then
    ShowMessage('email was sent successfully!')
  else
    ShowMessage('failed to send email with the following error: '
    + oSmtp.GetLastErrDescription());

end;

procedure TfrmBike.btnSignUpClick(Sender: TObject);//initialises cmbAdvisorID
begin
  pgcMain.ActivePage := tsSignup;

  qrySQL.Close;
  qrysql.SQL.Text := 'SELECT Distinct AdvisorID FROM tblAdvisor';
  qrySql.Open;
  qrySQL.First;
  while not qrySQL.EOF do
  begin
    cmbAdvisorID.Items.Add(qrysql['AdvisorID']);
    qrysql.Next;
  end;
  cmbAdvisorID.ItemIndex := 0;
  edtName.SetFocus;
end;

procedure TfrmBike.btnSortAgeClick(Sender: TObject);//sorts and displays students by age
begin
  if rgpSortStudents.ItemIndex < 0 then
  begin
    ShowMessage('Please select which order to view the students in below.');
    exit
  end;
  if rgpSortStudents.ItemIndex = 1 then
  begin
    qrySQL.Close;
    qrySQL.SQL.Text := 'SELECT * FROM tblStudents ORDER BY DOB ';
    qrySQL.Open;
    FitGrid(dbOutput);
  end
  else begin
    qrySQL.Close;
    qrySQL.SQL.Text := 'SELECT * FROM tblStudents ORDER BY DOB DESC';
    qrySQL.Open;
    FitGrid(dbOutput);
  end;
end;

procedure TfrmBike.btnStudentLoginClick(Sender: TObject);//if student login
begin
  edtStuUser.Visible := true;
  edtStuPass.Visible := true;
  btnLoginStudent.Visible := true;
  edtAdvisorEmail.Visible := false;
  edtAdvisorPassword.Visible := False;
  btnLoginAdmin.Visible := false;
end;



procedure TfrmBike.btnViewBikeClick(Sender: TObject);//creates object and displays it
var
  sManufacturer, sName, sColour : String;
  iWeight, iEngineSize : integer;
  bRoad : boolean;
  dManufactured : TDate;
begin
  if (edtBikeName.Text = '') or (cmbManufacturer.ItemIndex < 0) or (cmbBikeColour.ItemIndex < 0) or (sedWeight.Value < 50) or (sedEngineSize.Value < 50) then
  begin
    ShowMessage('Please enter all values correctly:'+#10+'Please ensure you have selected a manufacturer and colour,'+#10+'that you have entered a name and'+#10+'ensure you have selected a weight and engine size of for your motorbike');
    exit
  end;
  if (chkRoadBikeYes.Checked = false) and (chkRoadbikeNo.Checked = false) then
  begin
    ShowMessage('Please select weather your bike is a raod bike or not.');
    exit
  end;
  if sedEngineSize.Value > 2000 then
  begin
    ShowMessage('Please select an engine size under 2000');
    exit
  end;
  if sedWeight.Value > 1000 then
  begin
    ShowMessage('Please select an engine size under 1000');
    exit
  end;

  sManufacturer := cmbManufacturer.Items[cmbManufacturer.ItemIndex];
  sName := edtBikeName.Text;
  sColour := cmbBikeColour.Items[cmbBikeColour.ItemIndex];
  iWeight := sedWeight.Value;
  iEngineSize := sedEngineSize.Value;
  dManufactured := dtpManufacture.Date;
  if (chkRoadBikeYes.Checked = false) then
    bRoad := false
  else
    broad := true;

  objMotorBike := TMotrobike.Create(sManufacturer,sname,scolour,broad,iEngineSize,iWeight,dManufactured);
  redMotorbikeSpecs.Lines.Clear;
  redMotorbikeSpecs.Lines.Add(objMotorBike.ToString);
  btnRace.Enabled := true;
end;

procedure TfrmBike.btnViewQuestionClick(Sender: TObject);//View question before deleting
var
  iQuestionNum : integer;
begin
  redViewQuestion.Lines.Clear;
  if sedQuestionNumber.Value < 1 then
  begin
    ShowMessage('Please enter a valid question number');
    exit
  end;

  //View question

  iQuestionNum := sedQuestionNumber.Value;
  qrySQL.Close;
  qrySQL.SQL.Text := 'SELECT QuestionNumber, Question FROM tblQuestions WHERE QuestionNumber = '+inttostr(iQuestionNum);
  qrySQL.Open;

  if qrySQL['questionnumber'] = null then
    begin
      ShowMessage('Please select a valid question number.');
      exit
    end;

  redViewQuestion.Lines.Add(qrySQL['Question']);

end;

procedure TfrmBike.btnViewStudentsClick(Sender: TObject);//initialising tsViewStudents
begin
  btnSeachSurname.Caption := 'Search for Student'+#10+'by Surname';
  btnAvgMarkAdv.Caption := 'Average Mark per Advisor';
  btnMoreThan10.Caption := 'Correct more '+#10+'than Ten Times';

  qrySQL.Close;
  qrySQl.SQL.Text := 'SELECT * FROM tblAdvisor';
  qrysql.Open;

  qrySQL.First;
  while not(qrySQL.Eof) do
  begin
    cmbSelAdvisor.Items.Add(qrySQL['AdvisorID']);
    qrySQL.Next;
  end;

  //Clears dbGrid
  qrySQL.Close;
  qrySQl.SQL.Text := 'SELECT * FROM tblAdvisor WHERE 1=0';
  qrysql.Open;

  pgcMain.ActivePage := tsViewStudents;
  btnSortAge.SetFocus;
end;

procedure TfrmBike.btnPlayMiniGameClick(Sender: TObject);//initialise miniga,e
begin
  pgcMain.ActivePage := tsMiniGame;
  btnBackCourseMiniGame.Visible := true;
  MiniGameInit();
end;

procedure TfrmBike.btnBackCourseMiniGameClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsCourse_1;
end;

procedure TfrmBike.Button3Click(Sender: TObject);
begin
  starttest;
end;

procedure TfrmBike.btnPrevFirstRideClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsCourse_1;
end;

procedure TfrmBike.btnRaceClick(Sender: TObject);//generates random Tmotorbikes and races them, using probability based to speed of bike
var
  iSpeed1, iSpeed2, iSpeed3, ispeed4, irandomrange,iProb1, iProb2, iProb3, iProb4, ihold : integer;
  i, j, k: Integer;
  bSwap : boolean;
  m: Integer;
  n: Integer;
begin
  {generateBike(objRandom1);
  generateBike(objRandom2);
  generateBike(objRandom3);}   //this just gives me access violations :/
  objRandom1 := TMotrobike.Create(arrCompanies[RandomRange(1,6)],'Random',arrColours[RandomRange(1,6)],arrroad[RandomRange(1,3)],arrEngineSize[randomrange(1,11)],arrWeight[randomrange(1,6)],strtodate(arrManufactured[RandomRange(1,7)]));
  objRandom2 := TMotrobike.Create(arrCompanies[RandomRange(1,6)],'Random',arrColours[RandomRange(1,6)],arrroad[RandomRange(1,3)],arrEngineSize[randomrange(1,11)],arrWeight[randomrange(1,6)],strtodate(arrManufactured[RandomRange(1,7)]));
  objRandom3 := TMotrobike.Create(arrCompanies[RandomRange(1,6)],'Random',arrColours[RandomRange(1,6)],arrroad[RandomRange(1,3)],arrEngineSize[randomrange(1,11)],arrWeight[randomrange(1,6)],strtodate(arrManufactured[RandomRange(1,7)]));

  iSpeed1 := round(objMotorBike.getSpeed);
  iSpeed2 := round(objRandom1.getSpeed);
  iSpeed3 := round(objRandom2.getSpeed);
  iSpeed4 := round(objRandom3.getSpeed);

  case ispeed1 of       //i wonder if there is a more efficient way of doing this, but it doesnt matter because its extra
    50..99 : iProb1 := 1;
    100..149 : iProb1 := 2;
    150..200 : iProb1 := 3;
    else iProb1 := 4;
  end;

  case ispeed2 of
    50..99 : iProb2 := 1;
    100..149 : iProb2 := 2;
    150..200 : iProb2 := 3;
    else iProb2 := 4;
  end;

  case ispeed3 of
    50..99 : iProb3 := 1;
    100..149 : iProb3 := 2;
    150..200 : iProb3 := 3;
    else iProb3 := 4;
  end;

  case ispeed4 of
    50..99 : iProb4 := 1;
    100..149 : iProb4 := 2;
    150..200 : iProb4 := 3;
    else iProb4 := 4;
  end;

  for j := 1 to 4 do
    arrPos[j,1] := 0;
  for i := 1 to 100 do
  begin
    irandomrange := RandomRange(1,6);
    if iprob1 <= irandomrange then
      inc(arrpos[1,2]);
    if iProb2 <= irandomrange then
      inc(arrPos[2,2]);
    if iProb3 <= irandomrange then
      inc(arrPos[3,2]);
    if iProb4 <= irandomrange then
      inc(arrPos[4,2]);
  end;

  for i := 1 to 4 do
    arrpos[i,1] := i;

  for m := 1 to 3 do
  begin
  if arrpos[1,2] < arrpos[2,2] then
    begin
      ihold := arrpos[1,1];
      arrPos[1,1] := arrPos[2,1];
      arrPos[2,1] := ihold;
      iHold := arrPos[1,2];
      arrPos[1,2] := arrPos[2,2];
      arrPos[2,2] := ihold;
    end;
  if arrpos[2,2] < arrpos[3,2] then
    begin
       ihold := arrpos[2,1];
      arrPos[2,1] := arrPos[3,1];
      arrPos[3,1] := ihold;
      iHold := arrPos[2,2];
      arrPos[2,2] := arrPos[3,2];
      arrPos[3,2] := ihold;
    end;
  if arrpos[3,2] < arrpos[4,2] then
    begin
      ihold := arrpos[3,1];
      arrPos[3,1] := arrPos[4,1];
      arrPos[4,1] := ihold;
      iHold := arrPos[3,2];
      arrPos[3,2] := arrPos[4,2];
      arrPos[4,2] := ihold;
    end;
  end;

  iRcount := 0;                  //start race animation
  BorderStyle := bsNone;
  WindowState := wsMaximized;
  pgcMain.Width := frmBike.Width;
  pgcMain.Height := frmBike.Height;
  imgRaceTrack.Width := frmBike.Width;
  imgRaceTrack.Height := frmBike.Height;
  pgcMain.ActivePage := tsRace;
  tmrRace.Enabled := true;

  redMiniGameResults.Lines.clear;
  redMiniGameResults.Lines.Add('RESULTS'+#10+'=================================');
  for n := 1 to 4 do
  if arrPos[n,1] = 1 then
    redMiniGameResults.Lines.Add('Your motorbike placed: '+inttostr(n));
  redMiniGameResults.Lines.Add('Your motorbike had a top speed of: '+inttostr(ispeed1)+'km/h');
  redMiniGameResults.Lines.Add('The other motorbikes had top speeds of: ' +inttostr(ispeed2)+'km/h, '+inttostr(ispeed3)+'km/h, and '+inttostr(ispeed4)+'km/h');
end;

procedure TfrmBike.btnPrevARSClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsCourse_2;
end;

procedure TfrmBike.chkRoadbikeNoClick(Sender: TObject);
begin
  if chkRoadBikeYes.Checked then
  begin
    chkRoadBikeYes.Checked := false;
  end;
end;

procedure TfrmBike.chkRoadBikeYesClick(Sender: TObject);
begin
  if chkRoadBikeNo.Checked then
  begin
    chkRoadBikeNo.Checked := false;
  end;
end;

procedure TfrmBike.btnResqClick(Sender: TObject);
begin
  imgResq.Visible := true;

end;

procedure TfrmBike.Connect;//connect database
begin
  dbConnect := TADOConnection.Create(frmBike);
  dbConnect.Connected := False;
  dbConnect.LoginPrompt := False;
  dbConnect.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source =' + ExtractFilePath(ParamStr(0)) + 'Motorbike Course.mdb' + ';Mode=ReadWrite;Persist Security Info = False';
//The name of your database
  dbConnect.Provider := 'Provider=Microsoft.Jet.OLEDB.4.0;';
  dbConnect.Open;
//Table ONE’s ADO connection code
  tblAdvisor := TADOTable.Create(frmBike);
  tblAdvisor.Connection := dbConnect;
  tblAdvisor.TableName := 'tblAdvisor';  //Table name in Microsoft Access
  tblAdvisor.Open;
  dsrAdvisor := TDataSource.Create(frmBike);
  dsrAdvisor.DataSet:= tblAdvisor;
  dbOutput.DataSource := dsrAdvisor;
//Table MANY’s ADO connection code
  tblStudents := TADOTable.Create(frmBike);
  tblStudents.Connection := dbConnect;
  tblStudents.TableName := 'tblStudents';  //Table name in Microsoft Access
  tblStudents.Open;
  dsrStudents := TDataSource.Create(frmBike);
  dsrStudents.DataSet:= tblStudents;
  dbOutput.DataSource := dsrStudents;
//Table MANY’s ADO connection code
  tblQuestions := TADOTable.Create(frmBike);
  tblQuestions.Connection := dbConnect;
  tblQuestions.TableName := 'tblQuestions';  //Table name in Microsoft Access
  tblQuestions.Open;
  dsrQuestions := TDataSource.Create(frmBike);
  dsrQuestions.DataSet:= tblQuestions;
  dbOutput.DataSource := dsrQuestions;
//SQL query connection code
  qrySQL := TADOQuery.Create(frmBike);
  qrySQL.Connection := dbConnect;
  dsrSQL :=  TDataSource.Create(frmBike);
  dsrSQL.DataSet := qrySQL;
  dbOutput.DataSource := dsrSQL;
end;

procedure TfrmBike.DisplayControls(pControlNum: integer);//tsControls output
begin
  redControls.Lines.Clear;
  case pControlNum of
    1 : redControls.Lines.Add(inttostr(pControlNum)+'. Clutch: Pull the clutch to disengage the engine for gear change');
    2 : redControls.Lines.Add(inttostr(pControlNum)+'. Indicator: Signal to turn left or right');
    3 : redControls.Lines.Add(inttostr(pControlNum)+'. Handlebars: Steers the motorbike');
    4 : redControls.Lines.Add(inttostr(pControlNum)+'. Gear lever: Shift the gear lever up to increase the gear and kick it down to decrease the gear');
    5 : redControls.Lines.Add(inttostr(pControlNum)+'. Mirror: Allows you to see traffic behind you');
    6 : redControls.Lines.Add(inttostr(pControlNum)+'. Front break: Apply the front break to slow down or stop, in combination with the rear break');
    7 : redControls.Lines.Add(inttostr(pControlNum)+'. Accelerator: Regulates the amount of fuel supplied to the engine to increase the power of the engine');
    8 : redControls.Lines.Add(inttostr(pControlNum)+'. Break Pedal: Apply pressure on the break pedal to slow down or stop, in combination with the front break');
  end;
end;

procedure TfrmBike.Endtest; //End test
begin
  pgcMain.ActivePage := tsEnd;
  redFinalOutput.Lines.Add('FINAL RESULTS:'+#10+'==========================');
  redFinalOutput.Lines.Add('You answered '+inttostr(ianswered-1)+' questions!');
  redFinalOutput.Lines.Add('You answered ' +inttostr(iQRight)+' correctly!');
  redFinalOutput.Lines.Add('You scored '+floattostrf((iQRight/(ianswered-1))*100,ffFixed,10,2)+'%');
end;

procedure TfrmBike.FitGrid(Grid: TDBGrid);
  const  //This procedure was taken off google, only to make the
        //coulum widths of the DBgrid the correct size. No marks should be awarded
  C_Add = 3;
var
  ds: TDataSet;
  bm: TBookmark;
  i: Integer;
  w: Integer;
  a: array of Integer;
begin
  ds := Grid.DataSource.DataSet;
  if not Assigned(ds) then
    exit;
  if Grid.Columns.Count = 0 then
    exit;
  ds.DisableControls;
  bm := ds.GetBookmark;
  try
    ds.First;
    SetLength(a, Grid.Columns.Count);
    for i := 0 to Grid.Columns.Count - 1 do
      if Assigned(Grid.Columns[i].Field) then
        a[i] := Grid.Canvas.TextWidth(Grid.Columns[i].FieldName);

    while not ds.Eof do
    begin

      for i := 0 to Grid.Columns.Count - 1 do
      begin
        if not Assigned(Grid.Columns[i].Field) then
          continue;

        w := Grid.Canvas.TextWidth(ds.FieldByName(Grid.Columns[i].Field.FieldName).DisplayText);

        if a[i] < w then
          a[i] := w;
      end;
      ds.Next;
    end;

    w := 0;
    for i := 0 to Grid.Columns.Count - 1 do
    begin
      Grid.Columns[i].Width := a[i] + C_Add;
      inc(w, a[i] + C_Add);
    end;

    w := (Grid.ClientWidth - w - 20) div (Grid.Columns.Count);

    if w > 0 then
      for i := 0 to Grid.Columns.Count - 1 do
        Grid.Columns[i].Width := Grid.Columns[i].Width + w;

    ds.GotoBookmark(bm);
  finally
    ds.FreeBookmark(bm);
    ds.EnableControls;
  end;
end;

procedure TfrmBike.FormActivate(Sender: TObject);//form activate
var
  tfile : textfile;
  ipos : integer;
  sline : string;
begin
  BorderStyle := bsSizeable;
  WindowState := wsnormal;
  pnlLogin.Width := frmBike.Width;
  pnlLogin.Height := frmBike.Width;
  ieecount := 0;

  Connect;
//initialising tsLogin
  pgcMain.ActivePage := tsLogin;
  edtStuUser.Visible := false;
  edtStuPass.Visible := false;
  edtAdvisorEmail.Visible := false;
  edtAdvisorPassword.Visible := false;
  btnLoginAdmin.Visible := false;
  btnLoginStudent.Visible := false;

//arrays yay
  if FileExists('login.txt') = false then
  begin
    showmessage('File does not exist');
    exit
  end;

  AssignFile(tfile,'login.txt');
  reset(tfile);
  icountusers := 0;
  while not(eof(tfile)) do
  begin
    inc(icountusers);
    Readln(tfile,sline);
    ipos := pos('#', sline);
    arrNum[icountusers] := strtoint(copy(sline,1,ipos-1));
    Delete(sline,1,ipos);

    ipos := pos('#', sline);
    arrUsername[icountusers] := copy(sline,1,ipos-1);
    Delete(sline,1,ipos);

    arrPassword[icountusers] := sline;
  end;
  closefile(tfile);
end;

procedure TfrmBike.imgEastereggClick(Sender: TObject);
begin
  tmr1.Enabled := true;
end;

procedure TfrmBike.lbl3Click(Sender: TObject);
begin
  edtStuUser.Visible := true;
  edtStuPass.Visible := true;
  btnLoginStudent.Visible := true;
  edtAdvisorEmail.Visible := false;
  edtAdvisorPassword.Visible := False;
  pgcMain.ActivePage := tsLogin;
end;

procedure TfrmBike.Logout(); //logout from anywhere
begin
  pgcMain.ActivePage := tsLogin;
  edtStuUser.Visible := false;
  edtStuPass.Visible := false;
  edtAdvisorEmail.Visible := false;
  edtAdvisorPassword.Visible := false;
  btnLoginAdmin.Visible := false;
  btnLoginStudent.Visible := false;
  pgcMain.ActivePage := tsLogin;
end;

procedure TfrmBike.MiniGameInit; //initialise minigame
var
  i: Integer;
begin
  cmbManufacturer.Items.Clear;
  cmbBikeColour.Items.Clear;
  cmbManufacturer.text := 'Select Manufacturer';
  cmbBikeColour.Text := 'Select Colour';

  for i := 1 to 5 do
  begin
    cmbManufacturer.Items.Add(arrCompanies[i]);
    cmbBikeColour.Items.Add(arrColours[i]);
  end;
  btnRace.Enabled := false;
end;

procedure TfrmBike.sbtnOption1Click(Sender: TObject);//answer 1
begin
  inc(iAnswered);
  if qrySQl['Correctanswer'] = 1 then
  begin
    inc(iQRight);
    shpO1.Brush.Color := clLime;

    qrySQL.SQL.Text := 'UPDATE tblQuestions SET timescorrect = timescorrect+1 WHERE question = "'+pnlQuestion.Caption+'"';
    qrySQL.ExecSQL;
  end
  else
  begin
    inc(iQWrong);
    shpO1.Brush.Color := clRed;
  end;

  qrySQL.SQL.Text := 'UPDATE tblQuestions SET timesanswered = timesanswered+1 WHERE question = "'+pnlQuestion.Caption+'"';
  qrySQL.ExecSQL;

  sbtnOption1.Enabled := false;
  sbtnOption2.Enabled := false;
  sbtnOption3.Enabled := false;
  sbtnOption4.Enabled := false;
  btnNext.Enabled := true;
end;

procedure TfrmBike.sbtnOption2Click(Sender: TObject);//answer 2
begin
  inc(iAnswered);
  if qrySQl['Correctanswer'] = 2 then
  begin
    inc(iQRight);
    shpO2.Brush.Color := clLime;

    qrySQL.SQL.Text := 'UPDATE tblQuestions SET timescorrect = timescorrect+1 WHERE question = "'+pnlQuestion.Caption+'"';
    qrySQL.ExecSQL;
  end
  else
  begin
    inc(iQWrong);
    shpO2.Brush.Color := clRed;
  end;

  qrySQL.SQL.Text := 'UPDATE tblQuestions SET timesanswered = timesanswered + 1 WHERE question = "'+pnlQuestion.Caption+'"';
  qrySQL.ExecSQL;

  sbtnOption1.Enabled := false;
  sbtnOption2.Enabled := false;
  sbtnOption3.Enabled := false;
  sbtnOption4.Enabled := false;
  btnNext.Enabled := true;
end;

procedure TfrmBike.sbtnOption3Click(Sender: TObject);//answer 3
begin
  inc(iAnswered);
  if qrySQl['Correctanswer'] = 3 then
  begin
    inc(iQRight);
    shpO3.Brush.Color := clLime;

    qrySQL.SQL.Text := 'UPDATE tblQuestions SET timescorrect = timescorrect+1 WHERE question = "'+pnlQuestion.Caption+'"';
    qrySQL.ExecSQL;
  end
  else
  begin
    inc(iQWrong);
    shpO3.Brush.Color := clRed;
  end;

  qrySQL.SQL.Text := 'UPDATE tblQuestions SET timesanswered = timesanswered+1 WHERE question = "'+pnlQuestion.Caption+'"';
  qrySQL.ExecSQL;

  sbtnOption1.Enabled := false;
  sbtnOption2.Enabled := false;
  sbtnOption3.Enabled := false;
  sbtnOption4.Enabled := false;
  btnNext.Enabled := true;
end;

procedure TfrmBike.sbtnOption4Click(Sender: TObject);//answer 4
begin
  inc(iAnswered);
  if qrySQl['Correctanswer'] = 4 then
  begin
    inc(iQRight);
    shpO4.Brush.Color := clLime;

    qrySQL.SQL.Text := 'UPDATE tblQuestions SET timescorrect = timescorrect+1 WHERE question = "'+pnlQuestion.Caption+'"';
    qrySQL.ExecSQL;
  end
  else
  begin
    inc(iQWrong);
    shpO4.Brush.Color := clRed;
  end;

  qrySQL.SQL.Text := 'UPDATE tblQuestions SET timesanswered = timesanswered+1 WHERE question = "'+pnlQuestion.Caption+'"';
  qrySQL.ExecSQL;
  sbtnOption1.Enabled := false;
  sbtnOption2.Enabled := false;
  sbtnOption3.Enabled := false;
  sbtnOption4.Enabled := false;
  btnNext.Enabled := true;
end;

procedure TfrmBike.sh1MouseEnter(Sender: TObject);
begin
  DisplayControls(1);
end;

procedure TfrmBike.sh2MouseEnter(Sender: TObject);
begin
  DisplayControls(2);
end;

procedure TfrmBike.sh3MouseEnter(Sender: TObject);
begin
  DisplayControls(3);
end;

procedure TfrmBike.sh4MouseEnter(Sender: TObject);
begin
  DisplayControls(4);
end;

procedure TfrmBike.Sh5MouseEnter(Sender: TObject);
begin
  DisplayControls(5);
end;

procedure TfrmBike.Sh6MouseEnter(Sender: TObject);
begin
  DisplayControls(6);
end;

procedure TfrmBike.Sh7MouseEnter(Sender: TObject);
begin
  DisplayControls(7);
end;

procedure TfrmBike.Sh8MouseEnter(Sender: TObject);
begin
  DisplayControls(8);
end;

procedure TfrmBike.StartTest;//start test
begin
  pgcMain.ActivePage := tsTest;
  iQRight := 0;
  iQWrong := 0;
  iAnswered := 1;

  qrySql.Close;
  qrySQL.SQL.Text := 'SELECT * FROM tblQuestions';
  qrySQL.Open;
  iQuestionNum := qrySQL.RecordCount + 1;

  qrySQL.First;
  pnlQuestion.Caption := qrySQL['Question'];
  sbtnOption1.Caption := qrySQL['Answer1'];
  sbtnOption2.Caption := qrySQL['Answer2'];
  sbtnOption3.Caption := qrySQL['Answer3'];
  sbtnOption4.Caption := qrySQL['Answer4'];

  btnNext.Enabled := false;
end;

procedure TfrmBike.tmr1Timer(Sender: TObject); //easter egg code how fun
begin
  inc(ieecount);
  imgEasteregg.Left := imgEasteregg.Left + 3;
  if ieecount = 150 then
  begin
    tmr1.Enabled := false;
    imgEasteregg.Left := 32;
    ieecount := 0;
  end;
end;

procedure TfrmBike.tmrRaceTimer(Sender: TObject);//calculates and displays the minigame
begin
  inc(iRcount);

  case arrpos[1,1] of
    1 : if imgBike1.Left < 1272 then imgBike1.Left := imgBike1.Left + 4*2+2;
    2 : if imgBike2.Left < 1272 then imgBike2.Left := imgBike2.Left + 4*2+2;
    3 : if imgBike3.Left < 1272 then imgBike3.Left := imgBike3.Left + 4*2+2;
    4 : if imgBike4.Left < 1272 then imgBike4.Left := imgBike4.Left + 4*2+2;
  end;

  case arrpos[2,1] of
    1 : if imgBike1.Left < 1272 then imgBike1.Left := imgBike1.Left + 3*2+2;
    2 : if imgBike2.Left < 1272 then imgBike2.Left := imgBike2.Left + 3*2+2;
    3 : if imgBike3.Left < 1272 then imgBike3.Left := imgBike3.Left + 3*2+2;
    4 : if imgBike4.Left < 1272 then imgBike4.Left := imgBike4.Left + 3*2+2;
  end;

  case arrpos[3,1] of
    1 : if imgBike1.Left < 1272 then imgBike1.Left := imgBike1.Left + 2*2+2;
    2 : if imgBike2.Left < 1272 then imgBike2.Left := imgBike2.Left + 2*2+2;
    3 : if imgBike3.Left < 1272 then imgBike3.Left := imgBike3.Left + 2*2+2;
    4 : if imgBike4.Left < 1272 then imgBike4.Left := imgBike4.Left + 2*2+2;
  end;

  case arrpos[4,1] of
    1 : if imgBike1.Left < 1272 then imgBike1.Left := imgBike1.Left + 1*2+2;
    2 : if imgBike2.Left < 1272 then imgBike2.Left := imgBike2.Left + 1*2+2;
    3 : if imgBike3.Left < 1272 then imgBike3.Left := imgBike3.Left + 1*2+2;
    4 : if imgBike4.Left < 1272 then imgBike4.Left := imgBike4.Left + 1*2+2;
  end;

  if ircount = 340 then
  begin
    pgcMain.ActivePage := tsMiniGame;
    BorderStyle := bsSizeable;
    WindowState := wsnormal;
    pgcMain.Width := frmBike.Width;
    pgcMain.Height :=frmBike.Height;
    imgBike1.Left := 32;
    imgBike2.Left := 32;
    imgBike3.Left := 32;
    imgBike4.Left := 32;
    tmrRace.Enabled := false;
  end;

end;

end.
