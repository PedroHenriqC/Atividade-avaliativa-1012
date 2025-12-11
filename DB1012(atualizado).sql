create database AtividadeAvaliativa1012;
use AtividadeAvaliativa1012;
/*questão 1*/

create table paciente (
codPaciente int not null auto_increment unique,
nomePaciente varchar(45),
dataNascimento date,
convenio varchar(45),

constraint pkcodPaciente primary key (codPaciente));

create table medico (
crm varchar(45),
nomeMedico varchar(45),
especialidade varchar(45),

constraint codcrm primary key (crm));

create table tipo_exame (
codExame int not null auto_increment unique,
nomeExame varchar(45), 
valorBase float(15),
setor varchar(45),

constraint pkcodExame primary key (codExame));

create table unidade (
codUnidade int not null auto_increment unique,
nomeUnidade varchar(45), 
endereco varchar(45),

constraint pkcodUnidade primary key (codUnidade));

create table convenio (
nomeConvenio varchar(45),
cnpj varchar(45),
descontoPadrao decimal(10,2),

constraint pknomeConvenio primary key (nomeConvenio));

create table consulta (
codConsulta int not null auto_increment,
codPaciente int ,
crm varchar(45),
dataConsulta date,

constraint pkcodConsulta primary key (codConsulta),
constraint fkcodPaciente foreign key (codPaciente) references paciente (codPaciente),
constraint fkcrm foreign key (crm) references medico (crm));

create table solicitacao_exame (
codSolicitacao int not null auto_increment,
codConsulta int,
codExame int,
dataColeta date, 
statusExame varchar(45),

constraint pkcodSolicitacao primary key (codSolicitacao),
constraint fkcodConsulta foreign key (codConsulta) references consulta (codConsulta),
constraint fkcodExame foreign key (codExame) references tipo_exame (codExame));


create table resultado_exame (
codResultado int not null auto_increment,
codSolicitacao int,
codUnidade int,
dataLiberacao date, 
valorResultado decimal(10,2),
referencia varchar(45),

constraint pkcodResultado primary key (codResultado),
constraint fkcodSolicitacao foreign key (codSolicitacao) references solicitacao_exame (codSolicitacao),
constraint fkcodUnidade foreign key (codUnidade) references unidade (codUnidade));


/*questão 2*/

insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (1, "Alisson", '2006-08-18', "SUS");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (2, "Mariana", '2004-03-12', "Unimed");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (3, "Rafael", '1999-11-25', "Amil");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (4, "Carla", '1987-02-05', "Bradesco Saúde");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (5, "João Pedro", '2010-09-30', "SUS");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (6, "Bianca", '2001-07-14', "SulAmérica");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (7, "Lucas", '1995-01-19', "Hapvida");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (8, "Fernanda", '1983-12-08', "Unimed");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (9, "Eduardo", '2007-04-21', "SUS");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (10, "Patrícia", '1992-06-11', "Golden Cross");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (11, "Gustavo", '1980-10-02', "Amil");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (12, "Ana Clara", '2015-03-27', "SUS");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (13, "Vinicius", '2000-05-16', "Unimed");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (14, "Beatriz", '1998-08-09', "Bradesco Saúde");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (15, "Renato", '1975-01-28', "SulAmérica");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (16, "Larissa", '2009-11-03', "SUS");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (17, "Thiago", '1991-02-22', "Hapvida");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (18, "Juliana", '1985-09-07', "Unimed");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (19, "Ricardo", '1997-12-30', "Amil");
insert into paciente (codPaciente, nomePaciente, dataNascimento, convenio) values (20, "Camila", '2012-06-15', "SUS");


