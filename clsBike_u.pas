unit clsBike_u;

interface

Uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Samples.Spin, Vcl.Mask, adodb, dateutils, math;
  
Type 
  TMotrobike = class(TObject)
    private
      fCompany, fName, fColour : String;
      fRoad : Boolean;
      fEngineSize, fWeight : Integer;
      fManufactured : TDate;
      fPrice, fSpeed : Real;  
      Procedure CalculateSpeed;
      Procedure CalculatePrice;

    public
      Constructor Create(pCompany, pName, pColour : string; pRoad : Boolean; pEngineSize, pWeight : Integer; pManufactured : Tdate);
      Function getSpeed : real;
      Function ToString : String;

    end;
    
implementation

{ TMotrobike }

procedure TMotrobike.CalculatePrice;
begin
  //Price
  if fCompany = 'Honda' then
    fprice := 100000
  else if fCompany = 'BMW' then
    fprice := 200000
  else if fCompany = 'Kawasaki' then
    fprice := 125000
  else if fCompany = 'Harley Davidson' then
    fprice := 150000
  else
    fPrice := 60000;

  if (uppercase(fcolour) = 'RED') or (uppercase(fcolour) = 'BLACK') or (uppercase(fcolour) = 'BLUE')  then
    fprice := fprice * (110/100)
  else if (uppercase(fcolour) = 'BROWN') or (uppercase(fcolour) = 'YELLOW') or (uppercase(fcolour) = 'GREEN') then
    fprice := fprice * (90/100);

  case fEngineSize of
    0..200 : fPrice := fprice * (60/100);
    201..500 : fPrice := fprice * (80/100);
    501..1000 : fPrice := fprice * (120/100);
    else fprice := fprice * (150/100);
  end;

  fprice := RoundTo(fPrice,2);
end;

procedure TMotrobike.CalculateSpeed;
begin
  //speed = 100 + (engine size * 10%) + (if road: 10 if not - 10) + (if manufacured in 5 years - 5, if 10 - 10 else -15) - (weight * 10%);
  fSpeed := 100 + fenginesize * (10/100) - fWeight * (10/100);

  if fRoad = true then
    fspeed := fspeed + 10
  else
    fspeed := fspeed - 10;

  case yearsbetween(fManufactured,date) of
    0..5 : fspeed := fspeed - 5;
    6..10 : fspeed := fspeed - 10;
    else fspeed := fspeed -15;
  end;

  if fSpeed < 50 then
    fspeed := 50;
  fSpeed := RoundTo(fSpeed,0);
end;

constructor TMotrobike.Create(pCompany, pName, pColour: string; pRoad: Boolean;
  pEngineSize, pWeight: Integer; pManufactured: Tdate);
begin
//initialising object
  fCompany := pCompany;
  fName := pName;
  fColour := pColour;
  fRoad := pRoad;
  fEngineSize := pEngineSize;
  fWeight := pWeight;
  fManufactured := pManufactured;

  CalculateSpeed();
  CalculatePrice();
end;

function TMotrobike.getSpeed: real; //returns speed
begin
  result := fspeed;
end;

function TMotrobike.ToString: String; //to string
begin
  result := 'Motorbike name: ' + fName + #10;
  Result := Result + 'Manufacturer: '+ fCompany + #10;
  Result := Result + 'Colour: ' + fColour + #10;
  Result := Result + 'Engine Size: ' + inttostr(fEngineSize) + #10;
  Result := Result + 'Weight: ' + inttostr(fWeight) + #10;
  Result := Result + 'Max Speed: ' + floattostr(fSpeed)+'km/hr' + #10;
  Result := Result + 'Price: ' + FloatToStrf(fPrice,ffCurrency,10,2);
end;
  {result := 'Name: ' + fName + ' '+fsurname+#10;
  Result := Result + 'Password: '+ fPassword + #10;
  Result := Result + 'Emial: ' + fEmail + #10;
  Result := Result + 'Course ID: ' + fcourseID + #10;
  Result := Result + 'Pure maths:' + fMath + #10;
  Result := Result + 'Date of Birth: ' + datetostr(fDOB);
  }
end.
