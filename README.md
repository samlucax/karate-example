Este foi um exemplo utilizado durante o primeiro coding dojo do time sobre a ferramenta. 

Pré-requisitos:

1. Java 8+
2. Maven

Passo a passo:

1. Clone o projeto
2. Abra o terminal, navegue para o diretório do projeto e execute os comandos abaixo para atualizar as dependências e executar o teste:

    > mvn clean install
    
    > mvn test -Dtest=DojoTest 

3. Após a execução do teste, será gerado um reporte em html. O caminho é indicado no console do prompt. Se preferir, acesse na pasta target/surefire-reports