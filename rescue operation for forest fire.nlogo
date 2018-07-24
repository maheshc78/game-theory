breed[trees tree]
breed[zebras zebra]
breed[buffalos buffalo]
breed[fires fire]
breed[birds bird]
breed[persons1 person1]
breed[persons2 person2]
breed[persons3 person3]
breed[buses bus]
to setpatch
ask patches with[pycor > -2]
[
  set pcolor green
]
ask patches with[pycor <= -2]
[
  set pcolor 49
]
ask patches
[
  if(pxcor >= -22 and pxcor <= 22 and pycor <= -18)
  [
    set pcolor brown
  ]
]
end
to setbus
  create-buses 1[
    set shape "bus"
    set size 4
    setxy -2 -19
   set heading 90
    ]

end
to gobus
  ask buses[
    if(ycor = 17)[stop]
    set ycor ycor + 1
    wait 0.2
  let current-bus self
   ask buffalos with[distance current-bus < 2]
   [die]

   ask persons2 with[distance current-bus < 3]
   [die]
]
end
to settree
  create-trees 20[
    set shape "tree"
    set size 2
  ]
  ask trees[
    let y random-ycor
    ifelse(y > 0)[
    setxy random-xcor y]
    [
    ]
  ]
end
to setzebra
  create-zebras 2[
    set shape "zebra"
    set size 2
  ]
  ask zebras[
    let y random-ycor
    ifelse(y > 0)[
    setxy random-xcor y]
    [

    ]
  ]
end
to setbuff
  create-buffalos 10[
    set shape "buffalo"
    set size 2
    set color brown
  ]
  ask buffalos[
    let y random-ycor
    ifelse(y > 0)[
    setxy random-xcor y]
    [

    ]
  ]
end
to setbird
  create-birds 6[
    set shape "bird side"
    set color white
   ]
  ask birds[
    let y random-ycor
    ifelse(y > 0)[
    setxy random-xcor y]
    [

    ]
  ]
end
to setfire
  create-fires 12[
    set shape "fire"
   set size 2
   set color 25
  ]
  ask fires[
    let y random-ycor
    ifelse(y > 0)[
    setxy random-xcor y]
    [

    ]
  ]
end
to setteam1a
  create-persons1 1[
    set shape "person1"
    set size 1.5
    setxy -21 -18
  ]
end
to setteam1b
  create-persons1 1[
    set shape "person1"
    set size 2
    setxy -18 -16
  ]
end
to setteam1c
  create-persons1 1[
    set shape "person1"
    set size 3
    setxy -21 -13
  ]
end
to setteam1d
  create-persons1 1[
    set shape "person1"
    set size 3
    setxy -18 -11
  ]
end
to setteam1e
  create-persons1 1[
    set shape "person1"
    set size 4
    setxy -20 -7  ]
end
to setteam2a
  create-persons2 1[
    set shape "person2"
    set size 1.5
    setxy -4 -18
  ]
end
to setteam2b
  create-persons2 1[
    set shape "person2"
    set size 2
    setxy -2 -16
  ]
end
to setteam2c
  create-persons2 1[
    set shape "person2"
    set size 3
    setxy -4 -13
  ]
end
to setteam2d
  create-persons2 1[
    set shape "person2"
    set size 3
    setxy -2 -11
  ]
end
to setteam2e
  create-persons2 1[
    set shape "person2"
    set size 4
    setxy -3 -7  ]
end
to setteam3a
  create-persons3 1[
    set shape "person3"
    set size 1.5
    setxy 13 -18
  ]
end
to setteam3b
  create-persons3 1[
    set shape "person3"
    set size 2
    setxy 15 -16
  ]
end
to setteam3c
  create-persons3 1[
    set shape "person3"
    set size 3
    setxy 13 -13
  ]
end
to setteam3d
  create-persons3 1[
    set shape "person3"
    set size 3
    setxy 15 -11
  ]
end
to setteam3e
  create-persons3 1[
    set shape "person3"
    set size 4
    setxy 14 -7  ]
