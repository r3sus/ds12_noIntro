s1='XCENTKOWSK_C8A99CD_622DBBB_v3'
s2='XCENTKOWSK_C78C369_F71988A_v3'

local f = assert(io.open("Dead Space.exe", "r+"))
local block = 300
	while true do
local bytes = f:read(block)
if not bytes then break;print('quit') end
	if bytes:match(s1) or bytes:find(s1) then b2=bytes:gsub(s1,s2)
f:seek("cur",-block)
f:write(b2)
f:close()
print("patched")
--print(bytes)
--print(b2)
break
end
	end