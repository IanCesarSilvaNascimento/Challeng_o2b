# Challeng_o2b
Projeto desenvolvido como solução para o desafio global proposto pela O2B no techcamp unimble/22.

# Como usar
* Navegue para o desktop, abra o prompt de cmd e clone o repositório digitando
```csharp
   git clone <URL>
```
## Docker
Criando as imagens docker

* **DataBase**
 
 Navegue pro diretório api e digite
 ```csharp
    docker build -t desafio-mysql-image .
 ```
 Depois inicie o container.
 ```csharp
    docker run -dp 9001:9001 -v ./db:/var/lib/mysql --link desafio-mysql-container --name desafio-node-container desafio-node-image 
 ```
 Acesso ao banco
 1) Para persistir o script.sql no banco do container
 ```csharp
    $docker exec -i desafio-mysql-container mysql -uroot -psecret < db/script.sql  
 ```
 2) Para acessar o shell mysql
 ```csharp
    $docker exec -it desafio-mysql-container /bin/bash 
 ```
 3) digite mysql -u root -p 
 4) informe a senha: secret
 

* **Api**

Navegue pro diretório api e digite
 ```csharp
  docker build -t desafio-node-image .
 ```
 Depois inicie o container.
 ```csharp
    docker run -dp 9001:9001 -v ./api:/home/node/app --link desafio-mysql-container --name desafio-node-container desafio-node-image 
 ```
 
 * **Web**

 Navegue pro diretório api e digite
 ```csharp
    docker build -t desafio-php-image .
 ```
 Depois inicie o container.
 ```csharp
    docker run -dp 8888:80 -v ./web:/var/www/html --link desafio-node-container --name desafio-php-container desafio-php-image 
 ```


# Como usar
* Navegue para o desktop, abra o prompt de cmd e clone o repositório digitando `git clone <url>`
* Abra na sua IDE e digite `dotnet restore` `dotnet clean` `dotnet run`






