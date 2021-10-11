unit main;

{
 Пробная сборка.

 Архив "свежих" телепрограмм на неделю
 большинства эфирных и кабельных каналов:
 http://www.teleguide.info/download/new3/jtv.zip
 }

interface

{ Чтение данных из БД формата JTV
 Для каждого телеканала - пара файлов *.pdt и *.ndx

 Структура файла PDT:
 После константной текстовой метки "JTV 3.x TV Program Data"
 ($4A$54$56$20$33$2E$78$20$54$56$20$50$72$6F$67$72$61$6D$20$44$61$74$61)
 и трёх байт с кодом 0Ah ($0A$0A$0A) идут записи переменной длины:
 ...
 два байта под количество символов в названии (длина строки),
 затем само название телепередачи (строка)
 ...
 и так до конца файла.

 Структура файла NDX:
 Два байта в начале файла - счётчик общего количества записей,
 за ними расположились записи, каждая по 12 байт:
 ...
 Первая пара всегда нулевая ($00$00), затем идут восемь (4+4)
 байт структуры FILETIME (дата и время показа телепередачи),
 считывается она инвертно: 4321.8765, последние 2 байта указывают на начало
 (на первый из пары байт длины строки) названия этой передачи в файле PDT.
 ...

 Источник: http://www.yegorov-p.ru/opisanie-formata-jtv

  }

