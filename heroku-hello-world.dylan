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

  // silly change ...
  // print arguments + TODO enviroment vars
  format-out("arguments: %=\n", application-arguments);
  format-out("port: %=\n", environment-variable("port"));

  // TODO port comes as cmd line arg???
  http-server-main(server: make(<http-server>),
                   before-startup: map-resources);
end function main;

main();
