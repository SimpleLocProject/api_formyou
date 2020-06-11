# Api_Rails_6_Boilerplate

# Fonctionne de pair avec l'app FRONT, bien suivre les commandes du readme SVP

FRONT : https://github.com/ProjectMyLoc/front_formyou


## Installation

`git clone git@github.com:ProjectMyLoc/api_formyou.git`

`cd api_formyou`

`bundle install`

`echo DEVISE_JWT_SECRET_KEY=\"$(rake secret)\" > .env`

`rails db:create && rails db:migrate && rails db:seed`

`rails s`

Your API is now running on http://localhost:8080

## 🐰 Auteurs
Luca Montaigut : https://github.com/luca-montaigut

Maxime Speroni : https://github.com/Laspargus

Nathan Chateau : https://github.com/nathan-ch

Hadrien Samouillan : https://github.com/DoubleLama

Nans Noel : https://github.com/nans64
