<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220227201842 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE notification_reclamation DROP FOREIGN KEY FK_1BFB57452D6BA2D9');
        $this->addSql('DROP INDEX IDX_1BFB57452D6BA2D9 ON notification_reclamation');
        $this->addSql('ALTER TABLE notification_reclamation DROP reclamation_id');
        $this->addSql('ALTER TABLE reclamation ADD notification_reclamation_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE reclamation ADD CONSTRAINT FK_CE606404CF856A07 FOREIGN KEY (notification_reclamation_id) REFERENCES notification_reclamation (id)');
        $this->addSql('CREATE INDEX IDX_CE606404CF856A07 ON reclamation (notification_reclamation_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE notification_reclamation ADD reclamation_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE notification_reclamation ADD CONSTRAINT FK_1BFB57452D6BA2D9 FOREIGN KEY (reclamation_id) REFERENCES reclamation (id)');
        $this->addSql('CREATE INDEX IDX_1BFB57452D6BA2D9 ON notification_reclamation (reclamation_id)');
        $this->addSql('ALTER TABLE reclamation DROP FOREIGN KEY FK_CE606404CF856A07');
        $this->addSql('DROP INDEX IDX_CE606404CF856A07 ON reclamation');
        $this->addSql('ALTER TABLE reclamation DROP notification_reclamation_id');
    }
}
