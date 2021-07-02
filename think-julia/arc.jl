""" 
arc( t, r, angle) 

Draws an arc with the given radius and angle:

  t: turtle 
  r: radius 
  angle: angle subtended by the arc, in degrees 
""" 

using ThinkJulia
function arc( t, r, angle)
  arc_len = 2 * π * r * abs( angle) / 360 
  n = trunc( arc_len / 4) + 3 
  step_len = arc_len / n 
  step_angle = angle / n 
  
  # making a slight left turn before starting reduces 
  # the error caused by the linear approximation of the arc 
  turn(t, -step_angle/ 2) 
  polyline( t, n, step_len, step_angle) 
  turn( t, step_angle/ 2) 
end

p = Turtle()
arc(2, p, 99)
