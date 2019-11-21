USE [master]
GO
SET IDENTITY_INSERT [dbo].[Preguntas] ON 

INSERT [dbo].[Preguntas] ([id], [texto], [categoria]) VALUES (1, N'Cuál es la tercer ciudad más poblada de Argentina?', N'Argentina')
INSERT [dbo].[Preguntas] ([id], [texto], [categoria]) VALUES (2, N'Cuando cumple Michu?', N'Labo')
INSERT [dbo].[Preguntas] ([id], [texto], [categoria]) VALUES (3, N'Cuando cumple Nicky?', N'Labo')
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
SET IDENTITY_INSERT [dbo].[Respuestas] ON 

INSERT [dbo].[Respuestas] ([id], [idPreg], [texto], [opcion], [correcta]) VALUES (1, 1, N'Rosario', N'A', 1)
INSERT [dbo].[Respuestas] ([id], [idPreg], [texto], [opcion], [correcta]) VALUES (2, 1, N'Cordoba', N'B', 0)
INSERT [dbo].[Respuestas] ([id], [idPreg], [texto], [opcion], [correcta]) VALUES (3, 1, N'Mendoza', N'C', 0)
INSERT [dbo].[Respuestas] ([id], [idPreg], [texto], [opcion], [correcta]) VALUES (4, 2, N'5 de Septiembre', N'A', 1)
INSERT [dbo].[Respuestas] ([id], [idPreg], [texto], [opcion], [correcta]) VALUES (5, 2, N'5 de Noviembre', N'B', 0)
INSERT [dbo].[Respuestas] ([id], [idPreg], [texto], [opcion], [correcta]) VALUES (6, 2, N'9 de Septiembre', N'C', 0)
INSERT [dbo].[Respuestas] ([id], [idPreg], [texto], [opcion], [correcta]) VALUES (7, 3, N'26 de Marzo', N'A', 1)
INSERT [dbo].[Respuestas] ([id], [idPreg], [texto], [opcion], [correcta]) VALUES (8, 3, N'26 de Mayo', N'B', 0)
INSERT [dbo].[Respuestas] ([id], [idPreg], [texto], [opcion], [correcta]) VALUES (9, 3, N'16 de Marzo', N'C', 0)
SET IDENTITY_INSERT [dbo].[Respuestas] OFF
SET IDENTITY_INSERT [dbo].[Ingredientes] ON 

INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (1, N'Leche')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (2, N'Huevo')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (3, N'Harina')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (4, N'Aceite')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (5, N'Sal')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (7, N'Azucar')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (8, N'Pimienta')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (10, N'Chocolate')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (11, N'Queso')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (12, N'Jamon Crudo')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (13, N'Carne')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (14, N'Pollo')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (15, N'Jamon Cocido')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (16, N'Tomate')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (17, N'Cebolla')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (18, N'Lechuga')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (19, N'Zanahoria')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (20, N'Rucula')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (21, N'Aceitunas')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (22, N'Pan Rallado')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (23, N'Salsa de Tomate')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (24, N'Ravioles')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (25, N'Arroz Blanco')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (26, N'Arroz Yamani')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (27, N'Esparragaos')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (28, N'Panceta')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (29, N'Champignñones')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (30, N'Queso Rallado')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (31, N'Ricota')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (32, N'Papa')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (33, N'Batata')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (34, N'Mandioca')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (35, N'Calabaza')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (36, N'Zapallo')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (37, N'Crema de Leche')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (38, N'Morron')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (39, N'Repollo')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (40, N'Coliflor')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (41, N'Col de Bruselas')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (42, N'Kale')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (43, N'Espinaca')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (44, N'Spaghetti')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (45, N'Tirabusones')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (46, N'Cafe molido')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (47, N'Vainillas')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (48, N'Coco Rallado')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (49, N'Choclo')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (50, N'Garbanzos')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (51, N'Lentejas')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (52, N'Semillas de Chia')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (53, N'Caldo')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (54, N'Ajo')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (55, N'Perejil')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (56, N'Salsa de Soja')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (57, N'Anana')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (58, N'Mozzarella')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (59, N'Queso Azul')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (60, N'Macarrones')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (61, N'Salmon Ahumado')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (62, N'Bagel')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (63, N'Queso Crema')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (64, N'Pan Lactal')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (65, N'Chorizo de Cerdo')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (66, N'Chimichurri')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (67, N'Salsa Criolla')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (68, N'Pan')
SET IDENTITY_INSERT [dbo].[Ingredientes] OFF
SET IDENTITY_INSERT [dbo].[Receteros] ON 

