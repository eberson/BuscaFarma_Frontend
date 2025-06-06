#!/bin/sh

#Altere as variáveis abaixo de acordo com a sua necessidade
#na variável repositório, prefira a url do repositório baseada em https para nao termos que configurar SSH
export name='Rafaela Baptista'
export email="rafaelabaptista464@gmail.com"
export repositorio="https://github.com/eggustavo-3h3/BuscaFarma-Flutter-Frontend.git";

#Daqui pra baixo mexa somente se for realmente necessário ou se souber o que está fazendo :P

export branch_name="master"

git config --global user.name $name
git config --global user.email $email

git add .

git commit -am "branch com o código da aula do dia $(date)"

git push origin $branch_name