-- Active: 1677350271081@@127.0.0.1@3306

CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at TEXT DEFAULT (DATETIME()) NOT NULL
);

INSERT INTO users (id, name, email, password, role)
VALUES
-- password = fulano123
	("u001", "Fulano", "fulano@email.com", "$2a$12$Tx/ulMRKLHTpYzKZE5ycMe8CRDdN4iLnuuj2kryFIRzp/7mKdPsf6", "NORMAL"),
	
-- password = beltrana00
    ("u002", "Beltrana", "beltrana@email.com", "$2a$12$uEyR2caqwTLchIs5/1Wtt.zlMZC4yyAIldZR5aW5TMdmkotgLHmKy", "NORMAL"),
	
-- password = astrodev99
    ("u003", "Astrodev", "astrodev@email.com", "$2a$12$C.Uu/8ikb.1gBaG.AN8q6OL2/Tyc1yp67IWFELO8IIhflV6TNum/K", "ADMIN");
