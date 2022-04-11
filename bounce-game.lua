require "math"
math.randomseed(os.time())

local pos = math.random(2, 11);
local backwards = false;

for i = 1, 100 do
  local field = "!          !";
  field = field:sub(1, pos-1) .. "O" .. field:sub(pos+1)
  if string.sub(field, 11, 11) == "O" then
    backwards = true
  elseif string.sub(field, 2, 2) == "O" then
    backwards = false
  end
  print(field)

  if backwards then
	  pos = pos - 1;
  else
	  pos = pos + 1;
  end
end