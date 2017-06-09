/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     07/06/2017 15:47:41                          */
/*==============================================================*/


drop index ARTICLE_PK;

drop table ARTICLE;

drop index ASSOCIATION_8_FK;

drop index ASSOCIATION_3_FK;

drop index COMMANDE_PK;

drop table COMMANDE;

drop index COMMANDEARTICLE2_FK;

drop index COMMANDEARTICLE_FK;

drop index COMMANDEARTICLE_PK;

drop table COMMANDEARTICLE;

drop index ETAT_PK;

drop table ETAT;

drop index FACTURATION_PK;

drop table FACTURATION;

drop index LIEU_PK;

drop table LIEU;

drop index ASSOCIATION_5_FK;

drop index LIVRAISON_PK;

drop table LIVRAISON;

drop index LIVRAISONARTICLE2_FK;

drop index LIVRAISONARTICLE_FK;

drop index LIVRAISONARTICLE_PK;

drop table LIVRAISONARTICLE;

drop index ASSOCIATION_7_FK;

drop index PARTENAIRE_PK;

drop table PARTENAIRE;

drop index ASSOCIATION_2_FK;

drop index STOCK_PK;

drop table STOCK;

drop index STOCKARTICLE2_FK;

drop index STOCKARTICLE_FK;

drop index STOCKARTICLE_PK;

drop table STOCKARTICLE;

drop index TYPEPARTENAIRE_PK;

drop table TYPEPARTENAIRE;

drop index UTILISATEUR_PK;

drop table UTILISATEUR;

drop sequence S_ARTICLE;

drop sequence S_COMMANDE;

drop sequence S_ETAT;

drop sequence S_FACTURATION;

drop sequence S_LIEU;

drop sequence S_LIVRAISON;

drop sequence S_PARTENAIRE;

drop sequence S_STOCK;

drop sequence S_TYPEPARTENAIRE;

drop sequence S_UTILISATEUR;

create sequence S_ARTICLE;

create sequence S_COMMANDE;

create sequence S_ETAT;

create sequence S_FACTURATION;

create sequence S_LIEU;

create sequence S_LIVRAISON;

create sequence S_PARTENAIRE;

create sequence S_STOCK;

create sequence S_TYPEPARTENAIRE;

create sequence S_UTILISATEUR;

/*==============================================================*/
/* Table: ARTICLE                                               */
/*==============================================================*/
create table ARTICLE (
   IDARTICLE            SERIAL not null,
   LIBELLE              VARCHAR(1024)        null,
   CODE                 VARCHAR(20)          null,
   PRIX                 NUMERIC(8,2)         null,
   constraint PK_ARTICLE primary key (IDARTICLE)
);

/*==============================================================*/
/* Index: ARTICLE_PK                                            */
/*==============================================================*/
create unique index ARTICLE_PK on ARTICLE (
IDARTICLE
);

/*==============================================================*/
/* Table: COMMANDE                                              */
/*==============================================================*/
create table COMMANDE (
   IDCOMMANDE           SERIAL not null,
   IDPARTENAIRE         INT4                 not null,
   IDETAT               INT4                 not null,
   DATELIVRAISON        DATE                 null,
   constraint PK_COMMANDE primary key (IDCOMMANDE)
);

/*==============================================================*/
/* Index: COMMANDE_PK                                           */
/*==============================================================*/
create unique index COMMANDE_PK on COMMANDE (
IDCOMMANDE
);

/*==============================================================*/
/* Index: ASSOCIATION_3_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_3_FK on COMMANDE (
IDETAT
);

/*==============================================================*/
/* Index: ASSOCIATION_8_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_8_FK on COMMANDE (
IDPARTENAIRE
);

/*==============================================================*/
/* Table: COMMANDEARTICLE                                       */
/*==============================================================*/
create table COMMANDEARTICLE (
   IDCOMMANDEARTICLE	INT4				 not null,
   IDCOMMANDE           INT4                 not null,
   IDARTICLE            INT4                 not null,
   QUANTITE             INT4                 null,
   PRIX                 NUMERIC(8,2)         null,
   constraint PK_COMMANDEARTICLE primary key (IDCOMMANDEARTICLE)
);

/*==============================================================*/
/* Index: COMMANDEARTICLE_PK                                    */
/*==============================================================*/
create unique index COMMANDEARTICLE_PK on COMMANDEARTICLE (
IDCOMMANDEARTICLE,
IDCOMMANDE,
IDARTICLE
);

/*==============================================================*/
/* Index: COMMANDEARTICLE_FK                                    */
/*==============================================================*/
create  index COMMANDEARTICLE_FK on COMMANDEARTICLE (
IDCOMMANDE
);

