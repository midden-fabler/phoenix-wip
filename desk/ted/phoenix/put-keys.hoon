/-  spider
/+  io=strandio, phoenix
^-  thread:spider
|=  arg=vase
=/  m  (strand:rand ,vase)
;<  =bowl:rand  bind:m  get-bowl:io
|^  ^-  form:m
    ;<  keys=(set @)  bind:m  (scry:io (set @) /gx/phoenix/keys/noun)
    =/  dat=@t
      (of-wain:format (turn ~(tap in keys) (cury scot %ux)))
    ;<  ~  bind:m  (send-raw-card:io (put-keys dat))
    (pure:m !>(%done))
::
++  put-keys
  |=  dat=@
  ^-  card:agent:gall
  =/  ship-sig=@t  (crip +:(scow %p our.bowl))
  =/  dir=path  /phoenix/[ship-sig]/keys
  =/  fil=path
    :_  /'txt'
    %-  reel  :_  (cury cat 3)
    %+  join  '-'
    `path`/[ship-sig]/keys/(pretty-date:phoenix now.bowl)
  =/  =path  (weld dir fil)
  =/  =cage  [%drum-put !>([path dat])]
  [%pass / %agent [our.bowl %hood] %poke cage]
--
