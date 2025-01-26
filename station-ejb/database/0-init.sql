/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  skrt
 * Created: 22 janv. 2025
 */
-- Désactiver les contraintes pour éviter les erreurs de dépendance
ALTER TABLE IMPOTUSER          DROP CONSTRAINT IMPOTUSER_FK_IDCOMMUNE;
ALTER TABLE payment            DROP CONSTRAINT PAYMENT_FK_IDMAISON;
ALTER TABLE PaymentDetails     DROP CONSTRAINT PAYMENTDETAILS_FK_IDMAISON;
ALTER TABLE PaymentDetails     DROP CONSTRAINT PAYMENTDETAILS_FK_IDPROPRIETAIRE;
ALTER TABLE composant          DROP CONSTRAINT COMPOSANT_FK_IDMATIERE;
ALTER TABLE arrondissement     DROP CONSTRAINT ARRONDISSEMENT_FK_IDCOMMUNE;
ALTER TABLE composant_maison   DROP CONSTRAINT COMPOSANT_MAISON_FK_IDMAISON;
ALTER TABLE composant_maison   DROP CONSTRAINT COMPOSANT_MAISON_FK_IDCOMPOSANT;

-- Supprimer les tables
DROP TABLE composant_maison CASCADE CONSTRAINTS;
DROP TABLE arrondissement CASCADE CONSTRAINTS;
DROP TABLE composant CASCADE CONSTRAINTS;
DROP TABLE matiere CASCADE CONSTRAINTS;
DROP TABLE PaymentDetails CASCADE CONSTRAINTS;
DROP TABLE payment CASCADE CONSTRAINTS;
DROP TABLE MaisonFille CASCADE CONSTRAINTS;
DROP TABLE maison CASCADE CONSTRAINTS;
DROP TABLE Proprietaire CASCADE CONSTRAINTS;
DROP TABLE Prix CASCADE CONSTRAINTS;
DROP TABLE Commune CASCADE CONSTRAINTS;
DROP TABLE IMPOTUSER CASCADE CONSTRAINTS;

-- Vérification si tout est bien supprimé
SELECT * FROM user_tables WHERE table_name IN (
    'IMPOTUSER', 'COMMUNE', 'PRIX', 'PROPRIETAIRE', 'MAISON', 'MAISONFILLE', 
    'PAYMENT', 'PAYMENTDETAILS', 'MATIERE', 'COMPOSANT', 'ARRONDISSEMENT', 'COMPOSANT_MAISON'
);


drop sequence seq_arrondissement;
drop sequence seq_payment;
drop sequence seq_maison;
drop sequence seq_composant;
drop sequence seq_matiere;