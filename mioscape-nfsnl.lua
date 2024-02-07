gg.setRanges(gg.REGION_C_ALLOC)
gg.processPause()
MIO=1
function START()
  MENU=gg.choice({
    '\n[Money]\n',
    '\n[Gold]\n',
    '\n[Exit]\n',
}, nil, '[NFS:NL v0.4beta]')
if MENU == 1 then Money() end
if MENU == 2 then Gold() end
if MENU == 3 then Exit() end
MIO=-1
end

function Money()
  gg.processPause()
  mio = gg.prompt({[1]='Change to:', [2]='Current Money:'}, {[1]='', [2]=''})
  gg.searchNumber(mio[2]..';327691::5', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber(mio[2], gg.TYPE_DWORD)
  gg.getResults(100)
  gg.editAll(mio[1], gg.TYPE_DWORD)
  gg.clearResults()
  gg.processResume()
  gg.toast('Money Changed')
end

function Gold()
  gg.processPause()
  mio = gg.prompt({[1]='Change to:', [2]='Current Gold:'}, {[1]='', [2]=''})
  gg.searchNumber(mio[2]..';327691::5', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber(mio[2], gg.TYPE_DWORD)
  gg.getResults(100)
  gg.editAll(mio[1], gg.TYPE_DWORD)
  gg.clearResults()
  gg.processResume()
  gg.toast('Gold Changed')
end

function Exit()
gg.processResume()
os.exit()
end

while true do
if gg.isVisible(true) then
MIO = 1
gg.setVisible(false)
end
if MIO == 1 then
START()
end
end
