--
-- code pour la création des tables
--
CREATE TABLE matériaux(
   id_matériaux uuid,
   libelle_materiaux text,
   PRIMARY KEY(id_materiaux)
);

CREATE TABLE montre(
   id_montre uuid,
   ecran text,
   bracelet text,
   boitier text,
   id_materiau uuid,
   commander boolean,
   id_users uuid,
   PRIMARY KEY(id_montre),
   FOREIGN KEY(id_materiaux) REFERENCES matériaux(id_materiaux),
   FOREIGN KEY(id_user) REFERENCES auth.users(id_user)
);







--
-- code pour la création des vues
--
CREATE VIEW allmontre as
SELECT *
FROM "montre"

CREATE VIEW allmatériaux as
SELECT *
FROM "matériaux"

create view allcuir as 
Select "montre".*
From "montre", "materiaux"
Where "matériaux"."id_materiaux" = "montre"."id_materiaux" AND "materiaux"."libelle_materiaux" = 'cuir'

create view alltissu as 
Select "montre".*
From "montre", "materiaux"
Where "matériaux"."id_materiaux" = "montre"."id_materiaux" AND "materiaux"."libelle_materiaux" = 'tissu'

--
-- code pour la création des policies
--
matériaux :

Policy name : Enable read access for all users
Target roles : x
USING expression : true


montre :

Policy name : Enable insert for authenticated users only
Target roles : authentificated
USING expression : true

Policy name : Enable read access for all users
Target roles : x
USING expression : true

Policy name : Enable update for users based on email
Target roles : x
USING expression : (uid() = id_user)
WITH CHECK expression : (uid() IN ( SELECT allmontre.id_user
                        FROM allmontre))