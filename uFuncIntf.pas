unit uFuncIntf;

interface

type
  IFunctions = interface
  ['{B630692D-86E8-406D-819D-A2A667E69354}']
    function Soma(const A, B: Integer): Integer;
    function Echo(const AEcho: string): string;
    function Reverse(const AReverse: string): string;
  end;

implementation

end.