end
to go
  ask persons1 with [size = 4][loop
       [ if (xcor = -5) [ stop ]
       set xcor xcor + 1
       wait 0.2
       ]
  ]

   ask persons3 with [size = 4][loop
       [ if (xcor = -1) [ stop ]
       set xcor xcor - 1
       wait 0.2
       ]
   ]
   output-print("Fireman -  There is unexpected fire broke out in the forest")
   wait 1.5
   output-print("Fireman - We are from forest fire department")
   wait 1.5
   output-print("Fireman - Our Mission is to stop the fire from spreading over.")
    wait 1.5
   output-print("Forest Officer - We are here to protect the wild life")
    wait 1.5
   output-print("Forest Officer - We have five members as a whole team and we need your support ")
    wait 1.5
   output-print("Fireman - DEFINETELY BUT WE NEED TO EXTINGUISH THE FIRE FIRST BEFORE IT SPREADS OUT TO THE OTHER SIDE OF THE FOREST")
    wait 1.5
   output-print("Forest Officer - It will get too late to rescue the animals.We need to act quickly!!")
    wait 1.5
   output-print("Fireman - I understand your thoughts but if we don't stop the fire now,the situation will be out of control.")
    wait 1.5
   output-print("Forest Officer - BUT THE CURRENT SITUATION IS VERY HOSTILE TO THE ANIMALS")
    wait 1.5
   output-print("Fireman - It will be very risky for you people to go inside the forest ")
    wait 1.5
   output-print("Forest Officer - We have called for transportation to rescue the animals")
    wait 1.5
   output-print("It will be here in five minutes")
    wait 1.5
   output-print("Policeman - I have been informed that an unexpected fire broke out")
    wait 1.5
   output-print("I am here to control the situation.")
    wait 1.5
   output-print("Fireman - Officer!! The fire has already created huge damage")
    wait 1.5
   output-print("I think me and my team should go into the forest and extinguish the fire")
    wait 1.5
   output-print("Forest Officer - Officer!! I have already called for transportation support to rescue the wounded animals ")
    wait 1.5
   output-print("Policeman - I strongly suggest for the fire team to proceed")
    wait 1.5
   output-print("by the time transportation support arrives!!!")
    wait 1.5
   output-print("Fireman - I agree with the plan officer")
    wait 1.5
   output-print("Forest Officer - I also agree with the plan")
end
to bak
  ask persons1 with [size = 4][loop
       [ if (xcor = -20) [ stop ]
       set xcor xcor - 1
       wait 0.2
       ]
  ]
  ask persons3 with [size = 4][loop
       [ if (xcor = 14) [ stop ]
       set xcor xcor + 1
       wait 0.2
       ]
   ]
end
to move
  ask persons1 with[size != 4][
   set ycor ycor + 7
  ]
  output-print("Fire team discussion")
  output-print("TeamLead - The plan is to move forward into the forest and extinguish the fire as soon as possible")
  wait 1.5
  output-print("Team member - What about the animal rescue team?")
  wait 1.5
  output-print("Team Lead - They are waiting for transportation support")
  wait 1.5
  output-print("and by the time the vehicle arrives,we need to clear the way for them")
  wait 1.5
  output-print("Team Member - Ok lead")

  ask persons2 with[size != 4][
   set ycor ycor + 7
  ]
  output-print("Animal rescue team discussion")
  output-print("TeamLead - The plan is to wait for the transportation to arrive and when the transportation arrives we move")
  wait 1.5
  output-print("Team member - What about the forest fire team")
  wait 1.5
  output-print("Team Lead - They are proceeding to the forest to clear out the fire")
  wait 1.5
  output-print("and it will be helpful for us if they go first")
  wait 1.5
  output-print("Team Member - yes lead")
   ask persons1 with[size != 4][
   set ycor ycor - 7
  ]
   ask persons2 with[size != 4][
   set ycor ycor - 7
  ]
   ask persons3 with[size = 4][
   set ycor ycor - 7
  ]
  output-print("Police team discussion")
  output-print("TeamLead - We are going to trace out the cause for the fire breaking out")
  wait 1.5
  output-print("Team member - Yes sir")
  wait 1.5
  output-print("Team Lead - We need to collect the evidences for the record")
  wait 1.5
  output-print("Team Member - Ok lead")
  ask persons3 with[size = 4][
   set ycor ycor  + 7
  ]

end
to charge

  ask persons3[
  set ycor ycor + 1
    if(ycor > 0)[
      forward 1
  set heading heading + 10
  ]

  wait 0.2
  ]