/*==============================================================*/
/* Index: COMMANDEARTICLE2_FK                                   */
/*==============================================================*/
create  index COMMANDEARTICLE2_FK on COMMANDEARTICLE (
IDARTICLE
);

/*==============================================================*/
/* Table: ETAT                                                  */
/*==============================================================*/
create table ETAT (
   IDETAT               SERIAL not null,
   LIBELLE              VARCHAR(1024)        null,
   constraint PK_ETAT primary key (IDETAT)
);

/*==============================================================*/
/* Index: ETAT_PK                                               */
/*==============================================================*/
create unique index ETAT_PK on ETAT (
IDETAT
);

/*==============================================================*/
/* Table: FACTURATION                                           */
/*==============================================================*/
create table FACTURATION (
   IDFACTURATION        SERIAL not null,
   DATELIVRAISON        DATE                 null,
   ADRESSE              VARCHAR(1024)        null,
   constraint PK_FACTURATION primary key (IDFACTURATION)
);

/*==============================================================*/
/* Index: FACTURATION_PK                                        */
/*==============================================================*/
create unique index FACTURATION_PK on FACTURATION (
IDFACTURATION
);

/*==============================================================*/
/* Table: LIEU                                                  */
/*==============================================================*/
create table LIEU (
   IDLIEU                   SERIAL not null,
   LIBELLE              VARCHAR(1024)        null,
   constraint PK_LIEU primary key (IDLIEU)
);

/*==============================================================*/
/* Index: LIEU_PK                                               */
/*==============================================================*/
create unique index LIEU_PK on LIEU (
IDLIEU
);

/*==============================================================*/
/* Table: LIVRAISON                                             */
/*==============================================================*/
create table LIVRAISON (
   IDLIVRAISON          SERIAL not null,
   IDCOMMANDE           INT4                 not null,
   DATELIVRAISON        DATE                 null,
   ADRESSE              VARCHAR(1024)        null,
   constraint PK_LIVRAISON primary key (IDLIVRAISON)
);

/*==============================================================*/
/* Index: LIVRAISON_PK                                          */
/*==============================================================*/
create unique index LIVRAISON_PK on LIVRAISON (
IDLIVRAISON
);

/*==============================================================*/
/* Index: ASSOCIATION_5_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_5_FK on LIVRAISON (
IDCOMMANDE
);

/*==============================================================*/
/* Table: LIVRAISONARTICLE                                      */
/*==============================================================*/
create table LIVRAISONARTICLE (
   IDLIVRAISONARTICLE   INT4				 not null,
   IDLIVRAISON          INT4                 not null,
   IDARTICLE            INT4                 not null,
   QUANTITE             INT4                 null,
   DATELIVRAISON        DATE                 null,
   constraint PK_LIVRAISONARTICLE primary key (IDLIVRAISONARTICLE)
);

/*==============================================================*/
/* Index: LIVRAISONARTICLE_PK                                   */
/*==============================================================*/
create unique index LIVRAISONARTICLE_PK on LIVRAISONARTICLE (
IDLIVRAISONARTICLE,
IDLIVRAISON,
IDARTICLE
);

/*==============================================================*/
/* Index: LIVRAISONARTICLE_FK                                   */
/*==============================================================*/
create  index LIVRAISONARTICLE_FK on LIVRAISONARTICLE (
IDLIVRAISON
);

/*==============================================================*/
/* Index: LIVRAISONARTICLE2_FK                                  */
/*==============================================================*/
create  index LIVRAISONARTICLE2_FK on LIVRAISONARTICLE (
IDARTICLE
);

/*==============================================================*/
/* Table: PARTENAIRE                                            */
/*==============================================================*/
create table PARTENAIRE (
   IDPARTENAIRE         SERIAL not null,
   IDTYPEPARTENAIRE     INT4                 not null,
   LIBELLE              VARCHAR(1024)        null,
   constraint PK_PARTENAIRE primary key (IDPARTENAIRE)
);

/*==============================================================*/
/* Index: PARTENAIRE_PK                                         */
/*==============================================================*/
create unique index PARTENAIRE_PK on PARTENAIRE (
IDPARTENAIRE
);

/*==============================================================*/
/* Index: ASSOCIATION_7_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_7_FK on PARTENAIRE (
IDTYPEPARTENAIRE
);

/*==============================================================*/
/* Table: STOCK                                                 */
/*==============================================================*/
create table STOCK (
   IDSTOCK              SERIAL not null,
   ID                   INT4                 not null,
   LIBELLE              VARCHAR(1024)        null,
   constraint PK_STOCK primary key (IDSTOCK)
);

/*==============================================================*/
/* Index: STOCK_PK                                              */
/*==============================================================*/
create unique index STOCK_PK on STOCK (
IDSTOCK
);

