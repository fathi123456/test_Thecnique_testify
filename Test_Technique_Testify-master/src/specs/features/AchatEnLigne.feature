@achatenligne
Feature: Tester l'achat sur la plateforme SHOPTOOLSQA
  ETQ utlisateur je souhaite acheter un article la plateforme SHOPTOOLSQA

  Background:
    Given Je me connecte sur l'application SHOPTOOLSQA

  @achat
  Scenario:Tester l'achat sur la plateforme SHOPTOOLSQA
    When Je selectionner l'article
    And Je choisis une option de couleur"Black"et une option taille "M"
    And Je clique sur le bouton ADD TO CART          
    And Je vérifie l'affichage de message de succès "“Tokyo Talkies” has been added to your cart."
    And Je clique sur le bouton Wiew cart
    And Je vérifie l'ajout de larticle dans le panier "TOKYO TALKIES"
    And Je vérifie l'affiche de prix total dans le panier "100"
    And Je clique sur le bouton Proceed to checkout
    And Je vérifie la redirection vers le formulaire de payement "BILLING DETAILS"
    And Je remplis les champs prénom "Fathi" et nom " ZEBAA" et pays "Tunisia"et l’adresse " Mareth gabes"et ville "Gabes " et etat "achat en ligne"  et code postale "6080" et numéro de téléphone "+21629720811" et l’adresse mail "iyyadilef123@gmail.com"""
    And Je cocher la case  I HAVE READ ANDAGREE TO THE WEBSITE TERMS AND CONDITIONS
    And Je clique sur le bouton PLACE ORDER
    Then Je vérifie l'achat de la commande "Thank you. Your order has been received"
    