end
to attack
  ask persons1[
    if(ycor = 18)
    [stop]
    set ycor ycor + 1
    wait 0.2
     let current-person self
   ask fires with[distance current-person < 2]
   [die]
    ]
end
to goright

  ask persons1[
    if(xcor = 18)
    [stop]
    set xcor xcor + 1
    wait 0.2
     let current-person self
   ask fires with[distance current-person < 2]
   [die]
    ]
end
to godown

  ask persons1[
    if(ycor = -4)
    [stop]
    set ycor ycor - 1
    wait 0.2
     let current-person self
   ask fires with[distance current-person < 2]
   [die]
    ]
end
@#$#@#$#@
GRAPHICS-WINDOW
210
10
805
600
22
21
13.0
1
10
1
1
1
0
1
1
1
-22
22
-21
21
0
0
1
ticks
30.0

BUTTON
11
52
76
85
forest
setpatch
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
102
53
192
86
Ecosystem
settree setzebra setbuff setbird
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
67
194
130
227
clear
clear-all
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
11
97
74
130
fire
setfire
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
949
89
1018
122
Team1
setteam1a setteam1b setteam1c setteam1d setteam1e
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
943
140
1012
173
Team2
setteam2a setteam2b setteam2c setteam2d setteam2e
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
6
341
83
374
simulate
go
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
944
189
1013
222
Team3
setteam3a setteam3b setteam3c setteam3d setteam3e
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
123
342
186
375
back
bak
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
9
243
79
276
T meet
move
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

OUTPUT
840
292
1381
583
11

BUTTON
120
243
186
276
up
attack
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
11
293
74
326
right
goright
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
121
293
184
326
down
godown
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
102
104
165
137
bus
setbus
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
78
422
143
455
gobus
gobus
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
46
472
116
505
charge
charge
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

bird side
false
0
Polygon -7500403 true true 0 120 45 90 75 90 105 120 150 120 240 135 285 120 285 135 300 150 240 150 195 165 255 195 210 195 150 210 90 195 60 180 45 135
Circle -16777216 true false 38 98 14

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

buffalo
false
3
Polygon -6459832 true true 200 193 195 210 180 210 177 196 166 187 140 189 93 191 78 179 75 210 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -16777216 true false 73 210 75 240 60 240 48 208
Polygon -16777216 true false 25 114 16 195 9 204 23 213 25 200 39 123
Rectangle -16777216 false false 180 210 195 240
Rectangle -16777216 true false 180 210 195 240
Circle -16777216 true false 60 90 60
Circle -16777216 true false 114 114 42
Circle -16777216 true false 150 75 60
Line -16777216 false 135 105 165 105
Polygon -16777216 true false 255 90 270 90 255 105 255 90
Polygon -16777216 true false 240 45 240 15 255 60 300 45 270 75 225 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

bus
true
0
Polygon -13345367 true false 15 206 15 150 15 120 30 105 270 105 285 120 285 135 285 206 270 210 30 210
Rectangle -16777216 true false 36 126 231 159
Line -7500403 true 60 135 60 165
Line -7500403 true 60 120 60 165
Line -7500403 true 90 120 90 165
Line -7500403 true 120 120 120 165
Line -7500403 true 150 120 150 165
Line -7500403 true 180 120 180 165
Line -7500403 true 210 120 210 165
Line -7500403 true 240 135 240 165
Rectangle -16777216 true false 15 174 285 182
Circle -16777216 true false 48 187 42
Rectangle -16777216 true false 240 127 276 205
Circle -16777216 true false 195 187 42
Line -7500403 true 257 120 257 207

