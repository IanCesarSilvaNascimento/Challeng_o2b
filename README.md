# Challeng_o2b
Projeto desenvolvido como solução para o desafio global proposto pela O2B no techcamp unimble/22.

# Como usar
* **Ferramentas: Docker desktop e VScode**
* **Navegue para o desktop, abra o prompt de cmd e clone o repositório digitando**
```csharp
   git clone <URL>
```

## Docker
Utilizando o terminal Ubuntu WSL , crie as imagens docker a seguir:

* **DATABASE:** 
 1)Navegue pro diretório db e digite
 ```csharp
    docker build -t <name-mysql-image> .
 ```
 2)Inicie o container (Atente-se para o sinalizador -v responsável por mapear a estrutura de database do host para o container mysql)
 ```csharp
    docker run -d -v ./db/data:/var/lib/mysql --name <name-mysql-container> <name-mysql-image>
 ```
  3)Persista o script.sql criado para o banco.
 ```csharp
    docker exec -i <name-mysql-container> mysql -uroot -p<password> < db/script.sql
 ``` 
  4)Acesse o banco pelo container em execução.
 ```csharp
    $docker exec -it <name-mysql-container> /bin/bash 
 ```
  5)Digite mysql -u root -p 
 ```csharp
   mysql -u root -p 
 ```
  6)Informe a senha:
 ```csharp
    secret
 ```
 * **você deverá ver o resultado dos comandos escritos no script.sql**
 
 ![Captura de tela 2022-04-01 195341](https://user-images.githubusercontent.com/62857753/161352100-67f253d6-a444-4deb-a9a1-005a7fe20863.png)

 

* **Api**

1)Navegue pro diretório api e digite
 ```csharp
  docker build -t <name-node-image> .
 ```
2)Inicie o container ( o container do banco deve está em execução ).
 ```csharp
    docker run -dp 9001:9001 -v ./api:/home/node/app --link <name-mysql-container> --name <name-node-container> <name-node-image> 
 ```
 
 * **Web**

 1)Navegue pro diretório web e digite
 ```csharp
    docker build -t <name-php-image> .
 ```
 2)Depois inicie o container ( o container do banco deve está em execução ).
 ```csharp
    docker run -dp 8888:80 -v ./web:/var/www/html --link <name-node-container> --name <name-php-container> <name-php-image> 
 ```
 ## Como usar
 
 * **Acesse a localhost:9001 no seu navegador para verificar o funcionamento da API-node (Esta API consome o banco e retorna uma lista dos items que existem na tabela para uma rota determinada)**

![Captura de tela 2022-04-01 200001](https://user-images.githubusercontent.com/62857753/161352434-1fcf4038-68a7-4a9a-aa49-712f9e771eea.png)

 * **Acesse a localhost:8888 no seu navegador para verificar o funcionamento da API-php (Esta API consome a API-node e retorna e para uma tela html com os recursos do bootstrap**

![Captura de tela 2022-04-01 200127](https://user-images.githubusercontent.com/62857753/161352490-573e0bef-6b74-4db3-ab0a-4b0ebac04f81.png)






