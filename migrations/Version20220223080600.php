<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220223080600 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE notification_reclamation (id INT AUTO_INCREMENT NOT NULL, reclamation_id INT DEFAULT NULL, etat VARCHAR(255) NOT NULL, message VARCHAR(255) NOT NULL, INDEX IDX_1BFB57452D6BA2D9 (reclamation_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE notification_reclamation ADD CONSTRAINT FK_1BFB57452D6BA2D9 FOREIGN KEY (reclamation_id) REFERENCES reclamation (id)');
        $this->addSql('ALTER TABLE reclamation ADD message VARCHAR(255) NOT NULL, DROP prenom, CHANGE type type VARCHAR(255) NOT NULL, CHANGE nom etat VARCHAR(255) NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE notification_reclamation');
        $this->addSql('ALTER TABLE reclamation ADD prenom VARCHAR(255) DEFAULT NULL, ADD nom VARCHAR(255) NOT NULL, DROP etat, DROP message, CHANGE type type VARCHAR(255) DEFAULT NULL');
    }
}
