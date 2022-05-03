<?php

namespace App\Repository;

use App\Entity\TaMere;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<TaMere>
 *
 * @method TaMere|null find($id, $lockMode = null, $lockVersion = null)
 * @method TaMere|null findOneBy(array $criteria, ?array $orderBy = null)
 * @method TaMere      findAll()
 * @method TaMere      findBy(array $criteria, ?array $orderBy = null, $limit = null, $offset = null)
 */

class TaMereRepository extends ServiceEntityRepository
{
    public function __construct(\Doctrine\Persistence\ManagerRegistry $registry)
    {
        parent::__construct($registry, TaMere::class);
    }
}