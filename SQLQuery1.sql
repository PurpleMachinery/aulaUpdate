USE master;
DROP DATABASE info;
CREATE DATABASE info;
GO

USE info;
CREATE TABLE funcionarios(
	pk_id INT IDENTITY(1,1) PRIMARY KEY,
	nome NVARCHAR(50) NOT NULL,
	cpf NVARCHAR(11) NOT NULL UNIQUE,
	nascimento DATE NOT NULL,
	endereco NVARCHAR(80) NOT NULL,
	senha NVARCHAR(40) NOT NULL
)

CREATE TABLE clientes(
	pk_id INT IDENTITY(1,1) PRIMARY KEY,
	nome NVARCHAR(50) NOT NULL,
	cpf NVARCHAR(11) NOT NULL UNIQUE,
	nascimento DATE NOT NULL,
	endereco NVARCHAR(80) NOT NULL,
	fk_funcionario INT REFERENCES funcionarios(pk_id)
)

INSERT INTO funcionarios (nome, cpf, nascimento, endereco, senha) VALUES ('wesley', '00000000000', '1999-11-11', 'avenida', 'dti'),
								('josue', '00000000001', '1999-11-11', 'avenida', 'dti');


INSERT INTO clientes VALUES ('lucas', '00000000002', '1999-11-11', 'avenida', 2),
							('queren', '00000000003', '1999-11-11', 'avenida', 1),
							('rafael', '00000000004', '1999-11-11', 'avenida', 2),
							('mateus', '00000000005', '1999-11-11', 'avenida', 2),
							('tatine', '00000000006', '1999-11-11', 'avenida', 2),
							('mikeson', '00000000007', '1999-11-11', 'avenida', 1);




select * from funcionarios
select * from clientes



USE master;