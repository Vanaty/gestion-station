/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  skrt
 * Created: 22 janv. 2025
 */
delete from arrondissement;
delete from payment;
delete from composant_maison;
delete from maison;
delete from composant;
delete from matiere;

drop sequence seq_arrondissement;
drop sequence seq_payment;
drop sequence seq_maison;
drop sequence seq_composant;
drop sequence seq_matiere;