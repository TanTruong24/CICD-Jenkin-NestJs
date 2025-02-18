import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World Truong The Tan Vina Takeuchi!';
  }
}
