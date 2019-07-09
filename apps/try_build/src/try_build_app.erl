%%%-------------------------------------------------------------------
%% @doc try_build public API
%% @end
%%%-------------------------------------------------------------------

-module(try_build_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    try_build_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
