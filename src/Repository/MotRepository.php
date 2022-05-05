<?php

namespace App\Repository;

use App\Entity\Mot;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Mot>
 *
 * @method Mot|null find($id, $lockMode = null, $lockVersion = null)
 * @method Mot|null findOneBy(array $criteria, array $orderBy = null)
 * @method Mot[]    findAll()
 * @method Mot[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MotRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Mot::class);
    }
}
