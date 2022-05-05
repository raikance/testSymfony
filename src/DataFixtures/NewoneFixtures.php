<?php

namespace App\DataFixtures;

use App\Entity\Newone;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager; /** ObjectManager permet d'insérer dans la bases de données, qui nous permettra de faire des tests unitaires */

class NewoneFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        // $product = new Product();
        // $manager->persist($product);
        for ($i = 0; $i < 20; $i++) {
            $new = new Newone();
            $new->setNom('coucou');
            $new->setDate();
            $manager->persist($new);
        }
        /** On aurait mis un flush si en dessous on comptait utiliser la même variable */

        $manager->flush();
    }
}
