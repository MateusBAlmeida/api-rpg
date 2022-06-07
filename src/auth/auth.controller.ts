import {
    Controller,
    HttpCode,
    HttpStatus,
    Post,
    Request,
    UseGuards,
  } from '@nestjs/common';
import { ApiBody, ApiProperty, ApiQuery } from '@nestjs/swagger';
import { CreateUserDto } from 'src/user/dto/create-user.dto';
  import { AuthService } from './auth.service';
import { IsPublic } from './decorators/is-public.decorator';
  import { LocalAuthGuard } from './guards/local-auth.guard';
import { AuthRequest } from './models/AuthRequest';
  
  
  @Controller()
  export class AuthController {
    constructor(private readonly authService: AuthService) {}
  
    @ApiBody({type: CreateUserDto})
    @IsPublic()
    @UseGuards(LocalAuthGuard)
    @Post('login')
    @HttpCode(HttpStatus.OK)
    async login(@Request() req: AuthRequest) {        
        return this.authService.login(req.body);
    }
  }