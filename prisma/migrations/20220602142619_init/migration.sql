-- CreateTable
CREATE TABLE "alignment" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR,

    CONSTRAINT "alignment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "character" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR NOT NULL,
    "idUser" INTEGER,
    "background" VARCHAR NOT NULL,
    "idClass" INTEGER,
    "idRace" INTEGER,
    "idAlignment" INTEGER,
    "life" INTEGER NOT NULL,
    "armorClass" INTEGER NOT NULL,
    "savingThroll" INTEGER NOT NULL,
    "constitution" INTEGER NOT NULL,
    "strength" INTEGER NOT NULL,
    "dexterity" INTEGER NOT NULL,
    "intelligence" INTEGER NOT NULL,
    "wisdow" INTEGER NOT NULL,
    "charism" INTEGER NOT NULL,
    "experience" INTEGER NOT NULL,
    "level" INTEGER NOT NULL,

    CONSTRAINT "character_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "class" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR NOT NULL,

    CONSTRAINT "class_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "grimoire" (
    "id" INTEGER NOT NULL,
    "idMagic" INTEGER,
    "idCharacter" INTEGER,

    CONSTRAINT "grimoire_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "inventory" (
    "id" INTEGER NOT NULL,
    "idCharacter" INTEGER,
    "idItem" INTEGER,
    "quantity" INTEGER NOT NULL,

    CONSTRAINT "inventory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "item" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR NOT NULL,
    "description" VARCHAR NOT NULL,
    "damage" VARCHAR NOT NULL,
    "modifier" INTEGER NOT NULL,

    CONSTRAINT "item_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "magic" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR NOT NULL,
    "description" VARCHAR NOT NULL,

    CONSTRAINT "magic_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "race" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR,

    CONSTRAINT "race_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "talent" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR,
    "description" VARCHAR,

    CONSTRAINT "talent_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "talentSet" (
    "id" INTEGER NOT NULL,
    "idCharacter" INTEGER,
    "idTalent" INTEGER,

    CONSTRAINT "talentSet_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR,
    "password" VARCHAR,
    "email" VARCHAR,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "user_email_key" ON "user"("email");

-- AddForeignKey
ALTER TABLE "character" ADD CONSTRAINT "character_idAlignment_fkey" FOREIGN KEY ("idAlignment") REFERENCES "alignment"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "character" ADD CONSTRAINT "character_idClass_fkey" FOREIGN KEY ("idClass") REFERENCES "class"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "character" ADD CONSTRAINT "character_idRace_fkey" FOREIGN KEY ("idRace") REFERENCES "race"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "character" ADD CONSTRAINT "character_idUser_fkey" FOREIGN KEY ("idUser") REFERENCES "user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "grimoire" ADD CONSTRAINT "grimoire_idCharacter_fkey" FOREIGN KEY ("idCharacter") REFERENCES "character"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "grimoire" ADD CONSTRAINT "grimoire_idMagic_fkey" FOREIGN KEY ("idMagic") REFERENCES "magic"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "inventory" ADD CONSTRAINT "inventory_idCharacter_fkey" FOREIGN KEY ("idCharacter") REFERENCES "character"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "inventory" ADD CONSTRAINT "inventory_idItem_fkey" FOREIGN KEY ("idItem") REFERENCES "item"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "talentSet" ADD CONSTRAINT "talentSet_idCharacter_fkey" FOREIGN KEY ("idCharacter") REFERENCES "character"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "talentSet" ADD CONSTRAINT "talentSet_idTalent_fkey" FOREIGN KEY ("idTalent") REFERENCES "talent"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
