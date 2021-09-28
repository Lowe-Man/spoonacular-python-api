-module(spoonacular_inline_response_200_30_ingredients).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_30_ingredients/0]).

-type spoonacular_inline_response_200_30_ingredients() ::
    #{ 'description' => maps:map(),
       'name' := binary(),
       'safety_level' => maps:map()
     }.

encode(#{ 'description' := Description,
          'name' := Name,
          'safety_level' := SafetyLevel
        }) ->
    #{ 'description' => Description,
       'name' => Name,
       'safety_level' => SafetyLevel
     }.
