Module: dylan-user

define library heroku-hello-world
  use common-dylan;
  use io;
  use http-common;
  use http-server;
  use dsp;
  use system;
end library heroku-hello-world;


define module heroku-hello-world
  use common-dylan;
  use format-out;
  use http-common;
  use http-server;
  use dsp;
  use operating-system;
end module heroku-hello-world;
