-module(counter).
-behaviour(gen_server).
-export([start_link/0, increment/0, value/0]).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).

%% Client API
start_link() -> gen_server:start_link({local, ?MODULE}, ?MODULE, 0, []).
increment() -> gen_server:call(?MODULE, increment).
value() -> gen_server:call(?MODULE, get).

%% Server callbacks
init(Initial) -> {ok, Initial}.

handle_call(get, _From, State) -> {reply, State, State}.
handle_cast(increment, State) -> {noreply, State + 1}.
handle_info(_Msg, State) -> {noreply, State}.
terminate(_Reason, _State) -> ok.
code_change(_OldVsn, State, _Extra) -> {ok, State}.