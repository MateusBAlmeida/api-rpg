import { IsNumber, IsString, Max, Min } from "class-validator";
import { Character } from "../entities/character.entity";

export class CreateCharacterDto extends Character {
    @IsString()
    name: string;

    @IsNumber()
    idUser: number;

    @IsString()
    background: string;

    @IsNumber()
    idClass: number;

    @IsNumber()
    idRace: number;

    @IsNumber()
    idAlignment: number;

    @IsNumber()
    life: number;

    @IsNumber()
    armorClass: number;

    @IsNumber()
    savingThroll: number;

    @IsNumber()
    @Min(3)
    @Max(20)
    constitution: number;

    @IsNumber()
    @Min(3)
    @Max(20)
    strength: number;

    @IsNumber()
    @Min(3)
    @Max(20)
    dexterity: number;

    @IsNumber()
    @Min(3)
    @Max(20)
    intelligence: number;

    @IsNumber()
    @Min(3)
    @Max(20)
    wisdow: number;

    @IsNumber()
    @Min(3)
    @Max(20)
    charism: number;

    @IsNumber()
    @Min(0)
    experience: number;

    @IsNumber()
    @Min(1)
    @Max(20)
    level: number;
}
