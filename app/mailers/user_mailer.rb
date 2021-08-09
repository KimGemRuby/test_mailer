class UserMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'


    def welcome_email(user)
        #on recupere l'instance user pour emsuite pouvoir la passer dans la viw en @user
        @user = user
        
        #on definit une variable @url qu'on utilisera dans la view d'email
        @url = 'http:monsite.fr/login'

        #c'est cet appel a mail() qui permet d'envoyer l'email en definissant destinataire et sujet
        mail(to: @user.email, subject: 'Bienvenue chez nous !')
         
    end
end
