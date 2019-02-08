unit uFuncImpl;

interface

uses
  uFuncIntf;

type
  TFunctions = class(TInterfacedObject, IFunctions)
  protected
    function Echo(const AEcho: string): string;
    function Reverse(const AReverse: string): string;
    function Soma(const a: Integer; const b: Integer): Integer;
  end;

implementation

uses
  System.StrUtils;

{ TFunctions }

function TFunctions.Echo(const AEcho: string): string;
begin
  Result := AEcho;
end;

function TFunctions.Reverse(const AReverse: string): string;
begin
  Result := System.StrUtils.ReverseString(AReverse);
end;

function TFunctions.Soma(const A, B: Integer): Integer;
begin
  Result := A + B;
end;

end.
