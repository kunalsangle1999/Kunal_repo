unit test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, DBAccess,
  MyAccess, MemDS;

type
  TForm1 = class(TForm)
    MyConnection1: TMyConnection;
    Button1: TButton;
    MyQuery1: TMyQuery;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
MyConnection1.Connected := True;
  if MyConnection1.Connected then
    ShowMessage('Connected to MySQL!')
  else
    ShowMessage('Failed to connect.');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  TotalSalary: Double;
begin
  // Open the database connection
  MyConnection1.Connect;

  try
    // Execute SQL query to retrieve employee salaries
    MyQuery1.SQL.Text := 'select sum(id) as TotalSalary from kunal;';
    MyQuery1.Open;

    // Check if the query returned any results
    if not MyQuery1.IsEmpty then
    begin
      // Retrieve the total salary from the result
      TotalSalary := MyQuery1.FieldByName('TotalSalary').AsFloat;

      // Display the total salary in the label
      Label1.Caption := 'Total Salary: $' + FormatFloat('#,##0.00', TotalSalary);
    end
    else
    begin
      Label1.Caption := 'No data found';
    end;
  finally
    // Close the database connection
    MyConnection1.Disconnect;
  end;
end;

end.