uses
  Windows, SysUtils, Classes, Controls, Forms, ExtCtrls, StdCtrls,
  ComCtrls, XPMan, Dialogs, Buttons;
  type
  TfrmMain = class(TForm)
  Panel1:           TPanel;
  Panel2:           TPanel;
  Panel3:           TPanel;
  Splitter1:     TSplitter;
  sbOpen:     TSpeedButton;
  sbClear:    TSpeedButton;
  sbFileDown: TSpeedButton;
  sbFileUp:   TSpeedButton;
  sbEditName: TSpeedButton;
  sbFileDel:  TSpeedButton;
  tv:            TTreeView;
  XPManifest1: TXPManifest;
  Op:          TOpenDialog;
  Memo1:             TMemo;

    function JtvToText(ds: string): string;

    procedure DelNode;
    procedure tbOpenClick(Sender : TObject);
    procedure tvExpanding(Sender : TObject; Node : TTreeNode;
                               var AllowExpansion : Boolean);
    procedure tvContextPopup(Sender : TObject; MousePos : TPoint;
                                          var Handled : Boolean);
    procedure tvChange(Sender : TObject; Node : TTreeNode);
    procedure sbFileUpMouseDown(Sender : TObject; Button : TMouseButton;
                           Shift : TShiftState; X, Y : Integer);
    procedure sbFileDownMouseDown(Sender : TObject; Button : TMouseButton;
                           Shift : TShiftState; X, Y : Integer);

    procedure sbClearMouseDown(Sender : TObject; Button : TMouseButton;
                               Shift : TShiftState; X, Y : Integer);
    procedure tvKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure tvKeyUp(Sender: TObject; var Key : Word; Shift : TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure sbEditNameClick(Sender: TObject);
    procedure sbFileDelClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var
  frmMain : TfrmMain;
  flg : boolean;

    implementation

  {$R *.dfm}

function crs(ds: string): string;
var
i: integer;
begin
for i := 0 to Length(ds) do
if ds[i] = '_' then ds[i]:= ' ';
Result:= ds;
end;

  procedure TfrmMain.tbOpenClick(Sender: TObject);
var
k: TTreeNode; n: integer;
begin
 If op.Execute then
 begin
    with tv do
    begin
     Items.BeginUpdate;
     Application.ProcessMessages;
    for n := 0 to (op.Files.Count - 1) do
    begin
k:= Items.Add(tv.Selected,
crs(ChangeFileExt(ExtractFileName(op.Files[n]), '')));
Items.AddChild(k,Trim(ChangeFileExt(op.Files[n], ' ')));
end;
 tv.Items.EndUpdate;
   end;
   flg:= false;

if tv.Selected = nil then
tv.Items.GetFirstNode.Selected:= true;
tv.SetFocus;
 sbOpen.AllowAllUp:= false;
 end;
end;

 procedure TfrmMain.tvExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
  begin
AllowExpansion:= false;
end;

procedure TfrmMain.tvContextPopup(Sender: TObject;
           MousePos: TPoint; var Handled: Boolean);
 var tmpNode: TTreeNode;
begin
  tmpNode:= (Sender as TTreeView).GetNodeAt(MousePos.X, MousePos.Y);
  if tmpNode <> nil then TTreeView(Sender).Selected:= tmpNode;
 end;

procedure TfrmMain.tvChange(Sender: TObject; Node: TTreeNode);
begin
if not flg then memo1.Text:= JtvToText(Node.GetLastChild.Text);
end;

procedure TfrmMain.sbFileUpMouseDown(Sender: TObject;
  Button:TMouseButton;Shift:TShiftState;X,Y:Integer);
var
s1, s2, d1, d2 : string;
begin
if (tv.Selected = nil) or
 (tv.Selected.AbsoluteIndex = 0) then exit else
 begin
  with tv.Selected do
   begin
 flg:= true;
 if EditText then EndEdit(false);
s1:= GetPrevVisible.Text;
s2:= GetPrevVisible.GetLastChild.Text;
d1:= Text;
d2:= GetLastChild.Text;
Text:= s1;
GetLastChild.Text:= s2;
GetPrevVisible.Text:= d1;
GetPrevVisible.GetLastChild.Text:= d2;
GetPrevVisible.Selected:= true;
   end;
flg:= false;
 end;
end;

procedure TfrmMain.sbFileDownMouseDown(Sender: TObject;
    Button:TMouseButton;Shift:TShiftState;X,Y:Integer);
var
s1, s2, d1, d2 : string;
begin
 if (tv.Selected = nil)   or
    ((tv.Selected.AbsoluteIndex + 2) = tv.Items.Count)
     then exit else
 begin
 flg:= true;
 with tv.Selected do
    begin
 if EditText then EndEdit(false);
 s1:= GetNextVisible.Text;
 s2:= GetNextVisible.GetLastChild.Text;
 d1:= Text;
 d2:= GetLastChild.Text;
 Text:= s1;
 GetLastChild.Text:= s2;
 GetNextVisible.Text:= d1;
 GetNextVisible.GetLastChild.Text:= d2;
 GetNextVisible.Selected:= true;
    end;
flg:= false;
 end;
end;

procedure TfrmMain.DelNode;
begin
if sbOpen.AllowAllUp then exit;
if tv.Selected <> nil then tv.Items.Delete(tv.Selected);
if tv.Selected = nil then
begin
sbOpen.AllowAllUp:= true;
Memo1.Clear;
end;
end;

procedure TfrmMain.sbEditNameClick(Sender: TObject);
begin
if sbOpen.AllowAllUp then exit;
tv.Selected.EditText;
end;

procedure TfrmMain.sbFileDelClick(Sender: TObject);
begin
DelNode;
end;

procedure TfrmMain.sbClearMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if sbOpen.AllowAllUp then exit;
flg:= true;
tv.Items.Clear;
memo1.Clear;
sbOpen.AllowAllUp:= true;
end;

procedure TfrmMain.tvKeyDown(Sender:TObject;var Key:Word;Shift:TShiftState);
begin
flg:= true;
end;

procedure TfrmMain.tvKeyUp(Sender: TObject;var Key:Word;Shift:TShiftState);
begin
flg:= false;
  case Key  of
  33..36,38,40: if not tv.IsEditing then
  memo1.Text:= JtvToText(tv.Selected.GetLastChild.Text);
  113: tv.Selected.EditText;
  46: if not tv.IsEditing then DelNode;
  end;
  end;

function TfrmMain.JtvToText(ds: string): string;

  function bth(ds: array of byte): integer;
   var i: integer; s: string;
  begin
  s:='$';for i:=Low(ds)to High(ds)do s:=s+IntToHex(ds[i],2);Result:=StrToInt(s);
  end;

  const
 dm: array[1..12] of string = ('января', 'февраля', 'марта', 'апреля', 'мая',
 'июня', 'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря');

var
 ft, bt: TFILETIME;
 st: SYSTEMTIME;
 fndx, fpdt: file of byte;
 i, sm, od: integer;
 text: pchar;
 fd: string;
 b: array[1..12] of byte;

 begin
 if flg then exit;

 if tv.Selected <> nil then
 begin
 Result:= ''; od:= 0;
AssignFile(fndx, ds + '.ndx');
AssignFile(fpdt, ds + '.pdt');
Reset(fndx); Reset(fpdt);
Read(fndx, b[1], b[2]);
for i:=1 to bth([b[2], b[1]]) do

begin

BlockRead(fndx, b, 12);
ft.dwLowDateTime:=  bth([b[6], b[5], b[4], b[3]]);
ft.dwHighDateTime:= bth([b[10],b[9], b[8], b[7]]);
Seek(fpdt, bth([b[12], b[11]]));
Read(fpdt, b[1], b[2]);
sm:= bth([b[2], b[1]]);
GetMem(text, sm);
BlockRead(fpdt, text^, sm);
fd:= string(text);
SetLength(fd, sm);

FileTimeToLocalFileTime(ft, bt);
FileTimeToSystemTime(bt, st);

if od = st.wDayOfWeek then
with st do Result:= Result + #13#10 +
FormatDateTime(' hh:mm', EncodeTime(wHour, wMinute, 0, 0)) + ' - ' + fd
else begin
if i> 1 then Result:= Result + #13#10 + ' ...' + #13#10;
with st do Result:= Result + #13#10 +
FormatDateTime('  d ' + dm[wMonth] + ', dddd:' + #13#10 + #13#10,
EncodeDate(wYear, wMonth, wDay)) +
FormatDateTime(' hh:mm', EncodeTime(wHour, wMinute, 0, 0)) + ' - ' + fd;
{else} end;
od:= st.wDayOfWeek;
FreeMem(text);
end;

CloseFile(fndx);
CloseFile(fpdt);
end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
if FileExists(PChar(extractFileDir(ParamSTR(0)) + '\tvg.pdx')) then
begin
tv.LoadFromFile(extractFileDir(ParamSTR(0)) + '\tvg.pdx');
tv.Selected:=tv.Items.GetFirstNode;
end;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
tv.SaveToFile(extractFileDir(ParamSTR(0)) + '\tvg.pdx');
end;

end.
