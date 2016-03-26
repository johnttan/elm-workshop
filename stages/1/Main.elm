module Main (..) where

import Html exposing (..)
import Html.Attributes exposing (..)


type alias SearchResult =
  { id : Int
  , name : String
  , stars : Int
  }


type alias Model =
  { query : String
  , result : List SearchResult
  }


model : Model
model =
  { result =
      { id = 1
      , name = "TheSeamau5/elm-checkerboardgrid-tutorial"
      , stars = 66
      }
  }


view : Model -> Html
view model =
  div
    [ class "content" ]
    [ header
        []
        [ -- TODO add the equivalent of <h1>ElmHub</h1> right before the tagline
          h1 [] [ text "ElmHub" ]
        , span
            [ class "tagline" ]
            [ (text "“Like GitHub, but for Elm things.”") ]
        ]
    , ul
        [ class "results" ]
        [ li
            []
            [ span
                [ class "star-count" ]
                [ text (toString model.result.stars) ]
            , a [ href ("https://github.com/" ++ model.result.name) ] [ text ("wowlink") ]
              -- TODO use the model to put a link here that points to
              -- https://github.com/TheSeamau5/elm-checkerboardgrid-tutorial
            ]
        ]
    ]


main : Html
main =
  view model
