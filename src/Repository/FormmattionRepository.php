<?php

namespace App\Repository;

use App\Entity\Formmattion;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Formmattion|null find($id, $lockMode = null, $lockVersion = null)
 * @method Formmattion|null findOneBy(array $criteria, array $orderBy = null)
 * @method Formmattion[]    findAll()
 * @method Formmattion[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class FormmattionRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Formmattion::class);
    }

    // /**
    //  * @return Formmattion[] Returns an array of Formmattion objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('f')
            ->andWhere('f.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('f.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Formmattion
    {
        return $this->createQueryBuilder('f')
            ->andWhere('f.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
