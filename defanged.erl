-module(defanged).
-export([defanged/1]).

defanged(IpAddr) ->
    string:replace(IpAddr, ".", "[.]", all).
