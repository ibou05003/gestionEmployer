<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Common\Persistence\ObjectManager;
use App\Entity\Service;
use App\Repository\ServiceRepository;

class ServiceController extends AbstractController
{
    /**
     * @Route("/service", name="service")
     */
    public function index()
    {
        return $this->render('service/index.html.twig', [
            'controller_name' => 'ServiceController',
        ]);
    }
    /**
     * @Route("/service/ajout", name="ajout_service")
     * @Route("/service/{id}/edit", name="edit_service")
     */
    public function ajout(Service $service=null,Request $request,ObjectManager $manager)
    {
       if(!$service){
           $service=new Service();
       }
            $form=$this-> createFormBuilder($service)
                       ->add('libelle')
                       ->getForm();

            $form->handleRequest($request);
            if($form->isSubmitted() && $form->isValid()){
                $manager->persist($service);
                $manager->flush();
            }
            
        
        return $this->render('service/ajout.html.twig',[
            'formService'=>$form->createView(),
            'editMode'=>$service->getId()!==null
        ]);
    }
    /**
     * @Route("/service/liste", name="liste_service")
     */
    public function liste(ServiceRepository $repo)
    {
        $services=$repo->findAll();
        return $this->render('service/liste.html.twig',[
            'services'=>$services
        ]);
    }
    /**
     * @Route("/service/{id}", name="info_service")
     */
    public function infos(Service $service)
    {
        return $this->render('service/info.html.twig',[
            'service'=>$service
        ]);
    }
}
