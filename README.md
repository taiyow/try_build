try_build
=====

An Erlang source file to make Erlang copmiler abort during build

Build
-----

    $ ./rebar3 compile

Result
------

```
try_build: function func1/1+85:
  Internal consistency check failed - please report this bug.
  Instruction: {call_last,1,{f,11},7}
  Error:       {bad_arg_type,{x,0},
                             {tuple,2,#{{integer,1} => {atom,state}}},
                             {tuple,2,
                                    #{{integer,1} => {atom,state},
                                      {integer,2} => {atom,undefined}}}}:
```

My Environment
--------------

* OS/Distribution: `CentOS Linux release 7.5.1804 (Core)`
* kernel: `3.10.0-862.3.3.el7.x86_64`
* Erlang/OTP: `esl-erlang-22.0.4-1.x86_64`
