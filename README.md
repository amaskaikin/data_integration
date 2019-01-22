# Data integrtaion

## Environment

### Ontology

#### Entities:

![entities](https://pp.userapi.com/c850120/v850120025/c2b6a/Bf6koF1G098.jpg)

#### Object properties:

![properties](https://pp.userapi.com/c850120/v850120025/c2b71/jAt7PyRGqaE.jpg)

#### Ontop mappings:

![mappings](https://pp.userapi.com/c850120/v850120025/c2b7a/UypErOOOfnU.jpg)
![mappings](https://pp.userapi.com/c850120/v850120025/c2b90/CCt1tgdKmHo.jpg)
![mappings](https://pp.userapi.com/c850120/v850120025/c2b99/FhA20tp7kWQ.jpg)

### Database settings

We've used h2 database, it's easy to install and use. General structure is the following:

![db_structure](https://pp.userapi.com/c850120/v850120025/c2baa/4S5rhz75TsY.jpg)

You can find full script for db creation [here](create_schemas.sql), and [here](insert_data.sql) is the script inserting test data to tables

## Deploying SPARQL endpoint 

### Setting up Tomcat Server

1. Download and unzip the archive with Tomcat [tomcat-ontop-bundle.zip](https://github.com/ontop/ontop-examples/raw/master/ekaw-tutorial-2016/tomcat-ontop-bundle.zip)
2. Start tomcat from the *bin folder* using the commands: 
	* On Mac/Linux: using the terminal run `sh startup.sh` or  `sh catalina.sh start`.
	* On Windows: click on the executable `startup.bat`.
3. Connect to Sesame Workbench at http://localhost:8080/rdf4j-workbench/ .
4. You will be automatically redirected to the repositories view .

### Setting up rdf4j workbench:

1. Download [OWL ontology file](football.owl) .
2. Download [OBDA mapping file](football.obda) .

3. Click on *New repository*
  * Select *Ontop Virtual RDF Store* from the list.
  * Give an ID to your new repository (ex: Project).
  * Click on *Next*.

On the next page:
  * Specify path to downloaded files
  * Keep the default options.
  * Click on *Create*.
  
## SPARQL Queries examples:

---
#### Get all assistance
```
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?clubMember ?fname ?lname
WHERE {
	?clubMember a :ClubMember ;
		:assistanceCoaches ?assistanceCoaches ;
		foaf:firstName ?fname ;
    	foaf:lastName ?lname ;
}
```
#### Get all club managers

```
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?title ?fname ?lname
WHERE {
	?clubMember a :ClubMember ;
		:managesAt ?manager ;
		foaf:firstName ?fname ;
  		foaf:lastName ?lname .
	?club a :Club ;
		:title ?title .
  	FILTER(?manager = ?club)
}
```
#### Get club coached by specific coach
```
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?cname ?lname ?leagueName
WHERE {
  ?club a :Club ;
    :title ?cname ;
    :coachedBy ?coach ;
    :participatesIn ?league .
  ?coach foaf:lastName ?lname .
  ?league :title ?leagueName .
  filter (?lname = "Simeone")
}
```

#### Find all forwards
```
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
```

#### Find all persons related to specific club
```
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?clubName ?lname ?fname
WHERE {
	{?person a foaf:Person ; :worksAt ?club .}
    union
  	{?person a foaf:Person ; :plays ?club .}
    union
  	{?person a foaf:Person ; :coaches ?club .}
    ?person foaf:lastName ?lname ;
    	foaf:firstName ?fname .
    ?club :title ?clubName .
}
```

#### Get clubs and leagues where clubs participate in
```
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?club_title ?league_title
WHERE {
	?club_id a :Club ;
		:participatesIn ?league ;
		:title ?club_title .
	?league :title ?league_title .
}
```


#### Find players and their clubs
```
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?fname ?lname ?club_title 
WHERE {
	?player a :Player ;
		:plays ?club ;
		foaf:firstName ?fname ;
    	foaf:lastName ?lname .
	?club :title ?club_title .
}
```

#### Find all head coaches
```
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT * {
?headCoach a :HeadCoach ;
	foaf:firstName ?firstName ;
	foaf:lastName ?lastName .
}
```