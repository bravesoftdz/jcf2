unit TestTryExceptRaise;

interface

implementation

uses SysUtils;

procedure Bar;
begin
end;

procedure SignalError;
begin
end;

procedure Foo;
begin

 try
   Bar;
 except
   on EAbort do
     raise;
   else
    SignalError;
    raise;
 end;

end;

procedure Fish;
begin

 try
   Bar;
 except
   on EAbort do
     raise;
   else
    SignalError;

    Bar;
    Foo;
    Bar;
    raise;
 end;

end;

end.
 