Module: heroku-hello-world
Synopsis: 
Author: 
Copyright: 

define class <demo-page> (<dylan-server-page>)
end;

define function map-resources
    (server :: <http-server>)
  // two URLs map to the home page
  let home = make(<demo-page>, source: "home.dsp");
  add-resource(server, "/", home);
end function map-resources;

define function main
    ()
  // TODO port comes as cmd line arg???
  http-server-main(server: make(<http-server>, listeners: #("0.0.0.0:80")),
                   before-startup: map-resources);
end function main;

format-out("arguments:\n")
for (arg in application-arguments)
  format-out("%=\n", arg)
end for

main();
