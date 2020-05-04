-module(candies).
-export([candies/2]).

candies(CandiesList, ExtraCandies) ->
    [X+ExtraCandies >= lists:max(CandiesList) || X <- CandiesList].