import { registerAs } from "@nestjs/config";
import { config as dotenvConfig } from 'dotenv';
import { DataSource, DataSourceOptions } from "typeorm";
import {Company} from "../companies/entities/company.entity";
import {Employee} from "../employees/entities/employee.entity";
import {Migrations1696690255497} from "../migrations/1696690255497-migrations";

dotenvConfig({ path: '.env' });

const config = {
    type: 'mysql',
    host: process.env.DATABASE_HOST,
    port: parseInt(process.env.DATABASE_PORT),
    username: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE_NAME,
    entities: [Company, Employee],
    migrations: [
        Migrations1696690255497
    ],
    autoLoadEntities: true,
    synchronize: false,
}

export default registerAs('typeorm', () => config)
export const connectionSource = new DataSource(config as DataSourceOptions);