import { ApiProperty } from "@nestjs/swagger";
import { IsNumber, IsString, Max, Min } from "class-validator";
import { Character } from "../entities/character.entity";

export class CreateCharacterDto extends Character {
    
    @ApiProperty({
        example: 'Mindartis Liadon'
    })
    @IsString()
    name: string;

    @ApiProperty({
        example: 1
    })
    @IsNumber()
    idUser: number;

    @ApiProperty({
        example: 'personalidade: Eu sempre tenho um plano para o que fazer quando as coisas dão errado. Ideal: Liberdade. Correntes foram feitas para serem quebradas, assim como aqueles que as forjaram(Caótico). Vinculo: Eu me tornarei o maior ladino que já existiu. Fraqueza: Quando vejo algo valioso, não consigo pensar em mais nada, além de rouba-lo'
    })
    @IsString()
    background: string;

    @ApiProperty({
        example: 3,
        description: '1 Clérigo; 2 Homem de armas; 3 Ladino; 4 Mago'
    })
    @IsNumber()
    idClass: number;

    @ApiProperty({
        example: 2,
        description: '1 Anão; 2 Elfo; 3 Halfling; 4 Humano'
    })
    @IsNumber()
    idRace: number;

    @ApiProperty({
        example: 1,
        description: '1 Caótico; 2 Neutro; 3 Ordeiro'
    })
    @IsNumber()
    idAlignment: number;

    @ApiProperty({
        example: 7
    })
    @IsNumber()
    life: number;

    @ApiProperty({
        example: 13
    })
    @IsNumber()
    armorClass: number;

    @ApiProperty({
        example: 12
    })
    @IsNumber()
    savingThroll: number;

    @ApiProperty({
        example: 15
    })
    @IsNumber()
    @Min(3)
    @Max(20)
    constitution: number;

    @ApiProperty({
        example: 12
    })
    @IsNumber()
    @Min(3)
    @Max(20)
    strength: number;

    @ApiProperty({
        example: 15
    })
    @IsNumber()
    @Min(3)
    @Max(20)
    dexterity: number;

    @ApiProperty({
        example: 15
    })
    @IsNumber()
    @Min(3)
    @Max(20)
    intelligence: number;

    @ApiProperty({
        example: 10
    })
    @IsNumber()
    @Min(3)
    @Max(20)
    wisdow: number;

    @ApiProperty({
        example: 8
    })
    @IsNumber()
    @Min(3)
    @Max(20)
    charism: number;

    @ApiProperty({
        example: 0
    })
    @IsNumber()
    @Min(0)
    experience: number;

    @ApiProperty({
        example: 1
    })
    @IsNumber()
    @Min(1)
    @Max(20)
    level: number;
}
