-- ghosts.
--
-- @Alexis_Lessard
-- twitter.com/user/status/1322164958008905728
--
-- Ported by @eigen


include('p8/lib/p8')

function init()
  screen.aa(1)
  screen.line_width(1)
end


k=127
t=0
p={}
n=20
r=rnd

for i=1,n do
 -- NB: color/level adjustment for stronger contrast
 -- p[i]={r(k),r(171),1+r(n)/20,5+5*i}
 local col = flr(1+(i-1) * 15 / n)
 p[i]={r(k),r(171),1+r(n)/20,col}
end

re = metro.init()
re.time = 1.0 / 30
re.event = function()
  t = t + 0.01
  redraw()
end
re:start()

function redraw()
 -- ::_::
 cls()
 for j=1,n do
  o=p[j]
  h=o[3]*t+j/9x=o[1]+sin(h)*20y=-20+(o[2]-t*99)%171
  for i=0,3 do
   circfill(x+sin(h-i/9)*i,y+1+i*2,4-i,o[4])
  end
  pset(x-2,y,0)pset(x+2,y)end
 flip()
 -- goto _
end
