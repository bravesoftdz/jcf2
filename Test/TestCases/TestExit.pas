unit TestExit;

interface

implementation

procedure HasExit;
begin
  exit;
end;

procedure HasExitOneLine;
begin exit; end;

procedure HasExitOneLineNoSemicolon;
begin exit end;

procedure HasExitIf;
begin
  if 1 > 3 then
  begin
    exit
  end;
end;


end.
