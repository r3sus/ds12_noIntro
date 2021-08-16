msg='Place in game folder and launch this script.'
# supports both games
import os

n1='Dead Space.exe'
s1=b'XCENTKOWSK_C8A99CD_622DBBB_v3',b'XCENTKOWSK_C78C369_F71988A_v3'

n2='deadspace2.exe'
s2=b'XCENTKOWSK_C9C50BC_08B592A_v3',b'XPATEL1026_CB19946_663E415_v3'

d = 300 # step

x='The End.'

# os.chdir('..')

for i in 1,2:
        
    if not os.path.isfile(n1):
        n1,s1=n2,s2
        if i==2:
            x=msg
        continue
    else:
        print(n1)

    # s1=s1[::-1] # revert changes
            
    f=open(n1,'rb+')
    f.seek(0)
    fd=1
    while fd:
        fd=f.read(d)
        k = fd.count(s1[0])
        if k:
            print('patching')
            fr=fd.replace(*s1)
            f.seek(-d,1)
            f.write(fr)
            break
        
    f.close()
    
    if not k:
        print('was not changed')
    
input(x)

# step is number of bytes red at time
# to be changed in case string didn't fit completely in buffer
