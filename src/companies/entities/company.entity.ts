
import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from 'typeorm';
import {Employee} from "../../employees/entities/employee.entity";


@Entity()
export class Company {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    name: string;

    @Column()
    cant_employees: string;

    @Column()
    country: string;

    @OneToMany(type => Employee, employee => employee.company)
    employees: Employee[];
}
