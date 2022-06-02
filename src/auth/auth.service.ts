import { Injectable } from '@nestjs/common';
import * as bcrypt from 'bcrypt'
import { UserPayload } from './models/UserPayload';
import { JwtService } from '@nestjs/jwt';
import { UserService } from 'src/user/user.service';
import { User } from 'src/user/entities/user.entity';

@Injectable()
export class AuthService {

    constructor (private readonly userService: UserService, private readonly jwtService : JwtService){}

    async login(user: User){

        if(user == undefined){

        return console.log(user)
        }
        const payload: UserPayload = {
            sub: user.id,
            email: user.email,
            name: user.name,
        };


        const jwtToken = this.jwtService.sign(payload)

        return {
            access_token: jwtToken,
            account: await this.userService.findByEmail(payload.email),
        };
    }
    
    
    async validateAccount(email: string, password: string): Promise<User> {
        const user = await this.userService.findByEmail(email);

        if (user) {
            const isPasswordValid = await bcrypt.compare(password, user.password);

            if (isPasswordValid){
                return {
                    ...user,
                    password: undefined,
                };
            }

        }

        throw new Error('email or password is incorrect')

    }

}
