import { MigrationInterface, QueryRunner } from "typeorm"

export class Migrations1696690255497 implements MigrationInterface {

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(
            `ALTER TABLE \`company\` CHANGE COLUMN \`cant_employees\` \`cant_employees\` INT (11) NOT NULL;`,
        )
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(
            `ALTER TABLE \`company\` CHANGE COLUMN \`cant_employees\` \`cant_employees\` VARCHAR (255) NOT NULL;`,
        )
    }

}