INSERT [dbo].[Receteros] ([idReceteros], [Nombre], [Apellido], [Descripcion], [Foto], [Edad], [Email], [Username], [Password]) VALUES (1, N'aaa', N'aaa', N'aaa', N'aaa', 11, N'aaa', N'aaa', N'aaa')
INSERT [dbo].[Receteros] ([idReceteros], [Nombre], [Apellido], [Descripcion], [Foto], [Edad], [Email], [Username], [Password]) VALUES (2, N'bbb', N'bbb', N'bbb', N'bbb', 22, N'bbb', N'bbb', N'bbb')
INSERT [dbo].[Receteros] ([idReceteros], [Nombre], [Apellido], [Descripcion], [Foto], [Edad], [Email], [Username], [Password]) VALUES (3, N'Camilo ', N'Tomadin', N'21 años. Cocinero Amateur y con mucho intusiasmo y ganas de compartir mis recetas con ustedes.', N'Foto', 21, N'ctomadin@gmail.com', N'Olimac31', N'ctomadin98')
INSERT [dbo].[Receteros] ([idReceteros], [Nombre], [Apellido], [Descripcion], [Foto], [Edad], [Email], [Username], [Password]) VALUES (4, N'Luca ', N'Longoni', N'19 años. Vivo el la ciudad porteña de Buenos Aires. Vivo con mis padres y mi gato Mauricio. Me encanta cocinar desde que soy chico', N'Foto', 19, N'lucalon@gmail.com', N'LongoniLinguini', N'toystory3')
INSERT [dbo].[Receteros] ([idReceteros], [Nombre], [Apellido], [Descripcion], [Foto], [Edad], [Email], [Username], [Password]) VALUES (5, N'Ezequiel Ivan ', N'Di Fonzo', N'Los dias mas felices fueron, son y seran peronistas. 17 años. Mi gusto por la cocina crecio al calor de la olla popular. Militante de Evita, Peron y Nestor. Cocino diversos tipos de comidas urbanas como Choris o Hamburguesas. "Donde surge el hambre, nace un derecho"- Eva Duarte de Peron ', N'Foto', 17, N'vamosavolver2019@gmail.com', N'militantedeperon', N'fvppj_03')
SET IDENTITY_INSERT [dbo].[Receteros] OFF
SET IDENTITY_INSERT [dbo].[TiposComida] ON 

INSERT [dbo].[TiposComida] ([idTiposComidas], [Nombre]) VALUES (1, N'Salado')
INSERT [dbo].[TiposComida] ([idTiposComidas], [Nombre]) VALUES (2, N'Dulce')
SET IDENTITY_INSERT [dbo].[TiposComida] OFF
SET IDENTITY_INSERT [dbo].[Recetas] ON 

