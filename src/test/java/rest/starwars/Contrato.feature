Feature: Pessoas do StarWars - Teste de contrato

Background:

* url "https://swapi.co/api"

* def peopleContract = read('peopleContract.json')

@contrato
Scenario: Validar o contrato de People
	Given path 'people/1'
	When method GET
	Then status 200
	And match response == peopleContract
	* print peopleContract
	* print response

