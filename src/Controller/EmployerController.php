<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class EmployerController extends AbstractController
{
    /**
     * @Route("/employer", name="employer")
     */
    public function index()
    {
        return $this->render('employer/index.html.twig', [
            'controller_name' => 'EmployerController',
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
    * @Route("/employer/{i}", name="employer_infos")
    */
    public function infos()
    {
        return $this->render('employer/infos.html.twig');
    }
    
}
