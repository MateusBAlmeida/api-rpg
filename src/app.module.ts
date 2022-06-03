import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PrismaModule } from './prisma/prisma.module';
import { UserModule } from './user/user.module';
import { CharacterModule } from './character/character.module';
import { UserModule } from './user/user.module';

@Module({
  imports: [PrismaModule, UserModule, CharacterModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