/*==============================================================*/
/* Index: ASSOCIATION_2_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_2_FK on STOCK (
ID
);

/*==============================================================*/
/* Table: STOCKARTICLE                                          */
/*==============================================================*/
create table STOCKARTICLE (
   IDSTOCKARTICLE		INT4				 not null,
   IDARTICLE            INT4                 not null,
   IDSTOCK              INT4                 not null,
   QUANTITE             INT4                 null,
   constraint PK_STOCKARTICLE primary key (IDSTOCKARTICLE)
);

/*==============================================================*/
/* Index: STOCKARTICLE_PK                                       */
/*==============================================================*/
create unique index STOCKARTICLE_PK on STOCKARTICLE (
IDARTICLE,
IDSTOCK
);

/*==============================================================*/
/* Index: STOCKARTICLE_FK                                       */
/*==============================================================*/
create  index STOCKARTICLE_FK on STOCKARTICLE (
IDARTICLE
);

/*==============================================================*/
/* Index: STOCKARTICLE2_FK                                      */
/*==============================================================*/
create  index STOCKARTICLE2_FK on STOCKARTICLE (
IDSTOCK
);

/*==============================================================*/
/* Table: TYPEPARTENAIRE                                        */
/*==============================================================*/
create table TYPEPARTENAIRE (
   IDTYPEPARTENAIRE     SERIAL not null,
   LIBELLE              VARCHAR(1024)        null,
   constraint PK_TYPEPARTENAIRE primary key (IDTYPEPARTENAIRE)
);

/*==============================================================*/
/* Index: TYPEPARTENAIRE_PK                                     */
/*==============================================================*/
create unique index TYPEPARTENAIRE_PK on TYPEPARTENAIRE (
IDTYPEPARTENAIRE
);

/*==============================================================*/
/* Table: UTILISATEUR                                           */
/*==============================================================*/
create table UTILISATEUR (
   IDUTILISATEUR        SERIAL not null,
   LIBELLE              VARCHAR(1024)        null,
   constraint PK_UTILISATEUR primary key (IDUTILISATEUR)
);

/*==============================================================*/
/* Index: UTILISATEUR_PK                                        */
/*==============================================================*/
create unique index UTILISATEUR_PK on UTILISATEUR (
IDUTILISATEUR
);

alter table COMMANDE
   add constraint FK_COMMANDE_ASSOCIATI_ETAT foreign key (IDETAT)
      references ETAT (IDETAT)
      on delete restrict on update restrict;

alter table COMMANDE
   add constraint FK_COMMANDE_ASSOCIATI_PARTENAI foreign key (IDPARTENAIRE)
      references PARTENAIRE (IDPARTENAIRE)
      on delete restrict on update restrict;

alter table COMMANDEARTICLE
   add constraint FK_COMMANDE_COMMANDEA_COMMANDE foreign key (IDCOMMANDE)
      references COMMANDE (IDCOMMANDE)
      on delete restrict on update restrict;

alter table COMMANDEARTICLE
   add constraint FK_COMMANDE_COMMANDEA_ARTICLE foreign key (IDARTICLE)
      references ARTICLE (IDARTICLE)
      on delete restrict on update restrict;

alter table LIVRAISON
   add constraint FK_LIVRAISO_ASSOCIATI_COMMANDE foreign key (IDCOMMANDE)
      references COMMANDE (IDCOMMANDE)
      on delete restrict on update restrict;

alter table LIVRAISONARTICLE
   add constraint FK_LIVRAISO_LIVRAISON_LIVRAISO foreign key (IDLIVRAISON)
      references LIVRAISON (IDLIVRAISON)
      on delete restrict on update restrict;

alter table LIVRAISONARTICLE
   add constraint FK_LIVRAISO_LIVRAISON_ARTICLE foreign key (IDARTICLE)
      references ARTICLE (IDARTICLE)
      on delete restrict on update restrict;

alter table PARTENAIRE
   add constraint FK_PARTENAI_ASSOCIATI_TYPEPART foreign key (IDTYPEPARTENAIRE)
      references TYPEPARTENAIRE (IDTYPEPARTENAIRE)
      on delete restrict on update restrict;

alter table STOCK
   add constraint FK_STOCK_ASSOCIATI_LIEU foreign key (ID)
      references LIEU (IDLIEU)
      on delete restrict on update restrict;

alter table STOCKARTICLE
   add constraint FK_STOCKART_STOCKARTI_ARTICLE foreign key (IDARTICLE)
      references ARTICLE (IDARTICLE)
      on delete restrict on update restrict;

alter table STOCKARTICLE
   add constraint FK_STOCKART_STOCKARTI_STOCK foreign key (IDSTOCK)
      references STOCK (IDSTOCK)
      on delete restrict on update restrict;

