<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220227204553 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE reclamation DROP FOREIGN KEY FK_CE606404CF856A07');
        $this->addSql('DROP INDEX IDX_CE606404CF856A07 ON reclamation');
        $this->addSql('ALTER TABLE reclamation CHANGE notification_reclamation_id Notification INT DEFAULT NULL');
        $this->addSql('ALTER TABLE reclamation ADD CONSTRAINT FK_CE606404EF1A9D84 FOREIGN KEY (notification_id) REFERENCES notification_reclamation (id)');
        $this->addSql('CREATE INDEX IDX_CE606404EF1A9D84 ON reclamation (notification_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE reclamation DROP FOREIGN KEY FK_CE606404EF1A9D84');
        $this->addSql('DROP INDEX IDX_CE606404EF1A9D84 ON reclamation');
        $this->addSql('ALTER TABLE reclamation CHANGE notification_id notification_reclamation_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE reclamation ADD CONSTRAINT FK_CE606404CF856A07 FOREIGN KEY (notification_reclamation_id) REFERENCES notification_reclamation (id)');
        $this->addSql('CREATE INDEX IDX_CE606404CF856A07 ON reclamation (notification_reclamation_id)');
    }
}
