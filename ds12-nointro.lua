pet='Press Enter to '
print(pet..'start.')
io.read()
s1={"Dead Space.exe",
'XCENTKOWSK_C8A99CD_622DBBB_v3',
'XCENTKOWSK_C78C369_F71988A_v3'}
s2={"deadspace2.exe",
'XCENTKOWSK_C9C50BC_08B592A_v3',
'XPATEL1026_CB19946_663E415_v3'}

for i=1,2 do
print(s1[1])
f = io.open(s1[1], "r+")
if f then break else print('not found.') s1=s2 end
end

if not f then 
print('Place in game folder and try again.') 
goto quit
end

msg = 'was not found.'

block = 300
  while true do
x = f:seek()
b1 = f:read(block)
if not b1 then break; msg = 'quit' end
if b1:find(s1[3]) then msg = 'is already removed.' break end
i,j = b1:find(s1[2])
   if i then 
f:seek("set",x+i-1)
f:write(s1[3])
msg = 'eliminated.'
break
   end
  end

f:close()
print('Intro '..msg)
::quit::
print(pet..'quit.')
io.read()
