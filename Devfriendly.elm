port module Devfriendly exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Json.Decode as Decode exposing (Decoder, field, list)
import Http


-- PORTS


port moveMap : ( Town, List Place ) -> Cmd msg



-- MODEL


type alias Model =
    { towns : List Town
    , places : List Place
    }


type alias Town =
    { name : String
    , latitude : Float
    , longitude : Float
    , defaultZoom : Int
    }


type alias Place =
    { name : String
    , latitude : Float
    , longitude : Float
    }



-- UPDATE


type Msg
    = TownSelected Town
    | GetTowns (Result Http.Error (List Town))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        TownSelected town ->
            ( model, moveMap ( town, model.places ) )

        GetTowns (Ok towns) ->
            ( { model | towns = towns }, Cmd.none )

        GetTowns (Err error) ->
            let
                _ =
                    Debug.log "Get Towns Failed" error
            in
                ( { model | towns = [] }, Cmd.none )



-- VIEW


viewTowns : List Town -> Html Msg
viewTowns towns =
    let
        townsLi =
            List.map (\town -> li [ onClick (TownSelected town) ] [ text town.name ]) towns
    in
        ul [ id "towns" ] townsLi


view : Model -> Html Msg
view model =
    viewTowns model.towns



-- Commands


loadTowns : String -> Cmd Msg
loadTowns url =
    Decode.list townDecoder
        |> Http.get townsUrl
        |> Http.send GetTowns



-- Decoder


townDecoder : Decoder Town
townDecoder =
    Decode.map4 Town
        (field "name" Decode.string)
        (field "lat" Decode.float)
        (field "lon" Decode.float)
        (field "defaultZoom" Decode.int)



-- MAIN


townsUrl : String
townsUrl =
    "http://localhost:8000/towns.json"


main : Program Never Model Msg
main =
    let
        initialModel =
            { towns = [], places = places }
    in
        Html.program
            { init = ( initialModel, loadTowns townsUrl )
            , view = view
            , update = update
            , subscriptions = \_ -> Sub.none
            }


places : List Place
places =
    [ Place "L'anartiste" 43.598183 1.4418379
    , Place "Partisan Café" 44.8305 -0.56764
    ]
