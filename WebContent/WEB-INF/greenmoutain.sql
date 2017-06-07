/*==============================================================*/
/* DBMS name:      Sybase AS Anywhere 9                         */
/* Created on:     07/06/2017 13:50:31                          */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_COMMANDE_ASSOCIATI_ETAT') then
    alter table COMMANDE
       delete foreign key FK_COMMANDE_ASSOCIATI_ETAT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COMMANDE_ASSOCIATI_PARTENAI') then
    alter table COMMANDE
       delete foreign key FK_COMMANDE_ASSOCIATI_PARTENAI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COMMANDE_COMMANDEA_COMMANDE') then
    alter table COMMANDEARTICLE
       delete foreign key FK_COMMANDE_COMMANDEA_COMMANDE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COMMANDE_COMMANDEA_ARTICLE') then
    alter table COMMANDEARTICLE
       delete foreign key FK_COMMANDE_COMMANDEA_ARTICLE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LIVRAISO_ASSOCIATI_COMMANDE') then
    alter table LIVRAISON
       delete foreign key FK_LIVRAISO_ASSOCIATI_COMMANDE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LIVRAISO_LIVRAISON_LIVRAISO') then
    alter table LIVRAISONARTICLE
       delete foreign key FK_LIVRAISO_LIVRAISON_LIVRAISO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LIVRAISO_LIVRAISON_ARTICLE') then
    alter table LIVRAISONARTICLE
       delete foreign key FK_LIVRAISO_LIVRAISON_ARTICLE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PARTENAI_ASSOCIATI_TYPEPART') then
    alter table PARTENAIRE
       delete foreign key FK_PARTENAI_ASSOCIATI_TYPEPART
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_STOCK_ASSOCIATI_LIEU') then
    alter table STOCK
       delete foreign key FK_STOCK_ASSOCIATI_LIEU
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_STOCKART_STOCKARTI_ARTICLE') then
    alter table STOCKARTICLE
       delete foreign key FK_STOCKART_STOCKARTI_ARTICLE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_STOCKART_STOCKARTI_STOCK') then
    alter table STOCKARTICLE
       delete foreign key FK_STOCKART_STOCKARTI_STOCK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ARTICLE_PK'
     and t.table_name='ARTICLE'
) then
   drop index ARTICLE.ARTICLE_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ARTICLE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ARTICLE
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_8_FK'
     and t.table_name='COMMANDE'
) then
   drop index COMMANDE.ASSOCIATION_8_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_3_FK'
     and t.table_name='COMMANDE'
) then
   drop index COMMANDE.ASSOCIATION_3_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='COMMANDE_PK'
     and t.table_name='COMMANDE'
) then
   drop index COMMANDE.COMMANDE_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='COMMANDE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table COMMANDE
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='COMMANDEARTICLE2_FK'
     and t.table_name='COMMANDEARTICLE'
) then
   drop index COMMANDEARTICLE.COMMANDEARTICLE2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='COMMANDEARTICLE_FK'
     and t.table_name='COMMANDEARTICLE'
) then
   drop index COMMANDEARTICLE.COMMANDEARTICLE_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='COMMANDEARTICLE_PK'
     and t.table_name='COMMANDEARTICLE'
) then
   drop index COMMANDEARTICLE.COMMANDEARTICLE_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='COMMANDEARTICLE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table COMMANDEARTICLE
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ETAT_PK'
     and t.table_name='ETAT'
) then
   drop index ETAT.ETAT_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ETAT'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ETAT
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='FACTURATION_PK'
     and t.table_name='FACTURATION'
) then
   drop index FACTURATION.FACTURATION_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='FACTURATION'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table FACTURATION
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='LIEU_PK'
     and t.table_name='LIEU'
) then
   drop index LIEU.LIEU_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='LIEU'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table LIEU
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_5_FK'
     and t.table_name='LIVRAISON'
) then
   drop index LIVRAISON.ASSOCIATION_5_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='LIVRAISON_PK'
     and t.table_name='LIVRAISON'
) then
   drop index LIVRAISON.LIVRAISON_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='LIVRAISON'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table LIVRAISON
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='LIVRAISONARTICLE2_FK'
     and t.table_name='LIVRAISONARTICLE'
) then
   drop index LIVRAISONARTICLE.LIVRAISONARTICLE2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='LIVRAISONARTICLE_FK'
     and t.table_name='LIVRAISONARTICLE'
) then
   drop index LIVRAISONARTICLE.LIVRAISONARTICLE_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='LIVRAISONARTICLE_PK'
     and t.table_name='LIVRAISONARTICLE'
) then
   drop index LIVRAISONARTICLE.LIVRAISONARTICLE_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='LIVRAISONARTICLE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table LIVRAISONARTICLE
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_7_FK'
     and t.table_name='PARTENAIRE'
) then
   drop index PARTENAIRE.ASSOCIATION_7_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PARTENAIRE_PK'
     and t.table_name='PARTENAIRE'
) then
   drop index PARTENAIRE.PARTENAIRE_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PARTENAIRE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PARTENAIRE
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_2_FK'
     and t.table_name='STOCK'
) then
   drop index STOCK.ASSOCIATION_2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='STOCK_PK'
     and t.table_name='STOCK'
) then
   drop index STOCK.STOCK_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='STOCK'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table STOCK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='STOCKARTICLE2_FK'
     and t.table_name='STOCKARTICLE'
) then
   drop index STOCKARTICLE.STOCKARTICLE2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='STOCKARTICLE_FK'
     and t.table_name='STOCKARTICLE'
) then
   drop index STOCKARTICLE.STOCKARTICLE_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='STOCKARTICLE_PK'
     and t.table_name='STOCKARTICLE'
) then
   drop index STOCKARTICLE.STOCKARTICLE_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='STOCKARTICLE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table STOCKARTICLE
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TYPEPARTENAIRE_PK'
     and t.table_name='TYPEPARTENAIRE'
) then
   drop index TYPEPARTENAIRE.TYPEPARTENAIRE_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='TYPEPARTENAIRE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table TYPEPARTENAIRE
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='UTILISATEUR_PK'
     and t.table_name='UTILISATEUR'
) then
   drop index UTILISATEUR.UTILISATEUR_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='UTILISATEUR'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table UTILISATEUR
