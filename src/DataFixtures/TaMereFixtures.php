<?php

namespace App\DataFixtures;

use App\Entity\TaMere;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager; /** ObjectManager permet d'insérer dans la bases de données, qui nous permettra de faire des tests unitaires */

class TaMereFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        // $product = new Product();
        // $manager->persist($product);
        for ($i = 0; $i < 20; $i++) {
            $tamere = new TaMere();
            $tamere->setNom('coucou');
            $tamere->setDescription("gg");
            $tamere->setCouleur("gg");
            $manager->persist($tamere);
        }
        /** On aurait mis un flush si en dessous on comptait utiliser la même variable */

        $manager->flush();
    }
}
