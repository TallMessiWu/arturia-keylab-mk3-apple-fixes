from pathlib import Path
from lupa.lua52 import LuaRuntime
s=Path('profiles/mainstage/KeyLab 88 mk3.device/config.lua').read_text()
l=LuaRuntime(unpack_returned_tuples=True)
l.execute('print=function() end; MIDI_CtrChange=176; MIDI_LSB=0')
l.execute(s)
l.execute('''
function fakeList(n)
 local t={{Label='Set',IsPatch=false,SetIndex=0}}
 for i=0,n-1 do t[#t+1]={Label='Patch '..i,IsPatch=true,SetIndex=0} end
 return t
end
function SetCenterList(kind,title,...) return {kind=kind,title=title} end
function SetListCursor(...) return {} end
function AppendToList(title,...) return {append=title} end
function PrependToList(title,...) return {prepend=title} end
''')
r=l.eval("controller_select_patch(0,'Patch 0','Set','Concert',fakeList(10),0,0)")
assert r is not None and len(r['midi']) > 0, 'Initial 0/0/0 selection must refresh'
print('Initial first patch messages:',len(r['midi']))
l.execute('CURRENT_PROGRAM=-1; SCROLL_TYPE=4')
r=l.eval("controller_select_patch(3,'Patch 3','Set','Concert',fakeList(10),0,3)")
print('Selected Patch 3, next-scroll displayed title:',r['midi'][2]['title'])
l.execute('CURRENT_PROGRAM=-1; SCROLL_TYPE=3')
r=l.eval("controller_select_patch(4,'Patch 4','Set','Concert',fakeList(10),0,4)")
print('Selected Patch 4, previous-scroll displayed title:',r['midi'][2]['title'])
for n in range(1,17):
 for idx in range(n):
  for scroll in (0,3,4):
   l.execute(f'CURRENT_PROGRAM=nil; CURRENT_SET=nil; CURRENT_PATCH=nil; SCROLL_TYPE={scroll}')
   r=l.eval(f"controller_select_patch({idx},'Patch {idx}','Set','Concert',fakeList({n}),0,{idx})")
   titles=[v['title'] for _,v in r['midi'].items() if v['title'] is not None]
   assert titles and all(t==f'Patch {idx}' for t in titles),(n,idx,scroll,titles)
print('PASS: first refresh and selected titles, 408 short/long-list scrolling cases')
base=None
for model in (49,61,88):
 src=Path(f'profiles/mainstage/KeyLab {model} mk3.device/config.lua').read_text()
 norm=src.replace(f'KeyLab {model} mk3','KeyLab MODEL mk3')
 if base is not None:assert norm==base
 base=norm
 rt=LuaRuntime(unpack_returned_tuples=True);rt.execute('MIDI_CtrChange=176; MIDI_LSB=-1; print=function()end');rt.execute(src)
 info=rt.globals().controller_info();items={int(v['midi'][2]):v for _,v in info['items'].items()}
 expected={49:'PreviousSet',50:'NextSet',51:'PreviousPatch',52:'NextPatch',27:'Metronome',20:'PanicFull',21:'PlayStop',22:'Record',23:'TapTempo',43:'Undo',44:'Redo'}
 for cc,action in expected.items():
  for app in ('mainstage','mainstagecs','mainstagecreatorstudio'):assert items[cc]['action_'+app]==action
  assert items[cc]['inport']=='DAW'
 assert items[113]['midiType']=='Absolute'
print('PASS: all 3 models equivalent; 11 actions × 3 app names; Fader9 CC113')

# Each Logic model must load in Lua 5.2 and keep the GUI action on the click.
import re
for model in (49, 61, 88):
    source = Path(f'profiles/logic/KeyLab {model} mk3.device/config.lua').read_text()
    runtime = LuaRuntime(unpack_returned_tuples=True)
    runtime.execute('print=function() end')
    runtime.execute(source)
    clicks = re.findall(r"control='Main Encoder Click',\s*keyCmd=(\d+)", source)
    assert clicks == ['2397'], (model, clicks)
    assert f"MIDI_IN = 'KeyLab {model} mk3 DAW'" in source
    assert f"MIDI_OUT = 'KeyLab {model} mk3 DAW'" in source
    assert "control='Back', keyCmd=1366" in source
print('PASS: all three Logic scripts load; main click and Back commands preserved')
