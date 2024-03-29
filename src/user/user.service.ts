import { Injectable } from '@nestjs/common';
import { Prisma } from '@prisma/client';
import * as bcrypt from 'bcrypt';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';

@Injectable()
export class UserService {
  constructor(private readonly prisma: PrismaService){}
  async create(createUserDto: CreateUserDto) {
    const data: Prisma.userCreateInput = {
      ...createUserDto,
      password: await bcrypt.hash(createUserDto.password, 10)
    };

    const createdUser = await this.prisma.user.create({data})

    return {
      ...createdUser,
      password: undefined,
    };
  }

  findByEmail(email: string){
    return this.prisma.user.findUnique({where: {email}});
  }
}
