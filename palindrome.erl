-module(palindrome).
-compile(debug_info).
-export([is_palindrome/1, is_palindrome_list/1]).

is_palindrome(Number) ->
  N = integer_to_list(Number),
  is_palindrome_list(N).

is_palindrome_list([_]) -> true;
is_palindrome_list([A, A]) -> true;
is_palindrome_list([]) -> false;
is_palindrome_list(N) ->
  Head = lists:nth(1, N),
  Last = lists:last(N),
  if Head == Last ->
    is_palindrome_list(lists:droplast(tl(N)));
    true ->
      false
  end.

