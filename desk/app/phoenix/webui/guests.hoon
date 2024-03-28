/-  *phoenix
/+  phoenix, rudder, phoenix-style
::
^-  (page:rudder records-0 command)
|_  [=bowl:gall order:rudder records-0]
+*  phx   ~(. phoenix bowl)
++  final  (alert:rudder url.request build)
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder command)
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?~  what=(~(get by args) 'what')  ~
  ~&  >  [%what what]
  ?+    u.what  ~
      %add-guest
    ?~  who=(slaw %p (~(gut by args) 'who' ''))  ~
    [%add-guest u.who]
  ::
      %del-guest
    ?~  who=(slaw %p (~(gut by args) 'who' ''))  ~
    [%del-guest u.who]
  ==
::
++  build
  |=  $:  arg=(list [k=@t v=@t])
          msg=(unit [o=? =@t])
      ==
  ^-  reply:rudder
  |^  [%page page]
  ::
  ++  page
    ^-  manx
    ;html
      ;head
        ;title:"%phoenix"
        ;meta(charset "utf-8");
        ;meta(name "viewport", content "width=device-width, initial-scale=1");
        ;style:"{(trip style:phoenix-style)}"
      ==
      ;body
        ::  links
        ;a/"/apps/phoenix"
          ;h2:"%phoenix"
        ==
        ;a/"/apps/phoenix/backup"
          ;h2:"backup"
        ==
        ;a/"/apps/phoenix/offers"
          ;h2:"offers"
        ==
        ;a/"/apps/phoenix/guests"
          ;h2:"guests"
        ==

        ;h4:"agent backup & restore"

        ;+  ?~  msg  ;p:""
            ?:  o.u.msg
              ;p.green:"{(trip t.u.msg)}"
            ;p.red:"{(trip t.u.msg)}"
        ;table#phoenix
          ;form(method "post")
            ::  table header
            ;tr
              ;td
                ;button(type "submit", name "what", value "add-guest"):"+"
              ==
              ;td
                ;input(type "text", name "who", placeholder "~sampel");
              ==
            ==
            ;tr(style "font-weight: bold")
              ;td(align "center"):"~"
              ;td(align "center"):"guest"
            ==
          ==    ::  form
          ;*  work
        ==
      ==  ::  body
    ==    ::  html
  ::
  ++  work
    ^-  (list manx)
    %+  turn  (sort ~(tap in guests) aor)
    |=  guest=ship
    ;tr
       ::  del-guest
       ;td
         ;form(method "post")
           ;button(type "submit", name "what", value "del-guest"):"-"
           ;input(type "hidden", name "who", value (scow %p guest));
         ==
       ==
       ::  guest
       ;td(align "right"):"{<guest>}"
    ==
  --
--
