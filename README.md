Dev friendly places
===================
A collection of nice places where developers can work fine and some useful informations about these places (wifi ? power ? ...) on the map of a location.

Current locations
-----------------
- Albi: [https://devfriendlyplaces.github.io/elm-site/#albi][albi]
 - Angers: [https://devfriendlyplaces.github.io/elm-site/#angers][angers]
 - Amsterdam: [https://devfriendlyplaces.github.io/elm-site/#amsterdam][amsterdam]
 - Arles: [https://devfriendlyplaces.github.io/elm-site/#arles][arles]
 - Barcelona: [https://devfriendlyplaces.github.io/elm-site/#barcelona][barcelona]
 - Berlin: [https://devfriendlyplaces.github.io/elm-site/#berlin][berlin]
 - Bordeaux: [https://devfriendlyplaces.github.io/elm-site/#bordeaux][bordeaux]
 - Cumbria: [https://devfriendlyplaces.github.io/elm-site/#cumbria][cumbria]
 - Dakar: [https://devfriendlyplaces.github.io/elm-site/#dakar][dakar]
 - Foix: [https://devfriendlyplaces.github.io/elm-site/#foix][foix]
 - Lille: [https://devfriendlyplaces.github.io/elm-site/#lille][lille]
 - London: [https://devfriendlyplaces.github.io/elm-site/#london][london]
 - Lyon: [https://devfriendlyplaces.github.io/elm-site/#lyon][lyon]
 - Marseille: [https://devfriendlyplaces.github.io/elm-site/#marseille][marseille]
 - Montpellier: [https://devfriendlyplaces.github.io/elm-site/#montpellier][montpellier]
 - Nantes: [https://devfriendlyplaces.github.io/elm-site/#nantes][nantes]
 - Oxford: [https://devfriendlyplaces.github.io/elm-site/#oxford][oxford]
 - Paris: [https://devfriendlyplaces.github.io/elm-site/#paris][paris]
 - Saint-Étienne: [https://devfriendlyplaces.github.io/elm-site/#saint-etienne][saint-etienne]
 - Saint-Louis: [https://devfriendlyplaces.github.io/elm-site/#saint-louis][saint-louis]
 - Toulon: [https://devfriendlyplaces.github.io/elm-site/#toulon][toulon]
 - Toulouse: [https://devfriendlyplaces.github.io/elm-site/#toulouse][toulouse]

Contribute
----------
### What kind of place can I add?
Devfriendlyplaces is meant to list places that are not meant for work, but where you could without having to justify yourself or feeling judged or not welcome.
For example coffee shop, library, theater hall, ...
If when thinking to that place you can say yes to the two following questions:

* do I feel comfortable to work here?
* could I go there for reasons not related to work?

then they are nice places to add. Both criteria are mandatory.

### Add places to an existing location
That is easy, go on this repo: [devfriendlyplaces/data](https://github.com/devfriendlyplaces/data) and just edit the json file `locations/yourlocation.json` and submit a pull request (where `yourlocation` is the name of your location).

### Add a new location
There are two steps:

* add your location information in the `locations/locations.json` file. Look how other locations are defined. All field are mandatory.
* create the new `locations/yourlocation.json` file, see the example below.

### Exemple of yourlocation.json
``yourlocation.json`` example, to adjust to your needs:

```json

{ "places": [
    {
        "name": "Bibliothèque d’Étude et du Patrimoine",
        "openHours": "Friday to Saturday: 10h00 - 19h00",
        "lat": 43.607851,
        "lon": 1.443869,
        "address": "1, Rue du Périgord",
        "type" : "public place",
        "power": {"available": true, "comment": "directly on most of the tables"},
        "wifi": {"available": false},
        "url": "http://www.bibliotheque.toulouse.fr/bep-lieu.html"
    },
    {
      "name": "Another stuff... etc.",
      "lat" : 43.607378,
      "lon" : 1.4399286
    }
  ]
}

```

please note:

* The ``places`` is a list, you can append several places.
* the fields "name", "lat" and "long" are mandatory. Add as many details as needed to provide complete information.
* "comment" are optional

Once your pull request is merged and deployed, your map will be accessible at the url with /#yourLocation.


### Improve code / add feature
Open issue, fork, commit and pull request. But you already know that :)

Please, don't improve code/add new feature and add new places/locations in the same pull request.
