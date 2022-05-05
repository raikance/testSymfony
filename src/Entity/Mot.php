<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=MotRepository::class)
 */
class Mot
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $nom;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $definition;

    /**
     * @ORM\Column(type="integer")
     */
    private $nombrelettre;

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

    public function getDefinition(): ?string
    {
        return $this->definition;
    }

    public function setDefinition(string $definition): self
    {
        $this->definition = $definition;

        return $this;
    }

    public function getNombrelettre(): ?int
    {
        return $this->nombrelettre;
    }

    public function setNombrelettre(int $nombrelettre): self
    {
        $this->nombrelettre = $nombrelettre;

        return $this;
    }
}
