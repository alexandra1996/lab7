Program Six;

Type 
Cuntries=(Rusia, Ukrain, English, USA, Byalorasia, France);
Cities=(Moskow, Kiev, London, Vashington, Minsk, Paris);

Var
Cn:Cuntries;
Ct:Cities;
Str:string;
i:integer;

Begin
  
  Writeln('Введите одну из столиц');
  Writeln('Москва, Киев, Лондон, Вашингтон, Минск, Париж');
  Read(i);
  Ct:=Cities(i);
  
  Case Ct of
      Moskow:Cn:=Cuntries.Rusia; 
      Kiev:Cn:=Cuntries.Ukrain;
      London:Cn:=Cuntries.English;
      Vashington:Cn:=Cuntries.USA;
      Minsk:Cn:=Cuntries.Byalorasia;
      Paris:Cn:=Cuntries.France;
    end;
    Writeln(Cn);
End.