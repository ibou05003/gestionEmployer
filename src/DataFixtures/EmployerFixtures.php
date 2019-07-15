<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use App\Entity\Employer;
use App\Entity\Service;

class EmployerFixtures extends Fixture
{
    private static function getMat($prenom,$nom,$i){
        return strtoupper(substr($prenom,0,2)).strtoupper(substr($nom,0,2))."-".$i;
    }
    public function load(ObjectManager $manager)
    {
        $ser=array('Informatique','Comptabilité','Technique','Ressources Humaines','Administration');
        for($j=1;$j<5;$j++)
        {
            $service=new Service();
            $service->setLibelle($ser[$j]);
            $manager->persist($service);
            $prenoms=array('ibou','ablaye','junior','awa','sadikh','omar','elemine','soumaiya','rama','siny','mareme','moussa','lamarana','cire','tamara');
            $noms=array('ndao','sall','ndoye','ba','gueye','dramé','lo','ndiaye','diouf','seck','ngom','fall','sarr','niang','dieng');
            $tels=array(1000000,1200000,600000,500000,150000,75000,200000,450000);
            for ($i = 1; $i < 20; $i++) {
                $employer= new Employer();
                $employer->setNom($noms[array_rand($noms)]);
                $employer->setPrenom($prenoms[array_rand($prenoms)]);
                $employer->setMatricule(EmployerFixtures::getMat($employer->getPrenom(),$employer->getNom(),$i));
                $employer->setSalaire($tels[array_rand($tels)]);
                $employer->setBornAt(new \DateTime());
                $employer->setService($service);

                $manager->persist($employer);
            }
            $manager->flush();
    }
    }
}