butterfly
true
12
Polygon -7500403 true false 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true false 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true false 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true false 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
4
Polygon -1 true false 200 193 195 210 180 210 177 196 166 187 140 189 93 191 78 179 75 210 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -16777216 true false 73 210 75 240 60 240 48 208
Polygon -16777216 true false 25 114 16 195 9 204 23 213 25 200 39 123
Rectangle -16777216 false false 180 210 195 240
Rectangle -16777216 true false 180 210 195 240
Circle -16777216 true false 45 90 60
Circle -16777216 true false 129 84 42
Circle -16777216 true false 150 120 60
Line -16777216 false 135 105 165 105
Polygon -16777216 true false 255 90 270 90 255 105 255 90

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fire
false
0
Polygon -7500403 true true 151 286 134 282 103 282 59 248 40 210 32 157 37 108 68 146 71 109 83 72 111 27 127 55 148 11 167 41 180 112 195 57 217 91 226 126 227 203 256 156 256 201 238 263 213 278 183 281
Polygon -955883 true false 126 284 91 251 85 212 91 168 103 132 118 153 125 181 135 141 151 96 185 161 195 203 193 253 164 286
Polygon -2674135 true false 155 284 172 268 172 243 162 224 148 201 130 233 131 260 135 282

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person1
false
0
Circle -6459832 true false 110 5 80
Polygon -955883 true false 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -8630108 true false 127 79 172 94
Polygon -6459832 true false 195 90 240 150 225 180 165 105
Polygon -6459832 true false 105 90 60 150 75 180 135 105
Circle -6459832 true false 110 5 80
Circle -6459832 true false 110 5 80

person2
false
0
Circle -6459832 true false 110 5 80
Polygon -13840069 true false 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -955883 true false 127 79 172 94
Polygon -6459832 true false 195 90 240 150 225 180 165 105
Polygon -6459832 true false 105 90 60 150 75 180 135 105
Circle -6459832 true false 110 5 80
Circle -6459832 true false 110 5 80

person3
false
0
Circle -6459832 true false 110 5 80
Polygon -13345367 true false 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -2674135 true false 127 79 172 94
Polygon -6459832 true false 195 90 240 150 225 180 165 105
Polygon -6459832 true false 105 90 60 150 75 180 135 105
Circle -6459832 true false 110 5 80
Circle -6459832 true false 110 5 80

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

rabbit
false
0
Polygon -7500403 true true 61 150 76 180 91 195 103 214 91 240 76 255 61 270 76 270 106 255 132 209 151 210 181 210 211 240 196 255 181 255 166 247 151 255 166 270 211 270 241 255 240 210 270 225 285 165 256 135 226 105 166 90 91 105
Polygon -7500403 true true 75 164 94 104 70 82 45 89 19 104 4 149 19 164 37 162 59 153
Polygon -7500403 true true 64 98 96 87 138 26 130 15 97 36 54 86
Polygon -7500403 true true 49 89 57 47 78 4 89 20 70 88
Circle -16777216 true false 37 103 16
Line -16777216 false 44 150 104 150
Line -16777216 false 39 158 84 175
Line -16777216 false 29 159 57 195
Polygon -5825686 true false 0 150 15 165 15 150
Polygon -5825686 true false 76 90 97 47 130 32
Line -16777216 false 180 210 165 180
Line -16777216 false 165 180 180 165
Line -16777216 false 180 165 225 165
Line -16777216 false 180 210 210 240

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 35 36 108
Circle -7500403 true true 101 71 127
Circle -7500403 true true 45 90 120
Circle -16777216 true false 45 90 120
Circle -13840069 false false 90 45 60
Circle -16777216 true false 28 28 124
Circle -16777216 true false 111 -9 108
Circle -16777216 true false 90 60 150

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270

zebra
false
3
Polygon -1 true false 200 193 195 210 180 210 177 196 166 187 140 189 93 191 78 179 75 210 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -16777216 true false 73 210 75 240 60 240 48 208
Polygon -16777216 true false 25 114 16 195 9 204 23 213 25 200 39 123
Rectangle -16777216 false false 180 210 195 240
Rectangle -16777216 true false 180 210 195 240
Polygon -16777216 true false 255 90 270 90 255 105 255 90
Polygon -16777216 true false 105 90 120 150 120 75
Polygon -16777216 true false 180 75 165 150 195 75
Polygon -16777216 true false 135 75 135 135 150 75
Polygon -16777216 true false 75 75 75 150
Polygon -16777216 true false 60 75 75 150
Polygon -16777216 true false 60 75 75 150 75 60 75 105 75 150
Polygon -16777216 false false 60 75 75 150 75 75
Polygon -16777216 true false 60 75 75 150 75 75

@#$#@#$#@
NetLogo 5.3.1
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180

@#$#@#$#@
0
@#$#@#$#@
