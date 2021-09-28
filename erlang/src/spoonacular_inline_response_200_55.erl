-module(spoonacular_inline_response_200_55).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_55/0]).

-type spoonacular_inline_response_200_55() ::
    #{ 'answerText' := binary(),
       'media' := list()
     }.

encode(#{ 'answerText' := AnswerText,
          'media' := Media
        }) ->
    #{ 'answerText' => AnswerText,
       'media' => Media
     }.
