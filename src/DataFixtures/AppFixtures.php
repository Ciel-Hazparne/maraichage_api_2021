<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use App\Entity\User;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
Use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AppFixtures extends Fixture
{
    private $encoder;
    public function __construct(UserPasswordEncoderInterface $encoder){
        $this->encoder=$encoder;
    }
    public function load(ObjectManager $manager)
    {
        $faker=Factory::create();
        for ($i=0; $i<=2;$i++){

            $user=new User();
            $password=$this->encoder->encodePassword($user,'admin');
            $user->setUsername($faker->name)
                ->SetPassword($password);
            $manager->persist($user);
        }
        // $product = new Product();


        $manager->flush();
    }
}
