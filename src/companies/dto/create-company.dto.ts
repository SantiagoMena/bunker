import { ApiProperty } from '@nestjs/swagger';

export class CreateCompanyDto {
    @ApiProperty()
    name: string;

    @ApiProperty()
    country: string;

    @ApiProperty()
    cant_employees: number;
}
