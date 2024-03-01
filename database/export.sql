--
-- File generated with SQLiteStudio v3.4.4 on Fri Mar 1 23:19:14 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: customers
CREATE TABLE IF NOT EXISTS "customers" ("id" integer primary key autoincrement not null, "name" varchar not null, "email" varchar, "contact" varchar not null, "address" text not null, "created_by" integer, "updated_by" integer, "deleted_by" integer, "deleted_at" datetime, "created_at" datetime, "updated_at" datetime);
INSERT INTO customers (id, name, email, contact, address, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (1, 'Brooke Schowalter', 'goodwin.ron@gmail.com', '1-678-968-8855', '2573 Jacobs Spurs Suite 335
Huelshire, NH 35713', NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO customers (id, name, email, contact, address, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (2, 'Francesca Gleichner II', 'pollich.gerard@lakin.com', '(863) 876-8339', '5324 Conroy Avenue
South Rod, KY 32069-2738', NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO customers (id, name, email, contact, address, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (3, 'Elizabeth Orn', 'rmarvin@rohan.com', '1-276-687-5963', '3462 Larkin Cape Suite 363
Boydchester, HI 58310', NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO customers (id, name, email, contact, address, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (4, 'Clementine Ortiz', 'blick.tito@dare.com', '+17813444187', '38934 Audie Fork
Walterton, DC 00734-7762', NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO customers (id, name, email, contact, address, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (5, 'Dr. Ulises Goyette', 'elowe@yahoo.com', '+15809992715', '968 Anais Lakes
Paucekmouth, GA 50413', NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO customers (id, name, email, contact, address, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (6, 'Althea Schimmel', 'jonathon28@hotmail.com', '(380) 318-5282', '7707 Nikolaus Mews Apt. 680
Stromanville, ME 66404-3249', NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO customers (id, name, email, contact, address, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (7, 'Shyanne Murazik', 'mohr.lesly@yahoo.com', '(202) 860-7623', '34152 Ashtyn Freeway Apt. 001
Monahanchester, WV 70335', NULL, NULL, NULL, NULL, '2024-03-01 17:30:36', '2024-03-01 17:30:36');
INSERT INTO customers (id, name, email, contact, address, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (8, 'Bill Nicolas', 'jschmidt@koch.com', '602.421.1541', '1993 Barton Island Apt. 132
West Joan, NV 59259-4973', NULL, NULL, NULL, NULL, '2024-03-01 17:30:36', '2024-03-01 17:30:36');
INSERT INTO customers (id, name, email, contact, address, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (9, 'Patsy Towne', 'bradford.rempel@gmail.com', '+1-212-472-7509', '4087 Jacobi Passage Apt. 736
Heloisemouth, HI 89715-4244', NULL, NULL, NULL, NULL, '2024-03-01 17:30:36', '2024-03-01 17:30:36');
INSERT INTO customers (id, name, email, contact, address, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (10, 'Dr. Alysson Blick DVM', 'kweissnat@schmidt.net', '704.668.1705', '295 Jeffery Rapids
Lake Janaview, AR 89893-6508', NULL, NULL, NULL, NULL, '2024-03-01 17:30:36', '2024-03-01 17:30:36');

-- Table: failed_jobs
CREATE TABLE IF NOT EXISTS "failed_jobs" ("id" integer primary key autoincrement not null, "uuid" varchar not null, "connection" text not null, "queue" text not null, "payload" text not null, "exception" text not null, "failed_at" datetime not null default CURRENT_TIMESTAMP);

-- Table: medications
CREATE TABLE IF NOT EXISTS "medications" ("id" integer primary key autoincrement not null, "name" varchar not null, "description" text not null, "quantity" float not null, "created_by" integer, "updated_by" integer, "deleted_by" integer, "deleted_at" datetime, "created_at" datetime, "updated_at" datetime);
INSERT INTO medications (id, name, description, quantity, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (1, 'Omnis quae sit.', 'Ipsum et quaerat et sit. Sequi mollitia amet numquam at quam dolorum repellendus. Nesciunt omnis quis dicta possimus hic cum delectus aut. Magni quisquam expedita error quisquam accusantium dolores.', 23.72, NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO medications (id, name, description, quantity, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (2, 'Est nobis.', 'Placeat tempora vitae est rerum esse saepe quos dolores. Porro cumque et ullam doloribus. Modi sunt ratione placeat aut quam voluptatibus ut.', 97.23, NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO medications (id, name, description, quantity, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (3, 'Tenetur dolores dolorem.', 'Id voluptatem molestias voluptates doloremque et sit voluptatum est. Vel voluptatum id sit. Minima modi earum voluptatibus eos impedit rerum.', 8.83, NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO medications (id, name, description, quantity, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (4, 'Unde tenetur.', 'Blanditiis omnis corrupti quasi consequuntur praesentium ut porro. Itaque numquam necessitatibus nihil et id. Aut sit et est natus nostrum.', 2.5, NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO medications (id, name, description, quantity, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (5, 'Quia veniam natus.', 'Ut consequuntur aut dolor commodi et et. Libero adipisci molestiae a dolores.', 47.24, NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO medications (id, name, description, quantity, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (6, 'Vel et.', 'Aut sunt officiis veritatis libero nihil maiores error itaque. Aut sed culpa est. Aperiam sed mollitia fugit aliquam magni tenetur. Adipisci et consequuntur excepturi ratione. Qui est voluptates tempore perferendis asperiores.', 44.79, NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO medications (id, name, description, quantity, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (7, 'Non laudantium tempore.', 'Doloremque iste excepturi blanditiis beatae sint. Necessitatibus rem id dolor consequatur et. Vel dolor blanditiis et aliquam. Blanditiis aliquid id qui eos. Et et eos a sint rerum hic qui.', 92.57, NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO medications (id, name, description, quantity, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (8, 'Quia aspernatur.', 'Sint quia quae cum fugit. Ea quod rerum voluptatem laudantium quod perspiciatis culpa. Aliquam explicabo et sed exercitationem et sed fugiat sint.', 45.28, NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO medications (id, name, description, quantity, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (9, 'Provident sed.', 'Beatae qui ut at repellendus quia recusandae earum. Quasi vitae dolores et natus. Aspernatur odio expedita quia sed. Temporibus expedita repellendus excepturi distinctio. Facere repudiandae omnis accusamus est quis.', 46.29, NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO medications (id, name, description, quantity, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (10, 'Reprehenderit sed.', 'Fuga ut molestiae provident dolor excepturi. Eum incidunt odio in quibusdam.', 11.8, NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');

-- Table: migrations
CREATE TABLE IF NOT EXISTS "migrations" ("id" integer primary key autoincrement not null, "migration" varchar not null, "batch" integer not null);
INSERT INTO migrations (id, migration, batch) VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO migrations (id, migration, batch) VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO migrations (id, migration, batch) VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO migrations (id, migration, batch) VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO migrations (id, migration, batch) VALUES (5, '2024_03_01_085113_create_medications_table', 1);
INSERT INTO migrations (id, migration, batch) VALUES (6, '2024_03_01_100600_create_permission_tables', 1);
INSERT INTO migrations (id, migration, batch) VALUES (7, '2024_03_01_121536_create_customers_table', 1);

-- Table: model_has_permissions
CREATE TABLE IF NOT EXISTS "model_has_permissions" ("permission_id" integer not null, "model_type" varchar not null, "model_id" integer not null, foreign key("permission_id") references "permissions"("id") on delete cascade, primary key ("permission_id", "model_id", "model_type"));

-- Table: model_has_roles
CREATE TABLE IF NOT EXISTS "model_has_roles" ("role_id" integer not null, "model_type" varchar not null, "model_id" integer not null, foreign key("role_id") references "roles"("id") on delete cascade, primary key ("role_id", "model_id", "model_type"));
INSERT INTO model_has_roles (role_id, model_type, model_id) VALUES (1, 'App\Models\User', 1);

-- Table: password_reset_tokens
CREATE TABLE IF NOT EXISTS "password_reset_tokens" ("email" varchar not null, "token" varchar not null, "created_at" datetime, primary key ("email"));

-- Table: permissions
CREATE TABLE IF NOT EXISTS "permissions" ("id" integer primary key autoincrement not null, "name" varchar not null, "guard_name" varchar not null, "created_at" datetime, "updated_at" datetime);
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (1, 'manage users', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (2, 'create users', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (3, 'edit users', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (4, 'delete users', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (5, 'manage roles', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (6, 'create roles', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (7, 'edit roles', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (8, 'delete roles', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (9, 'assign permissions', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (10, 'manage medications', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (11, 'create medications', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (12, 'edit medications', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (13, 'soft-delete medications', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (14, 'delete medications', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (15, 'manage customers', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (16, 'create customers', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (17, 'edit customers', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (18, 'soft-delete customers', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES (19, 'delete customers', 'web', '2024-03-01 17:30:35', '2024-03-01 17:30:35');

-- Table: personal_access_tokens
CREATE TABLE IF NOT EXISTS "personal_access_tokens" ("id" integer primary key autoincrement not null, "tokenable_type" varchar not null, "tokenable_id" integer not null, "name" varchar not null, "token" varchar not null, "abilities" text, "last_used_at" datetime, "expires_at" datetime, "created_at" datetime, "updated_at" datetime);
INSERT INTO personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) VALUES (1, 'App\Models\User', 1, 'auth_token', 'a5ac6c1f495b9b3f6fe2e85d82885c407fc87777a3c047002ae14d158efcd282', '["*"]', '2024-03-01 17:36:00', NULL, '2024-03-01 17:30:52', '2024-03-01 17:36:00');

-- Table: role_has_permissions
CREATE TABLE IF NOT EXISTS "role_has_permissions" ("permission_id" integer not null, "role_id" integer not null, foreign key("permission_id") references "permissions"("id") on delete cascade, foreign key("role_id") references "roles"("id") on delete cascade, primary key ("permission_id", "role_id"));
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (10, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (11, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (12, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (13, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (15, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (16, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (17, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (18, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (1, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (2, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (3, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (4, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (5, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (6, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (7, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (8, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (9, 1);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (10, 2);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (15, 2);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (12, 2);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (13, 2);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (17, 2);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (18, 2);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (10, 3);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (15, 3);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (12, 3);
INSERT INTO role_has_permissions (permission_id, role_id) VALUES (17, 3);

-- Table: roles
CREATE TABLE IF NOT EXISTS "roles" ("id" integer primary key autoincrement not null, "name" varchar not null, "guard_name" varchar not null, "created_by" integer, "updated_by" integer, "deleted_by" integer, "deleted_at" datetime, "created_at" datetime, "updated_at" datetime);
INSERT INTO roles (id, name, guard_name, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (1, 'Owner', 'web', NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO roles (id, name, guard_name, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (2, 'Manager', 'web', NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');
INSERT INTO roles (id, name, guard_name, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (3, 'Cashier', 'web', NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');

-- Table: users
CREATE TABLE IF NOT EXISTS "users" ("id" integer primary key autoincrement not null, "name" varchar not null, "email" varchar not null, "email_verified_at" datetime, "password" varchar not null, "remember_token" varchar, "created_by" integer, "updated_by" integer, "deleted_by" integer, "deleted_at" datetime, "created_at" datetime, "updated_at" datetime);
INSERT INTO users (id, name, email, email_verified_at, password, remember_token, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at) VALUES (1, 'Test Email', 'test@gmail.com', NULL, '$2y$12$qDcvVJrRf3pjgrOdtcZ1ruX.HrSQuTOMgIHx9pt03qvHrEy78XujW', NULL, NULL, NULL, NULL, NULL, '2024-03-01 17:30:35', '2024-03-01 17:30:35');

-- Index: failed_jobs_uuid_unique
CREATE UNIQUE INDEX IF NOT EXISTS "failed_jobs_uuid_unique" on "failed_jobs" ("uuid");

-- Index: model_has_permissions_model_id_model_type_index
CREATE INDEX IF NOT EXISTS "model_has_permissions_model_id_model_type_index" on "model_has_permissions" ("model_id", "model_type");

-- Index: model_has_roles_model_id_model_type_index
CREATE INDEX IF NOT EXISTS "model_has_roles_model_id_model_type_index" on "model_has_roles" ("model_id", "model_type");

-- Index: permissions_name_guard_name_unique
CREATE UNIQUE INDEX IF NOT EXISTS "permissions_name_guard_name_unique" on "permissions" ("name", "guard_name");

-- Index: personal_access_tokens_token_unique
CREATE UNIQUE INDEX IF NOT EXISTS "personal_access_tokens_token_unique" on "personal_access_tokens" ("token");

-- Index: personal_access_tokens_tokenable_type_tokenable_id_index
CREATE INDEX IF NOT EXISTS "personal_access_tokens_tokenable_type_tokenable_id_index" on "personal_access_tokens" ("tokenable_type", "tokenable_id");

-- Index: roles_name_guard_name_unique
CREATE UNIQUE INDEX IF NOT EXISTS "roles_name_guard_name_unique" on "roles" ("name", "guard_name");

-- Index: users_email_unique
CREATE UNIQUE INDEX IF NOT EXISTS "users_email_unique" on "users" ("email");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
