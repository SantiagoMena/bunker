
import { Entity, Column, PrimaryGeneratedColumn, OneToMany, JoinColumn } from 'typeorm';
import {Employee} from "../../employees/entities/employee.entity";


@Entity({ name: 'company' })
export class Company {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    name: string;

    @Column()
    cant_employees: number;

    @Column()
    country: string;

    @OneToMany(() => Employee, employee => employee.company)
    employees: Employee[];
}
