USE Arcadia;
GO

-- ============================================================
-- TAGS PREDEFINIDOS
-- ============================================================

INSERT INTO Tags (TagName)
VALUES
('pintura'),
('anime'),
('manga'),
('videojuego'),
('moda'),
('libro'),
('ilustracion'),
('fotografia'),
('musica'),
('cine');

-- ============================================================
-- USUARIO ARCADIA (contenido base)
-- ============================================================

DECLARE @SystemUser UNIQUEIDENTIFIER = NEWID();

INSERT INTO Users (UserId, UserName, DisplayName, Email, PasswordHash, Bio)
VALUES
(@SystemUser, 'arcadia_admin', 'Arcadia', 'admin@arcadia.com', 'admin_password', 'Cuenta oficial de Arcadia');

-- ============================================================
-- CLUBS CREADOS POR ARCADIA
-- ============================================================

DECLARE @ClubArte UNIQUEIDENTIFIER = NEWID();
DECLARE @ClubAnime UNIQUEIDENTIFIER = NEWID();
DECLARE @ClubGaming UNIQUEIDENTIFIER = NEWID();
DECLARE @ClubLectura UNIQUEIDENTIFIER = NEWID();

INSERT INTO Clubs (ClubId, ClubName, DisplayName, Description, IsPrivate, CreatorUserId)
VALUES
(@ClubArte, 'arte', 'Club de Arte', 'Espacio para artistas y creativos', 0, @SystemUser),
(@ClubAnime, 'anime', 'Club de Anime', 'Todo sobre anime y cultura japonesa', 0, @SystemUser),
(@ClubGaming, 'gaming', 'Club Gamer', 'Videojuegos y comunidad gamer', 0, @SystemUser),
(@ClubLectura, 'lectura', 'Club de Lectura', 'Descubre libros y comparte tus reseñas', 0, @SystemUser);

INSERT INTO ReactionType (ReactionTypeId, Name)
VALUES
(1, 'LIKE'),
(2, 'LOVE'),
(3, 'HAHA'),
(4, 'WOW'),
(5, 'HUG');

-- ============================================================
-- PRUEBAS RÁPIDAS
-- ============================================================

SELECT * FROM Users
SELECT * FROM Tags
SELECT * FROM Clubs