INSERT [dbo].[Recetas] ([idRecetas], [Titulo], [Descripcion], [Foto], [Duracion], [fk_TiposComidas], [fk_Receteros]) VALUES (6, N'Bagel de Salmon', N'Los bagels puedes comprarlos ya hechos en panaderías o en supermercados, o bien, hacerlos en casa disolviendo primero la levadura en agua tibia y dejándola reposar tapada con un paño en un lugar cálido durante 10 minutos.
Transcurrido los 10 minutos, coloca en un recipiente la harina junto con la sal y el aceite de girasol y vierte la levadura. Mezcla todo muy bien hasta obtener una masa y si se pegara mucho a los dedos, incorpora un poco más de harina.
Trabájala durante 10 minutos hasta que quede elástica y colócala en un recipiente impregnado con aceite y tapa con un paño o papel transparente. Deja reposar en un lugar cálido durante 60 minutos o hasta que duplique su volumen.
Ya pasado ese tiempo, vuelve amasar y deja reposar la masa de los bagels durante 15 minutos más.
Forma ahora bollos de 100 g aproximadamente y aplasta para formar un círculo que no necesariamente tiene que ser parejo. Haz un agujero en el centro con un vaso o un molde circular y deja que los bagels reposan durante 15 minutos.
Precalienta el horno a 200 °C.
Coloca abundante agua con sal en una olla y cuando rompa hervor, cuece los bagels de a poco durante 60 segundos. Retíralos y deja que reposen durante unos minutos más. Ahora mételos nuevamente al agua hirviendo y cocina durante 30 segundos.
Dispón los bagels en una fuente con papel para horno y pincela con la yema de huevo. Espolvorea con semillas de sésamo y hornea durante 30 minutos o hasta que estén dorados.
Retira y deja enfriar durante unos minutos y cuando estén fríos, rellena los bagels de salmón. Para ello, corta los panes por la mitad y úntalos con queso cremoso, y coloca por encima algunos brotes de lechuga, lonjas de salmón ahumado y tomates cherry cortados por la mitad o en rodajas.', N'.', 1, 2, 3)
INSERT [dbo].[Recetas] ([idRecetas], [Titulo], [Descripcion], [Foto], [Duracion], [fk_TiposComidas], [fk_Receteros]) VALUES (7, N'Huevo Frito', N'Coloca 3 cucharadas de aceite para freír o 30g de mantequilla en la sartén y lleva a fuego medio.
Deja fundir la grasa hasta que comience a chisporrotear cuando viertas una gotita de agua. Este truco se emplea para saber si la temperatura del aceite es la adecuada para cocinar el huevo frito perfectamente.
Rompe el huevo suavemente para que no se deshaga la yema, y déjalo caer sobre la mantequilla o el aceite.
Baja el fuego a mínimo y deja que se cocine la clara. Cuando esta misma se presente ya blanca pero aun percibas visualmente que está cruda, echa ½ cucharadita de agua sobre la sartén y cúbrela con su correspondiente tapa para que se cocine la yema y la clara se vuelva más firme.
Retira el huevo frito con una espumadera por debajo del mismo cuando percibas que la yema está espesa pero a su vez líquida por dentro.
Sirve de inmediato y acompáñalo con pan fresco o tostado, arroz al estilo cubano, bifes con cebolla, frijoles, salchichas, etcétera.', N'.', -5, 2, 3)
INSERT [dbo].[Recetas] ([idRecetas], [Titulo], [Descripcion], [Foto], [Duracion], [fk_TiposComidas], [fk_Receteros]) VALUES (8, N'Tortilla de Papas', N'Vamos a pelar las papas, las lavamos y cortamos en tiras medianas. Prendemos la hornalla al máximo, colocamos una sartén c aceite, dejamos calentar y agregamos las papas... Las marcamos y reservamos...

Foto del paso 1 de la receta Tortilla de papa
 
Foto del paso 1 de la receta Tortilla de papa
 
Foto del paso 1 de la receta Tortilla de papa
Picamos perejil y agregamos a los huevos junto c un poco de sal y ají molido. Batimos todo. Agregamos las papas y colocamos en una sartén limpia. Cocinamos de un lado y luego c una tapa damos vuelta y cocinamos', N'Foto', 45, 2, 3)
INSERT [dbo].[Recetas] ([idRecetas], [Titulo], [Descripcion], [Foto], [Duracion], [fk_TiposComidas], [fk_Receteros]) VALUES (9, N'Choripan a la Campora', N'Haga unas pequeñas incisiones o pinche los chorizos y póngalos en una parrilla caliente hasta que estén completamente cocidos y doraditos. También se pueden cortar los chorizos por la mitad longitudinalmente o dejarlos enteros. A veces se cortan por la mitad luego de asarlos y se los vuelve a asar por unos minutos antes de servirlos.
Corte el pan por la mitad y póngalos en la parrilla, con la parte interior hacia abajo, para que se calienten y se doren ligeramente.
Coloque una cucharada o más de salsa chimichurri en el pan y agregue el chorizo. Cubra con salsa chimichurri adicional, curtido de cebolla y guacamole al gusto.
Para servir como picaditas o bocaditos pequeños, se puede cortar el chorizo y el pan en trozos más chicos.', N'Foto', 30, 2, 5)
SET IDENTITY_INSERT [dbo].[Recetas] OFF
SET IDENTITY_INSERT [dbo].[IngredientesXRecetas] ON 

INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (4, 61, 6)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (5, 62, 6)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (6, 63, 6)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (7, 2, 7)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (8, 4, 7)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (9, 2, 8)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (10, 4, 8)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (11, 5, 8)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (12, 8, 8)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (13, 30, 8)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (14, 55, 8)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (15, 67, 9)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (16, 66, 9)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (17, 65, 9)
INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (18, 68, 9)
SET IDENTITY_INSERT [dbo].[IngredientesXRecetas] OFF
SET IDENTITY_INSERT [dbo].[Reclamos] ON 

INSERT [dbo].[Reclamos] ([idReclamos], [Descripcion], [fk_Receteros]) VALUES (1, N'aaa', 1)
INSERT [dbo].[Reclamos] ([idReclamos], [Descripcion], [fk_Receteros]) VALUES (3, N'bbb', 2)
SET IDENTITY_INSERT [dbo].[Reclamos] OFF
SET IDENTITY_INSERT [dbo].[Moderadores] ON 

INSERT [dbo].[Moderadores] ([idModeradores], [Username], [Password]) VALUES (1, N'a', N'a')
INSERT [dbo].[Moderadores] ([idModeradores], [Username], [Password]) VALUES (2, N'thefoodlab', N'admin')
SET IDENTITY_INSERT [dbo].[Moderadores] OFF
