Projeto de exemplo, utilizado para estudo de testes de serviços com o Karatê DSL. 

Documentação Karatê DSL: https://github.com/intuit/karate#index

API de Testes (StarWars): https://swapi.co/api

Pré-requisitos:

1. Java 8+
2. Maven

Passo a passo:

1. Clone o projeto
2. Abra o terminal, navegue para o diretório do projeto e execute os comandos abaixo para atualizar as dependências e executar o teste:

    > mvn clean install
    
    > mvn test -Dtest=DojoTest 

3. Após a execução do teste, será gerado um reporte em html. O caminho é indicado no console. Se preferir, acesse na pasta target/surefire-reports
4. Para abrir o projeto, você pode utilizar qualquer editor de texto ou IDE de sua preferência.
