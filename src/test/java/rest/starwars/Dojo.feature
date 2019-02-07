Feature: Pessoas do StarWars

#   API para desenvolvimento: https://swapi.co/api
#   Sugestão de tag para utilizar no runner: @dojo
#   Site da API: https://github.com/intuit/karate

# Challenges:
#   1. Crie um teste de API que retorne todos os planetas do SW. Valide que TODO o retorno está de acordo com o esperado.
# 	2. Crie um teste de API que retorne todos os filmes. Exiba o título de cada filme.
# 	3. Crie um teste que valide a lista dos personagens (characters) do primeiro filme 'A New Hope'.
# 	4. Crie um teste que valide o modelo da StarShip 9.

Background:

* url "https://swapi.co/api"

@dojo
Scenario: Crie um teste de API que retorne todos os planetas do SW. Valide que TODO o retorno está de acordo com o esperado.
Given path 'planets'
When method get
Then status 200
* def json = read('planetas.json')
And match json == response

@dojo
Scenario: Crie um teste de API que retorne todos os filmes. Exiba o título de cada filme
Given path 'films'
When method get
Then status 200
* def movie = read ('movie.json')
And match movie == response
And print movie.results[0].title

@dojo
Scenario: Crie um teste que valide a lista dos personagens (characters) do primeiro filme 'A New Hope'.
Given path 'films/1'
When method get
Then status 200
* def movie = read ('movie1.json')
And match movie == response
And match movie.characters == response.characters

@dojo
Scenario: Crie um teste que valide o modelo da StarShip 9.
Given path 'starships/9'
When method get
Then status 200
* def starships = "DS-1 Orbital Battle Station"
And print starships
And print response.model
And match starships == response.model
