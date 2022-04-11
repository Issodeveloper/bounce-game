require "math"
math.randomseed(os.time())

local pos = math.random(2, 11);
local backwards = false;

for i = 1, 100 do
  local field = "!          !";
  field = field:sub(1, pos-1) .. "O" .. field:sub(pos+1)
  if pos == string.len(field) - 1 then
    backwards = true
  elseif pos == 2 then
    backwards = false
  end
  print(field)

  if backwards then
	  pos = pos - 1;
  else
	  pos = pos + 1;
  end
end