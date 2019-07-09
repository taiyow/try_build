%% minimized sample script to let erlc abort in esl-erlang-22.0.4-1

-module(try_build).

%% No error when delete export sentence
-export([func1/1]).

%% No error when delete parse_transform option
-compile([{parse_transform, lager_transform}]).

%% No error when not using record in func1
-record(state, {key}).

func1(State) ->
  Flag = (State#state.key == undefined),
  lager:debug("Flag = ~p", [Flag]),
  if Flag -> func2(State);
     true -> ok
  end.

func2(_State) ->
    ok.
