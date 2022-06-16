-- AlterTable
CREATE SEQUENCE "character_id_seq";
ALTER TABLE "character" ALTER COLUMN "id" SET DEFAULT nextval('character_id_seq');
ALTER SEQUENCE "character_id_seq" OWNED BY "character"."id";

-- AlterTable
CREATE SEQUENCE "user_id_seq";
ALTER TABLE "user" ALTER COLUMN "id" SET DEFAULT nextval('user_id_seq');
ALTER SEQUENCE "user_id_seq" OWNED BY "user"."id";
