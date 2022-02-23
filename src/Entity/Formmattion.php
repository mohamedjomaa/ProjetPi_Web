<?php

namespace App\Entity;

use App\Repository\FormmattionRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

/**
 * @ORM\Entity(repositoryClass=FormmattionRepository::class)
 */
class Formmattion
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank(message="Le Champ nom est obligatoire")
     * @Assert\Length(
     *     min=5,
     *     max=50,
     *     minMessage="Le titre doit contenir au moins 5 carcatères ",
     *     maxMessage="Le titre doit contenir au plus 20 carcatères"
     * )
     */
    private $nom;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank(message="Le Champ description est obligatoire")
     */
    private $description;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank(message="Le Champ image est obligatoire")
     */
    private $image;

    /**
     * @ORM\Column(type="float")
     * @Assert\NotNull(message="Le prix doît être différent de 0")
     */
    private $prix;

    /**
     *
     * @ORM\Column(type="date")
     */

    private $datede;

    /**
     *
     * @ORM\Column(type="date")
     */
    private $datefi;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getPrix(): ?float
    {
        return $this->prix;
    }

    public function setPrix(float $prix): self
    {
        $this->prix = $prix;

        return $this;
    }

    public function getDatede(): ?\DateTimeInterface
    {
        return $this->datede;
    }

    public function setDatede(\DateTimeInterface $datede): self
    {
        $this->datede = $datede;

        return $this;
    }

    public function getDatefi(): ?\DateTimeInterface
    {
        return $this->datefi;
    }

    public function setDatefi(\DateTimeInterface $datefi): self
    {
        $this->datefi = $datefi;

        return $this;
    }
    public function __toString()
    {
        return (string)$this->getNom();
    }
}