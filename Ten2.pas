Program Ten2;

uses FormsABC;

type
mass=array[1..20] of real;//rejrjhhjrhrthrjhttr

var 
a:mass;
l,l2:listbox;
bt1,bt2:Button;
txt:Field;

procedure AddMass(var x:mass);
  begin
  var i:integer;
    for i:=1 to 20 do
      begin
        x[i]:=Random(100);
      end;
  end;
  
procedure AddMassL(var x:mass);
  begin
    var i:integer;
    
    EmptySpace(20); l:=new ListBox();
    AddMass(x);
    
    for i:=1 to 20 do
      begin
        l.Items.Add(x[i]);
      end;
  end;
  
procedure SerchMaxElem(x:mass);
  begin
    var i,k:integer;
    var max_x:real;
    
    l2:=new ListBox();
    
    max_x:=x[1];
    k:=1;
      
    for i:=1 to 20 do
      begin
        if x[i]>max_x then 
          begin
            max_x:=x[i];
            k:=i;
          end;
        end;       
    
    x[k]:=x[20];
    x[20]:=max_x;
    
    for i:=1 to 20 do
      begin
        l2.Items.Add(x[i]);
      end;
         
    txt.Text:='Макс: '+max_x.ToString()+'  Номер: '+k.ToString();
          
  end;
  
  procedure Add;
    begin
      AddMassL(a);
    end;
    
  procedure Search;
    begin
      SerchMaxElem(a);
    end;
  
Begin
    MainForm.SetSize(600,400);
    MainForm.Title := 'Работа с массивом';
    EmptySpace(50); txt:=new Field('Вывод значений:',200);
    EmptySpace(20); bt1:=new Button('Добавить');
    bt2:=new Button('Вычислить');
    bt1.Click+=Add;
    bt2.Click+=Search;
End.