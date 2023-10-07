
import {Entity, Column, PrimaryGeneratedColumn, OneToMany, ManyToOne} from 'typeorm';
import {Company} from "../../companies/entities/company.entity";


@Entity()
export class Employee {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    company_name: string;

    @Column()
    first_name: string;

    @Column()
    last_name: string;

    @Column()
    date_admission: string;

    @Column()
    active: boolean;

    @ManyToOne(type => Company, company => company)
    company: Company;
}