insert into medico (crm, nomeMedico, especialidade) values ("CRM001","Alberto Souza","Clínico Geral");
insert into medico (crm, nomeMedico, especialidade) values ("CRM002","Fernanda Lima","Pediatria");
insert into medico (crm, nomeMedico, especialidade) values ("CRM003","Rafael Oliveira","Ortopedia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM004","Camila Santos","Cardiologia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM005","Lucas Pereira","Dermatologia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM006","Juliana Costa","Neurologia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM007","Thiago Alves","Ginecologia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM008","Mariana Rocha","Psiquiatria");
insert into medico (crm, nomeMedico, especialidade) values ("CRM009","Gustavo Martins","Urologia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM010","Bianca Ferreira","Oftalmologia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM011","Eduardo Nunes","Clínico Geral");
insert into medico (crm, nomeMedico, especialidade) values ("CRM012","Patrícia Almeida","Pediatria");
insert into medico (crm, nomeMedico, especialidade) values ("CRM013","Vinicius Rodrigues","Ortopedia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM014","Aline Moreira","Cardiologia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM015","Ricardo Lima","Dermatologia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM016","Larissa Gomes","Neurologia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM017","Daniel Souza","Ginecologia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM018","Julio Santos","Psiquiatria");
insert into medico (crm, nomeMedico, especialidade) values ("CRM019","Carolina Ribeiro","Urologia");
insert into medico (crm, nomeMedico, especialidade) values ("CRM020","Fernando Castro","Oftalmologia");


insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (1,"Hemograma Completo", 50.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (2,"Glicemia", 30.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (3,"Colesterol Total", 45.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (4,"Triglicerídeos", 40.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (5,"Urina Tipo I", 35.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (6,"Creatinina", 25.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (7,"Ureia", 20.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (8,"Exame de Fezes", 30.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (9,"TSH", 60.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (10,"T4 Livre", 55.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (11,"Hemoglobina Glicada", 70.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (12,"Proteína C Reativa", 65.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (13,"Vitamina D", 80.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (14,"HIV", 90.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (15,"Hepatite B", 85.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (16,"Hepatite C", 85.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (17,"PCR COVID-19", 100.0, "Laboratório");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (18,"Ultrassonografia Abdominal", 150.0, "Imagem");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (19,"Raio X Torácico", 120.0, "Imagem");
insert into tipo_Exame (codExame, nomeExame, valorBase, setor) values (20,"Eletrocardiograma (ECG)", 80.0, "Cardiologia");



insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (1, 7, 'CRM012', '2024-07-01');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (2, 15, 'CRM004', '2025-11-11');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (3, 3, 'CRM019', '2024-02-21');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (4, 20, 'CRM008', '2025-10-15');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (5, 1, 'CRM016', '2025-12-05');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (6, 11, 'CRM005', '2025-02-24');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (7, 2, 'CRM013', '2025-04-27');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (8, 18, 'CRM001', '2025-04-11');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (9, 6, 'CRM014', '2024-05-09');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (10, 9, 'CRM017', '2023-06-09');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (11, 12, 'CRM003', '2025-12-30');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (12, 14, 'CRM018', '2025-08-12');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (13, 8, 'CRM007', '2023-12-13');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (14, 10, 'CRM002', '2025-12-14');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (15, 4, 'CRM011', '2024-11-15');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (16, 13, 'CRM010', '2025-10-17');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (17, 5, 'CRM009', '2025-12-11');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (18, 19, 'CRM006', '2025-06-19');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (19, 17, 'CRM020', '2024-05-01');
insert into consulta (codConsulta, codPaciente, crm, dataConsulta) values (20, 16, 'CRM015', '2025-09-25');

insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (1, 12, 5, '2025-11-20', "Pendente");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (2, 3, 19, '2025-10-23', "Concluído");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (3, 17, 1, '2025-10-30', "Em andamento");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (4, 7, 15, '2025-11-05', "Pendente");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (5, 10, 8, '2025-10-28', "Concluído");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (6, 20, 12, '2025-11-01', "Em andamento");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (7, 2, 18, '2025-10-21', "Pendente");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (8, 15, 2, '2025-11-07', "Concluído");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (9, 5, 7, '2025-10-25', "Em andamento");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (10, 8, 11, '2025-11-03', "Pendente");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (11, 1, 14, '2025-10-19', "Concluído");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (12, 11, 16, '2025-11-08', "Em andamento");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (13, 14, 20, '2025-10-22', "Pendente");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (14, 19, 9, '2025-11-02', "Concluído");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (15, 6, 3, '2025-10-26', "Em andamento");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (16, 4, 13, '2025-11-09', "Pendente");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (17, 18, 6, '2025-10-24', "Concluído");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (18, 13, 10, '2025-11-04', "Em andamento");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (19, 9, 4, '2025-10-27', "Pendente");
insert into solicitacao_exame (codSolicitacao, codConsulta, codExame, dataColeta, statusExame) values (20, 16, 17, '2025-11-06', "Concluído");

insert into unidade (codUnidade, nomeUnidade, endereco) values (1, "Unidade Central", "Rua das Flores, 123");
insert into unidade (codUnidade, nomeUnidade, endereco) values (2, "Unidade Norte", "Avenida Brasil, 456");
insert into unidade (codUnidade, nomeUnidade, endereco) values (3, "Unidade Sul", "Praça da Liberdade, 78");
insert into unidade (codUnidade, nomeUnidade, endereco) values (4, "Unidade Leste", "Rua João Pessoa, 89");
insert into unidade (codUnidade, nomeUnidade, endereco) values (5, "Unidade Oeste", "Avenida São Paulo, 321");
insert into unidade (codUnidade, nomeUnidade, endereco) values (6, "Unidade Jardim", "Rua das Acácias, 15");
insert into unidade (codUnidade, nomeUnidade, endereco) values (7, "Unidade Centro", "Avenida Central, 100");
insert into unidade (codUnidade, nomeUnidade, endereco) values (8, "Unidade Bela Vista", "Rua das Palmeiras, 200");
insert into unidade (codUnidade, nomeUnidade, endereco) values (9, "Unidade Vila Nova", "Avenida das Nações, 77");
insert into unidade (codUnidade, nomeUnidade, endereco) values (10, "Unidade Primavera", "Rua das Flores, 45");
insert into unidade (codUnidade, nomeUnidade, endereco) values (11, "Unidade Morumbi", "Avenida Morumbi, 12");
insert into unidade (codUnidade, nomeUnidade, endereco) values (12, "Unidade Liberdade", "Rua da Liberdade, 88");
insert into unidade (codUnidade, nomeUnidade, endereco) values (13, "Unidade São José", "Avenida São José, 33");
insert into unidade (codUnidade, nomeUnidade, endereco) values (14, "Unidade Copacabana", "Rua Atlântica, 101");
insert into unidade (codUnidade, nomeUnidade, endereco) values (15, "Unidade Ipanema", "Avenida Vieira Souto, 202");
insert into unidade (codUnidade, nomeUnidade, endereco) values (16, "Unidade Barra", "Rua da Praia, 150");
insert into unidade (codUnidade, nomeUnidade, endereco) values (17, "Unidade Tijuca", "Avenida Maracanã, 77");
insert into unidade (codUnidade, nomeUnidade, endereco) values (18, "Unidade Botafogo", "Rua Voluntários da Pátria, 66");
insert into unidade (codUnidade, nomeUnidade, endereco) values (19, "Unidade Flamengo", "Avenida Atlântica, 33");
insert into unidade (codUnidade, nomeUnidade, endereco) values (20, "Unidade Lapa", "Rua do Lavradio, 55");



insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (1, 12, 5, '2025-07-03', 5.6, '4.5-6.0');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (2, 3, 19, '2025-05-27', 120.3, '100-150');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (3, 17, 1, '2025-12-01', 7.2, '5.0-8.0');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (4, 7, 15, '2025-02-22', 90.5, '70-100');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (5, 10, 8, '2025-05-07', 4.8, '4.0-5.5');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (6, 20, 12, '2025-06-24', 6.7, '5.5-7.5');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (7, 2, 18, '2025-01-05', 130.2, '110-150');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (8, 15, 2, '2025-04-20', 5.1, '4.5-6.0');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (9, 5, 7, '2025-05-06', 78.4, '70-90');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (10, 8, 11, '2025-06-25', 6.5, '5.0-7.0');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (11, 1, 14, '2025-06-02', 100.7, '90-110');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (12, 11, 16, '2025-06-26', 5.9, '4.5-6.0');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (13, 14, 20, '2025-12-08', 115.4, '100-130');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (14, 19, 9, '2025-06-28', 7.0, '5.0-8.0');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (15, 6, 3, '2025-11-04', 88.6, '70-100');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (16, 4, 13, '2025-08-29', 6.3, '5.0-7.0');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (17, 18, 6, '2025-03-09', 123.5, '100-130');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (18, 13, 10, '2025-07-30', 5.4, '4.5-6.0');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (19, 9, 4, '2025-04-10', 97.2, '80-100');
insert into resultado_exame(codResultado, codSolicitacao, codUnidade, dataLiberacao, valorResultado, referencia) values (20, 16, 17, '2025-09-29', 6.8, '5.5-7.5');

insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Unimed", "12.345.678/0001-90", 10.0);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Bradesco Saúde", "98.765.432/0001-12", 12.5);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Amil", "23.456.789/0001-34", 8.0);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Porto Seguro Saúde", "34.567.890/0001-56", 15.0);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("SulAmérica", "45.678.901/0001-78", 9.5);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("NotreDame Intermédica", "56.789.012/0001-90", 11.0);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Golden Cross", "67.890.123/0001-12", 10.5);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Hapvida", "78.901.234/0001-34", 7.5);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Allianz Saúde", "89.012.345/0001-56", 13.0);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Unifesp Saúde", "90.123.456/0001-78", 6.0);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Life Empresarial", "11.234.567/0001-90", 14.0);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Bio Saúde", "22.345.678/0001-12", 9.0);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Care Plus", "33.456.789/0001-34", 12.0);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Prevent Senior", "44.567.890/0001-56", 8.5);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Unimed Fortaleza", "55.678.901/0001-78", 11.5);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Bradesco Recife", "66.789.012/0001-90", 10.0);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Amil São Paulo", "77.890.123/0001-12", 9.5);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("SulAmérica RJ", "88.901.234/0001-34", 13.0);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("NotreDame SP", "99.012.345/0001-56", 12.0);
insert into convenio (nomeConvenio, cnpj, descontoPadrao) values ("Golden Cross MG", "10.123.456/0001-78", 7.5);

/*questão 3*/

alter table tipo_Exame add column tempoJejum int;


/*desabilitar medidas de segurança*/
set sql_safe_updates = 0;

/*questão 4*/
UPDATE tipo_Exame SET valorBase = valorBase * 1.15 WHERE setor = 'Hematologia' AND valorBase < 50.00;



/*questão 5*/
DELETE FROM resultado_exame
WHERE codSolicitacao IN ( SELECT codSolicitacao FROM solicitacao_exame WHERE codConsulta IN ( SELECT codConsulta FROM consulta WHERE crm IN ( SELECT crm FROM medico WHERE especialidade = 'Clínico Geral'OR crm LIKE 'J%')));

DELETE FROM solicitacao_exame
WHERE codConsulta IN (SELECT codConsulta FROM consulta WHERE crm IN ( SELECT crm FROM medico WHERE especialidade = 'Clínico Geral' OR crm LIKE 'J%'));

DELETE FROM consulta
WHERE crm IN (SELECT crm FROM medico WHERE especialidade = 'Clínico Geral' OR crm LIKE 'J%');

DELETE FROM medico WHERE especialidade = 'Clínico Geral' OR crm LIKE 'J%';



/*questão 6*/
SELECT crm AS RegistroProfissional, nomeMedico FROM medico ORDER BY especialidade DESC;

/*questão 7*/
SELECT nomePaciente, dataNascimento FROM paciente WHERE dataNascimento BETWEEN '1980-01-01' AND '1995-12-31';

/*questão 8*/
SELECT nomeExame, setor FROM tipo_exame WHERE nomeExame NOT LIKE '%Glicose%' AND setor LIKE '%Bio%';

/*questão 9*/
SELECT nomeUnidade, endereco FROM unidade WHERE endereco IN ('Bairro Central', 'Zona Sul', 'Centro');

/*questão 10*/

SELECT nomePaciente, convenio FROM paciente WHERE convenio NOT IN ('Unimed', 'Bradesco Saúde', 'Particular');

/*questão 11*/
SELECT p.nomePaciente, m.nomeMedico, c.dataConsulta FROM consulta c 
INNER JOIN paciente p ON p.codPaciente = c.codPaciente INNER JOIN medico m ON m.crm = c.crm WHERE c.dataConsulta > '2025-09-01';


/*questão 12*/
SELECT p.nomePaciente, t.nomeExame, s.statusExame FROM solicitacao_exame s INNER JOIN consulta c ON s.codConsulta = c.codConsulta
 INNER JOIN paciente p ON c.codPaciente = p.codPaciente INNER JOIN tipo_exame t ON s.codExame = t.codExame ORDER BY p.nomePaciente ASC;


/*questão 13*/

SELECT p.nomePaciente, t.nomeExame, u.nomeUnidade FROM resultado_exame r INNER JOIN solicitacao_exame s ON r.codSolicitacao = s.codSolicitacao INNER JOIN consulta c ON s.codConsulta = c.codConsulta 
INNER JOIN paciente p ON c.codPaciente = p.codPaciente INNER JOIN tipo_exame t ON s.codExame = t.codExame INNER JOIN unidade u ON r.codUnidade = u.codUnidade
 WHERE r.valorResultado > 15.00 AND t.nomeExame = 'Hemograma';
 
 
 /*questão 14*/

 SELECT m.nomeMedico, m.especialidade, t.nomeExame FROM medico m INNER JOIN consulta c ON m.crm = c.crm
INNER JOIN solicitacao_exame s ON c.codConsulta = s.codConsulta INNER JOIN tipo_exame t ON s.codExame = t.codExame
 WHERE m.especialidade = 'Cardiologia' OR t.setor = 'Urgência';

/*questão 15*/

SELECT m.nomeMedico, COUNT(*) AS TotalConsultas FROM consulta c
INNER JOIN medico m ON m.crm = c.crm GROUP BY m.nomeMedico;

/*questão 16*/

SELECT t.setor, MIN(t.valorBase) AS ValorMinimo FROM tipo_exame t GROUP BY t.setor;


/*questão 17*/

SELECT p.nomePaciente, MAX(r.valorResultado) AS ResultadoMaximo FROM resultado_exame r INNER JOIN solicitacao_exame s ON r.codSolicitacao = s.codSolicitacao
INNER JOIN consulta c ON s.codConsulta = c.codConsulta INNER JOIN paciente p ON c.codPaciente = p.codPaciente GROUP BY p.nomePaciente;


/*questão 18*/

SELECT p.nomePaciente, t.nomeExame FROM paciente p INNER JOIN consulta c ON p.codPaciente = c.codPaciente
INNER JOIN solicitacao_exame s ON c.codConsulta = s.codConsulta INNER JOIN tipo_exame t ON s.codExame = t.codExame
WHERE p.dataNascimento >= '1990-01-01'AND c.crm NOT BETWEEN '5000' AND '8000';

/*questão 19*/

SELECT nomeUnidade, endereco FROM unidade WHERE nomeUnidade LIKE 'Laboratório%' AND codUnidade BETWEEN 10 AND 50;


/*questão 20*/

SELECT p.nomePaciente, m.nomeMedico, t.nomeExame, s.statusExame FROM solicitacao_exame s
INNER JOIN consulta c ON s.codConsulta = c.codConsulta INNER JOIN paciente p ON c.codPaciente = p.codPaciente
INNER JOIN medico m ON c.crm = m.crm INNER JOIN tipo_exame t ON s.codExame = t.codExame
WHERE s.statusExame IN ('Liberado', 'Em Análise') ORDER BY c.dataConsulta DESC;



/*questão 21*/

SELECT p.nomePaciente, te.nomeExame, m.nomeMedico FROM paciente p
 INNER JOIN consulta c ON p.codPaciente = c.codPaciente INNER JOIN solicitacao_exame se ON c.codConsulta = se.codConsulta
INNER JOIN tipo_exame te ON se.codExame = te.codExame INNER JOIN medico m ON c.crm = m.crm
WHERE p.nomePaciente NOT LIKE '%Silva%' OR m.nomeMedico NOT LIKE '%Dr.%';


/*questão 22*/

SELECT te.setor, SUM(te.valorBase) AS ReceitaEstimada FROM tipo_exame te GROUP BY te.setor;

/*questão 23*/

SELECT p.nomePaciente, m.nomeMedico, c.dataConsulta, m.especialidade FROM paciente p
INNER JOIN consulta c ON p.codPaciente = c.codPaciente INNER JOIN medico m ON c.crm = m.crm
ORDER BY m.especialidade ASC, c.dataConsulta DESC;

/*questão 24*/
SELECT p.nomePaciente, m.nomeMedico, p.convenio FROM paciente p INNER JOIN consulta c ON p.codPaciente = c.codPaciente
INNER JOIN medico m ON c.crm = m.crm WHERE p.convenio = 'Unimed' AND m.especialidade = 'Pediatria';

/*questão 25*/
SELECT te.setor, COUNT(DISTINCT te.nomeExame) AS TiposDistintos FROM tipo_exame te GROUP BY te.setor;


/*questão 26*/
SELECT p.nomePaciente, u.nomeUnidade FROM paciente p
INNER JOIN consulta c ON p.codPaciente = c.codPaciente INNER JOIN solicitacao_exame se ON c.codConsulta = se.codConsulta
INNER JOIN resultado_exame r ON se.codSolicitacao = r.codSolicitacao INNER JOIN unidade u ON r.codUnidade = u.codUnidade
WHERE p.dataNascimento NOT BETWEEN '1970-01-01' AND '1979-12-31'AND r.dataLiberacao > '2025-11-01';


/*questão 27*/
SELECT p.nomePaciente, te.nomeExame FROM paciente p 
INNER JOIN consulta c ON p.codPaciente = c.codPaciente INNER JOIN solicitacao_exame se ON c.codConsulta = se.codConsulta 
INNER JOIN tipo_exame te ON se.codExame = te.codExame WHERE te.nomeExame LIKE 'T%' OR p.nomePaciente LIKE '%Ferreira%';


/*questão 28*/
SELECT p.convenio, AVG(te.valorBase) AS ValorMedio FROM paciente p INNER JOIN consulta c ON p.codPaciente = c.codPaciente
INNER JOIN solicitacao_exame se ON c.codConsulta = se.codConsulta INNER JOIN tipo_exame te ON se.codExame = te.codExame GROUP BY p.convenio;


/*questão 29*/
SELECT m.nomeMedico, u.nomeUnidade, r.dataLiberacao FROM medico m INNER JOIN consulta c ON m.crm = c.crm
INNER JOIN solicitacao_exame se ON c.codConsulta = se.codConsulta INNER JOIN resultado_exame r ON se.codSolicitacao = r.codSolicitacao
INNER JOIN unidade u ON r.codUnidade = u.codUnidade WHERE u.codUnidade IN (1, 5, 10) AND m.especialidade IN ('Neurologia', 'Oftalmologia');


/*questão 30*/
SELECT p.nomePaciente, m.nomeMedico, p.convenio, te.nomeExame FROM paciente p
INNER JOIN consulta c ON p.codPaciente = c.codPaciente INNER JOIN medico m ON c.crm = m.crm
INNER JOIN solicitacao_exame se ON c.codConsulta = se.codConsulta INNER JOIN tipo_exame te ON se.codExame = te.codExame WHERE p.convenio = 'SUS' OR te.nomeExame = 'Eletrocardiograma';


select*from consulta;
describe tipo_Exame;