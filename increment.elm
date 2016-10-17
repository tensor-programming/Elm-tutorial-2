module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.App as App

--main function
main =
    App.beginnerProgram { view = view
                        , model = model
                        , update = update 
                        }



--model


type alias Model =
    Int


model : Model
model =
    0



--update


type Msg
    = Inc
    | Dec


update : Msg -> Model -> Model
update msg model =
    case msg of
        Inc ->
            model + 1

        Dec ->
            model - 1



--view


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Dec ] [ text "-" ]
        , div [] [ text (toString model) ]
        , button [ onClick Inc ] [ text "+" ]
        ]
