unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    lbl3: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    edt5: TEdit;
    lbl6: TLabel;
    cbb1: TComboBox;
    lbl7: TLabel;
    lbl8: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn5: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    edt6: TEdit;
    lbl9: TLabel;
    btn6: TButton;
    lbl10: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure OnCellClickKustomer(Column: TColumn);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure OnShowForm(Sender: TObject);
    procedure edt6Change(Sender: TObject);
  private
    { Private declarations }
  public
    procedure posisiAwal;
    procedure bersih;
    { Public declarations }
  end;

var
  Form1: TForm1;

var
  temptString: string;
  id : string;
  id_int, last_id: Integer;

implementation
uses Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
temptString := '';
if (edt1.Text = temptString) or (edt2.Text = temptString)
    or (edt3.Text = temptString) or (edt4.Text = temptString)
    or (edt5.Text = temptString) then
  begin
    lbl10.Caption := 'input tidak boleh kosong';
  end
else
  begin
    DataModule2.zqryKustomer.SQL.Clear;
    DataModule2.zqryKustomer.SQL.Add('Insert into kustomer values(null,"' + edt1.Text + '", "' + edt2.Text + '" , "' + edt3.Text + '" , "' + edt4.Text + '" , "' + edt5.Text + '" , "' + cbb1.Text + '")');
    DataModule2.zqryKustomer.ExecSQL;

    DataModule2.zqryKustomer.SQL.Clear;
    DataModule2.zqryKustomer.SQL.Add('select * from kustomer');
    DataModule2.zqryKustomer.Open;
    ShowMessage('added');

    posisiAwal;
    bersih;
  end;

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
temptString := '';
if (edt1.Text = temptString) or (edt2.Text = temptString)
    or (edt3.Text = temptString) or (edt4.Text = temptString)
    or (edt5.Text = temptString) then
  begin
    lbl4.Caption := 'input tidak boleh kosong';
  end
else
  begin
    DataModule2.zqryKustomer.SQL.Clear;
    DataModule2.zqryKustomer.SQL.Add('Update kustomer set nik="' + edt1.Text + '", nama="' + edt2.Text + '", telp="' + edt3.Text + '", email="' + edt4.Text + '", alamat="' + edt5.Text + '", member="' + cbb1.Text + '" Where id ="' + id + '"');
    DataModule2.zqryKustomer.ExecSQL;

    DataModule2.zqryKustomer.SQL.Clear;
    DataModule2.zqryKustomer.SQL.Add('select * from kustomer');
    DataModule2.zqryKustomer.Open;
    ShowMessage('updated');

    posisiAwal;
    bersih;
    end

end;

procedure TForm1.btn3Click(Sender: TObject);
begin
temptString := '';
if edt1.Text = temptString then
  begin
    lbl4.Caption := 'input tidak boleh kosong';
  end
else
  begin
    DataModule2.zqryKustomer.SQL.Clear;
    DataModule2.zqryKustomer.SQL.Add('Delete From kustomer Where id ="' + id + '"');
    DataModule2.zqryKustomer.ExecSQL;

    DataModule2.zqryKustomer.SQL.Clear;
    DataModule2.zqryKustomer.SQL.Add('select * from kustomer');
    DataModule2.zqryKustomer.Open;
    ShowMessage('deleted');

    posisiAwal;
    bersih;
  end

end;

procedure TForm1.OnCellClickKustomer(Column: TColumn);
begin
  edt1.Text := DataModule2.zqryKustomer.Fields[1].AsString;
  edt2.Text := DataModule2.zqryKustomer.Fields[2].AsString;
  edt3.Text := DataModule2.zqryKustomer.Fields[3].AsString;
  edt4.Text := DataModule2.zqryKustomer.Fields[4].AsString;
  edt5.Text := DataModule2.zqryKustomer.Fields[5].AsString;
  cbb1.Text := DataModule2.zqryKustomer.Fields[6].AsString;

  id:= DataModule2.zqryKustomer.Fields[0].AsString;

  if cbb1.Text = 'yes'
then
  begin
    lbl8.Caption := '10%';
  end
else
  begin
    lbl8.Caption := '5%';
  end
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
bersih;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
btn1.Enabled := True;
btn2.Enabled := True;
btn3.Enabled := True;
btn4.Enabled := True;
btn5.Enabled := True;
btn6.Enabled := False;

edt1.Enabled := True;
edt2.Enabled := True;
edt3.Enabled := True;
edt4.Enabled := True;
edt5.Enabled := True;
edt6.Enabled := True;
cbb1.Enabled := True;

dbgrd1.Enabled := True;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
if cbb1.Text = 'yes'
then
  begin
    lbl8.Caption := '10%';
  end
else
  begin
    lbl8.Caption := '5%';
  end
end;


procedure TForm1.posisiAwal;
begin
// button
btn1.Enabled := False;
btn2.Enabled := False;
btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := False;
btn6.Enabled := True;


// edit
edt1.Enabled := False;
edt2.Enabled := False;
edt3.Enabled := False;
edt4.Enabled := False;
edt5.Enabled := False;
edt6.Enabled := True;
cbb1.Enabled := False;

dbgrd1.Enabled := False;
lbl8.Caption := '';

end;

procedure TForm1.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
cbb1.Text := 'Pilih--';
end;

procedure TForm1.OnShowForm(Sender: TObject);
begin
posisiAwal;
end;

procedure TForm1.edt6Change(Sender: TObject);
begin
with DataModule2.zqryKustomer do
  begin
    SQL.Clear;
    SQL.Add('select * from kustomer where nama like "%'+ edt6.Text+ '%"');
    Open;
  end;
end;

end.