end if;

/*==============================================================*/
/* Table: ARTICLE                                               */
/*==============================================================*/
create table ARTICLE 
(
    IDPRODUIT            integer                        not null default autoincrement,
    LIBELLE              varchar(1024),
    CODE                 varchar(20),
    PRIX                 numeric(8,2),
    constraint PK_ARTICLE primary key (IDPRODUIT)
);

/*==============================================================*/
/* Index: ARTICLE_PK                                            */
/*==============================================================*/
create unique index ARTICLE_PK on ARTICLE (
IDPRODUIT ASC
);

/*==============================================================*/
/* Table: COMMANDE                                              */
/*==============================================================*/
create table COMMANDE 
(
    IDCOMMANDE           integer                        not null default autoincrement,
    IDPARTENAIRE         integer                        not null,
    IDETAT               integer                        not null,
    DATELIVRAISON        date,
    constraint PK_COMMANDE primary key (IDCOMMANDE)
);

/*==============================================================*/
/* Index: COMMANDE_PK                                           */
/*==============================================================*/
create unique index COMMANDE_PK on COMMANDE (
IDCOMMANDE ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_3_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_3_FK on COMMANDE (
IDETAT ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_8_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_8_FK on COMMANDE (
IDPARTENAIRE ASC
);

/*==============================================================*/
/* Table: COMMANDEARTICLE                                       */
/*==============================================================*/
create table COMMANDEARTICLE 
(
	IDCOMMANDEARTICLE	serial,
    IDCOMMANDE           integer                        not null,
    IDPRODUIT            integer                        not null,
    QUANTITE             integer,
    PRIX                 numeric(8,2),
    constraint PK_COMMANDEARTICLE primary key clustered (IDCOMMANDE, IDPRODUIT)
);

/*==============================================================*/
/* Index: COMMANDEARTICLE_PK                                    */
/*==============================================================*/
create unique index COMMANDEARTICLE_PK on COMMANDEARTICLE (
IDCOMMANDEARTICLE ASC,
IDCOMMANDE ASC,
IDPRODUIT ASC
);

/*==============================================================*/
/* Index: COMMANDEARTICLE_FK                                    */
/*==============================================================*/
create  index COMMANDEARTICLE_FK on COMMANDEARTICLE (
IDCOMMANDE ASC
);

/*==============================================================*/
/* Index: COMMANDEARTICLE2_FK                                   */
/*==============================================================*/
create  index COMMANDEARTICLE2_FK on COMMANDEARTICLE (
IDPRODUIT ASC
);

/*==============================================================*/
/* Index: COMMANDEARTICLE3_FK                                   */
/*==============================================================*/
create  index COMMANDEARTICLE3_FK on COMMANDEARTICLE (
IDCOMMANDEARTICLE ASC
);
/*==============================================================*/
/* Table: ETAT                                                  */
/*==============================================================*/
create table ETAT 
(
    IDETAT               integer                        not null default autoincrement,
    LIBELLE              varchar(1024),
    constraint PK_ETAT primary key (IDETAT)
);

/*==============================================================*/
/* Index: ETAT_PK                                               */
/*==============================================================*/
create unique index ETAT_PK on ETAT (
IDETAT ASC
);

/*==============================================================*/
/* Table: FACTURATION                                           */
/*==============================================================*/
create table FACTURATION 
(
    IDFACTURATION        integer                        not null default autoincrement,
    DATELIVRAISON        date,
    ADRESSE              varchar(1024),
    constraint PK_FACTURATION primary key (IDFACTURATION)
);

/*==============================================================*/
/* Index: FACTURATION_PK                                        */
/*==============================================================*/
create unique index FACTURATION_PK on FACTURATION (
IDFACTURATION ASC
);

/*==============================================================*/
/* Table: LIEU                                                  */
/*==============================================================*/
create table LIEU 
(
    ID                   integer                        not null default autoincrement,
    LIBELLE              varchar(1024),
    constraint PK_LIEU primary key (ID)
);

/*==============================================================*/
/* Index: LIEU_PK                                               */
/*==============================================================*/
create unique index LIEU_PK on LIEU (
ID ASC
);

/*==============================================================*/
/* Table: LIVRAISON                                             */
/*==============================================================*/
create table LIVRAISON 
(
    IDLIVRAISON          integer                        not null default autoincrement,
    IDCOMMANDE           integer                        not null,
    DATELIVRAISON        date,
    ADRESSE              varchar(1024),
    constraint PK_LIVRAISON primary key (IDLIVRAISON)
);

/*==============================================================*/
/* Index: LIVRAISON_PK                                          */
/*==============================================================*/
create unique index LIVRAISON_PK on LIVRAISON (
IDLIVRAISON ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_5_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_5_FK on LIVRAISON (
IDCOMMANDE ASC
);

/*==============================================================*/
/* Table: LIVRAISONARTICLE                                      */
/*==============================================================*/
create table LIVRAISONARTICLE 
(
	IDLIVRAISONARTICLE	 serial,
    IDLIVRAISON          integer                        not null,
    IDPRODUIT            integer                        not null,
    QUANTITE             integer,
    DATELIVRAISON        date,
    constraint PK_LIVRAISONARTICLE primary key clustered (IDLIVRAISON, IDPRODUIT)
);

/*==============================================================*/
/* Index: LIVRAISONARTICLE_PK                                   */
/*==============================================================*/
create unique index LIVRAISONARTICLE_PK on LIVRAISONARTICLE (
IDLIVRAISONARTICLE ASC,
IDLIVRAISON ASC,
IDPRODUIT ASC
);

/*==============================================================*/
/* Index: LIVRAISONARTICLE_FK                                   */
/*==============================================================*/
create  index LIVRAISONARTICLE_FK on LIVRAISONARTICLE (
IDLIVRAISON ASC
);

/*==============================================================*/
/* Index: LIVRAISONARTICLE2_FK                                  */
/*==============================================================*/
create  index LIVRAISONARTICLE2_FK on LIVRAISONARTICLE (
IDPRODUIT ASC
);
/*==============================================================*/
/* Index: LIVRAISONARTICLE2_FK                                  */
/*==============================================================*/
create  index LIVRAISONARTICLE3_FK on LIVRAISONARTICLE (
IDLIVRAISONARTICLE ASC
);

/*==============================================================*/
/* Table: PARTENAIRE                                            */
/*==============================================================*/
create table PARTENAIRE 
(
    IDPARTENAIRE         integer                        not null default autoincrement,
    IDTYPEPARTENAIRE     integer                        not null,
    LIBELLE              varchar(1024),
    constraint PK_PARTENAIRE primary key (IDPARTENAIRE)
);

/*==============================================================*/
/* Index: PARTENAIRE_PK                                         */
/*==============================================================*/
create unique index PARTENAIRE_PK on PARTENAIRE (
IDPARTENAIRE ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_7_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_7_FK on PARTENAIRE (
IDTYPEPARTENAIRE ASC
);

/*==============================================================*/
/* Table: STOCK                                                 */
/*==============================================================*/
create table STOCK 
(
    IDSTOCK              integer                        not null default autoincrement,
    ID                   integer                        not null,
    LIBELLE              varchar(1024),
    constraint PK_STOCK primary key (IDSTOCK)
);

/*==============================================================*/
/* Index: STOCK_PK                                              */
/*==============================================================*/
create unique index STOCK_PK on STOCK (
IDSTOCK ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_2_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_2_FK on STOCK (
ID ASC
);

/*==============================================================*/
/* Table: STOCKARTICLE                                          */
/*==============================================================*/
create table STOCKARTICLE 
(
	IDSTOCKARTICLE		serial,
    IDPRODUIT            integer                        not null,
    IDSTOCK              integer                        not null,
    QUANTITE             integer,
    constraint PK_STOCKARTICLE primary key clustered (IDPRODUIT, IDSTOCK)
);

/*==============================================================*/
/* Index: STOCKARTICLE_PK                                       */
/*==============================================================*/
create unique index STOCKARTICLE_PK on STOCKARTICLE (
IDSTOCKARTICLE ASC,
IDPRODUIT ASC,
IDSTOCK ASC
);

/*==============================================================*/
/* Index: STOCKARTICLE_FK                                       */
/*==============================================================*/
create  index STOCKARTICLE_FK on STOCKARTICLE (
IDPRODUIT ASC
);

/*==============================================================*/
/* Index: STOCKARTICLE2_FK                                      */
/*==============================================================*/
create  index STOCKARTICLE2_FK on STOCKARTICLE (
IDSTOCK ASC
);

/*==============================================================*/
/* Index: STOCKARTICLE3_FK                                      */
/*==============================================================*/
create  index STOCKARTICLE3_FK on STOCKARTICLE (
IDSTOCKARTICLE ASC
);
/*==============================================================*/
/* Table: TYPEPARTENAIRE                                        */
/*==============================================================*/
create table TYPEPARTENAIRE 
(
    IDTYPEPARTENAIRE     integer                        not null default autoincrement,
    LIBELLE              varchar(1024),
    constraint PK_TYPEPARTENAIRE primary key (IDTYPEPARTENAIRE)
);

/*==============================================================*/
/* Index: TYPEPARTENAIRE_PK                                     */
/*==============================================================*/
create unique index TYPEPARTENAIRE_PK on TYPEPARTENAIRE (
IDTYPEPARTENAIRE ASC
);

/*==============================================================*/
/* Table: UTILISATEUR                                           */
/*==============================================================*/
create table UTILISATEUR 
(
    IDUTILISATEUR        integer                        not null default autoincrement,
    LIBELLE              varchar(1024),
    constraint PK_UTILISATEUR primary key (IDUTILISATEUR)
);

/*==============================================================*/
/* Index: UTILISATEUR_PK                                        */
/*==============================================================*/
create unique index UTILISATEUR_PK on UTILISATEUR (
IDUTILISATEUR ASC
);

alter table COMMANDE
   add constraint FK_COMMANDE_ASSOCIATI_ETAT foreign key (IDETAT)
      references ETAT (IDETAT)
      on update restrict
      on delete restrict;

alter table COMMANDE
   add constraint FK_COMMANDE_ASSOCIATI_PARTENAI foreign key (IDPARTENAIRE)
      references PARTENAIRE (IDPARTENAIRE)
      on update restrict
      on delete restrict;

alter table COMMANDEARTICLE
   add constraint FK_COMMANDE_COMMANDEA_COMMANDE foreign key (IDCOMMANDE)
      references COMMANDE (IDCOMMANDE)
      on update restrict
      on delete restrict;

alter table COMMANDEARTICLE
   add constraint FK_COMMANDE_COMMANDEA_ARTICLE foreign key (IDPRODUIT)
      references ARTICLE (IDPRODUIT)
      on update restrict
      on delete restrict;

alter table LIVRAISON
   add constraint FK_LIVRAISO_ASSOCIATI_COMMANDE foreign key (IDCOMMANDE)
      references COMMANDE (IDCOMMANDE)
      on update restrict
      on delete restrict;

alter table LIVRAISONARTICLE
   add constraint FK_LIVRAISO_LIVRAISON_LIVRAISO foreign key (IDLIVRAISON)
      references LIVRAISON (IDLIVRAISON)
      on update restrict
      on delete restrict;

alter table LIVRAISONARTICLE
   add constraint FK_LIVRAISO_LIVRAISON_ARTICLE foreign key (IDPRODUIT)
      references ARTICLE (IDPRODUIT)
      on update restrict
      on delete restrict;

alter table PARTENAIRE
   add constraint FK_PARTENAI_ASSOCIATI_TYPEPART foreign key (IDTYPEPARTENAIRE)
      references TYPEPARTENAIRE (IDTYPEPARTENAIRE)
      on update restrict
      on delete restrict;

alter table STOCK
   add constraint FK_STOCK_ASSOCIATI_LIEU foreign key (ID)
      references LIEU (ID)
      on update restrict
      on delete restrict;

alter table STOCKARTICLE
   add constraint FK_STOCKART_STOCKARTI_ARTICLE foreign key (IDPRODUIT)
      references ARTICLE (IDPRODUIT)
      on update restrict
      on delete restrict;

alter table STOCKARTICLE
   add constraint FK_STOCKART_STOCKARTI_STOCK foreign key (IDSTOCK)
      references STOCK (IDSTOCK)
      on update restrict
      on delete restrict;

