net_kernel:connect_node('node2@host').
node().

% Spawn a process on another node
Pid = spawn(node2@host, fun() ->
io:format('running on ~w~n', [node()])
end).