unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    Memo2: TMemo;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    F : TextFile;
    TimeIni : TTime;
    procedure PreencheCabeca;
    procedure PreencheLancamento;
    procedure CriarArquivoTexto;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 Memo : TMemo;
begin
   Memo := TMemo.Create(self);
   Try
     Memo.Parent := Panel1;
     Memo.Align := alClient;
     Application.ProcessMessages;
     Memo.Lines.Add('asdfadf');
     Memo.Lines.Add('asdfadf');
     Memo.Lines.Add('asdfadf');
   Finally
      Memo.Free;
   End;
end;

procedure TForm1.PreencheCabeca;
  function PreencheTexto(Seq : integer) : String;
  begin
    case Seq of
     0: Result := '1';
     1: Result := 'teste';
     2: Result := '';
     3: Result := formatDateTime('ddmmyyyy', now);
     4: Result := 'cvs';
     5: Result := '001';
    end;
  end;

  function PosicaoTexto(Seq : integer) : Integer;
  var
    vSeq : integer;
  begin
    vSeq := 0;
    
    case Seq of
     0: vSeq := 1;
     1: vSeq := 2;
     2: vSeq := 10;
     3: vSeq := 17;
     4: vSeq := 25;
     5: vSeq := 30;
    end;

    Result := vSeq;
  end;
                              
var
  i: Integer;
  vTexto : string;
begin
  
    vTexto := StringOfChar(' ', 300);
    for i := 0 to 5 do
     begin
      Insert(PreencheTexto(i), vTexto, PosicaoTexto(i));
     end;
     
     try
       Append(F);
       Writeln(F, vTexto);
     finally
       CloseFile(F);
     end;
  
end;

procedure TForm1.PreencheLancamento;
  function PreencheTexto(Seq : integer) : String;
  begin
    case Seq of
     0: Result := Memo2.Lines.Strings[1];
     1: Result := Memo2.Lines.Strings[2];
     2: Result := Memo2.Lines.Strings[3];
     3: Result := Memo2.Lines.Strings[4];
     4: Result := Memo2.Lines.Strings[5];
     5: Result := Memo2.Lines.Strings[6];
    end;
  end;

  function PosicaoTexto(Seq : integer) : Integer;
  var 
    vSeq : integer;
  begin
    vSeq := 0;
    
    case Seq of
     0: vSeq := 1;
     1: vSeq := 10;
     2: vSeq := 20;
     3: vSeq := 30;
     4: vSeq := 40;
     5: vSeq := 50;
    end;

    Result := vSeq;
  end;

var
  i,j: Integer;
  vTexto : String;
begin
   for j := 0 to Memo1.Lines.Count -1 do
   begin
     vTexto := StringOfChar(' ', 300);
       
     for i := 0 to 5 do
     begin
      Insert(PreencheTexto(i), vTexto, PosicaoTexto(i));
     end;
     
     try
       Append(F);
       Writeln(F, vTexto);
     finally
       CloseFile(F);
     end;
     
   end;     
end;

procedure TForm1.CriarArquivoTexto;
begin
  try
    AssignFile(F, 'c:\texto\teste.txt');
    Rewrite(F);
  finally
    CloseFile(F);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TimeIni := Time;
  CriarArquivoTexto;
  PreencheCabeca;
  PreencheLancamento;
  TimeIni := (Time) - TimeIni;
  Caption := 'Tempo decorrido ' + TimeToStr(TimeIni);
end;

end.
