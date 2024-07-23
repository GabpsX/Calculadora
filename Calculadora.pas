unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MainPanel: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    set8: TButton;
    set9: TButton;
    set7: TButton;
    set4: TButton;
    set5: TButton;
    set6: TButton;
    set1: TButton;
    set3: TButton;
    set2: TButton;
    set0: TButton;
    delete: TButton;
    divide: TButton;
    multiply: TButton;
    minus: TButton;
    plus: TButton;
    setcomma: TButton;
    equalTo: TButton;
    setText: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure setNumberClick(Sender: TObject);
    procedure setOperationClick(Sender: TObject);
    procedure equalToClick(Sender: TObject);
    procedure deleteClick(Sender: TObject);
  private
    { Private declarations }
    FFirstNumber: Double;
    FOperation: string;
    FWaitingForSecondNumber: Boolean;
    procedure UpdateDisplay(Value: string);
    function performCalculation(a, b: Double; operation: string): Double;
    function LimitDecimalPlaces(Value: Double; Decimals: Integer): Double;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FWaitingForSecondNumber := False;
  setText.Caption := '0';
end;

procedure TForm1.setNumberClick(Sender: TObject);
begin
  // Adiciona o número ao display
  if (setText.Caption = '0') or FWaitingForSecondNumber then
    setText.Caption := (Sender as TButton).Caption
  else
    setText.Caption := setText.Caption + (Sender as TButton).Caption;

  FWaitingForSecondNumber := False;
end;

procedure TForm1.setOperationClick(Sender: TObject);
begin
  // Se já houver uma operação pendente, calcule o resultado
  if FWaitingForSecondNumber then
  begin
    FFirstNumber := StrToFloat(setText.Caption);
    FOperation := (Sender as TButton).Caption;
    UpdateDisplay(' ' + FOperation + ' ');
    FWaitingForSecondNumber := False;
  end
  else
  begin
    // Se não houver número anterior, apenas defina a operação
    FFirstNumber := StrToFloat(setText.Caption);
    FOperation := (Sender as TButton).Caption;
    UpdateDisplay(' ' + FOperation + ' ');
    FWaitingForSecondNumber := True;
  end;
end;

procedure TForm1.equalToClick(Sender: TObject);
var
  FSecondNumber: Double;
begin
  if FWaitingForSecondNumber then
    Exit;

  FSecondNumber := StrToFloat(setText.Caption);
  setText.Caption := FloatToStr(LimitDecimalPlaces(performCalculation(FFirstNumber, FSecondNumber, FOperation), 10));
  FWaitingForSecondNumber := False;
end;

procedure TForm1.deleteClick(Sender: TObject);
begin
  // Reseta o display e as variáveis
  setText.Caption := '0';
  FFirstNumber := 0;
  FOperation := '';
  FWaitingForSecondNumber := False;
end;

function TForm1.performCalculation(a, b: Double; operation: string): Double;
begin
  if operation = '/' then
  begin
    if b = 0 then
      raise Exception.Create('Divisão por zero não é permitida');
    Result := a / b;
  end
  else if operation = '*' then
    Result := a * b
  else if operation = '+' then
    Result := a + b
  else if operation = '-' then
    Result := a - b
  else
    Result := 0;  // Caso a operação não seja reconhecida
end;

procedure TForm1.UpdateDisplay(Value: string);
begin
  setText.Caption := Value;
end;

function TForm1.LimitDecimalPlaces(Value: Double; Decimals: Integer): Double;
var
  FormatSettings: TFormatSettings;
  FormattedValue: string;
begin
  // Define custom formatting settings
  FormatSettings := TFormatSettings.Create;
  FormatSettings.DecimalSeparator := '.';

  // Format the value to the desired number of decimal places
  FormattedValue := FormatFloat('0.' + StringOfChar('#', Decimals), Value, FormatSettings);

  // Convert the formatted string back to a floating-point number
  Result := StrToFloat(FormattedValue, FormatSettings);
end;


end.

