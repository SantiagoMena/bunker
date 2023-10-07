
import {Entity, Column, PrimaryGeneratedColumn, OneToMany, ManyToOne, OneToOne, JoinColumn} from 'typeorm';
import {Company} from "../../companies/entities/company.entity";


@Entity({ name: 'employees' })
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

    @Column()
    company_id?: number;

    @ManyToOne(() => Company, company => company.employees)
    @JoinColumn({ name: 'company_id' })
    company: Company;
}
