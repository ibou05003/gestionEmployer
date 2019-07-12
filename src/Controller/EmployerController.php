<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Common\Persistence\ObjectManager;
use App\Entity\Employer;
use App\Entity\Service;
use App\Repository\EmployerRepository;
use Doctrine\ORM\Mapping\Entity;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\DateType;

class EmployerController extends AbstractController
{
    /**
     * @Route("/employer", name="liste_employer")
     */
    public function index(EmployerRepository $repo)
    {
        $employers=$repo->findAll();
        return $this->render('employer/index.html.twig', [
            'controller_name' => 'EmployerController',
            'employers'=>$employers
        ]);
    }
    /**
     * @Route("/acceuil", name="acceuil")
     */
    public function acceuil()
    {
        return $this->render('employer/acceuil.html.twig');
    }
    /**
     * @Route("/employer/ajout", name="ajout_employer")
     * @Route("/employer/{id}/edit", name="edit_employer")
     */
    public function ajout(Employer $employer=null,Request $request,ObjectManager $manager)
    {
        if(!$employer){
            $employer=new Employer();
        }
                $form=$this-> createFormBuilder($employer)
                        ->add('nom')
                        ->add('prenom')
                        ->add('bornAt',DateType::class,[
                            'widget' => 'single_text'
                        ])
                        ->add('salaire')
                        ->add('service',EntityType::class,[
                            'class'=>Service::class,
                            'choice_label'=>'libelle'])
                        ->getForm();

                $form->handleRequest($request);
                if($form->isSubmitted() && $form->isValid()){
                    $ch=strtoupper(substr($employer->getPrenom(),0,2).substr($employer->getNom(),0,2)."-");
                    $employer->setMatricule($ch);
                    $manager->persist($employer);
                    $manager->flush();
                    $ch.=$employer->getId();
                    $employer->setMatricule($ch);
                    $manager->persist($employer);
                    $manager->flush();
                    return $this->redirectToRoute('liste_employer'); 
                }
            
        
            return $this->render('employer/formulaire.html.twig',[
                'formEmployer'=>$form->createView(),
                'editMode'=>$employer->getId()!==null
            ]);
    }

    /**
    * @Route("/employer/{i}", name="employer_infos")
    */
    public function infos()
    {
        return $this->render('employer/infos.html.twig');
    }
    
}
