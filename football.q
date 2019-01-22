[QueryItem="headCoach"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT * {
?headCoach a :HeadCoach ;
foaf:firstName ?firstName ;
foaf:lastName ?lastName .
}

[QueryItem="managers"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?title ?fname
WHERE {
?clubMember a :ClubMember ;
:managesAt ?manager ;
foaf:firstName ?fname .
?club a :Club ;
:title ?title .
FILTER(?manager = ?club)
}

[QueryItem="assistencoach"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?clubMember ?fname
WHERE {
?clubMember a :ClubMember ;
:assistanceCoaches ?assistanceCoaches ;
foaf:firstName ?fname .

}

[QueryItem="club_players"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?fname ?club_title 
WHERE {
?player a :Player ;
:plays ?club ;
foaf:firstName ?fname .
?club :title ?club_title .

}

[QueryItem="participate"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?club_title ?league_title
WHERE {
?club_id a :Club ;
:participatesIn ?league ;
:title ?club_title .
?league :title ?league_title .

}

[QueryItem="all_person"]
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?p ?firstName ?lastName
WHERE {
  ?p a foaf:Person ;
     foaf:firstName ?firstName ;
     foaf:lastName ?lastName .
}

[QueryItem="get_forwards"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?lname ?title ?ptitle
WHERE {
  ?player a :Player ;
    :plays ?club ;
    foaf:lastName ?lname ;
    :hasPosition ?position .
  ?club :title ?title .
  ?position :title ?ptitle .
  filter(?ptitle = "FW" || ?ptitle = "Forward")
}
