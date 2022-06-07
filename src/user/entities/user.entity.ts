import { ApiProperty } from "@nestjs/swagger";

export class User {
    id?: number;
    
    @ApiProperty({
        example: 'gary@mail.com',
        description: 'E-mail para cadastro e acesso, futuramente haverá integração com notificações'
      })
    email: string;

    @ApiProperty({
        example: 'Senha@123',
        description: 'A senha deve conter letras, números, caractéres especiais e pelo menos uma letra maiúscula'
      })
    password: string;

    @ApiProperty({
        example: 'Gary Gygax',
        description: 'Nome do usuário'
    })
    name: string;
}
