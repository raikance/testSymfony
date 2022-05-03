<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TamereController extends AbstractController
{
    #[Route('/tamere', name: 'app_tamere')]
    public function index(): Response
    {
        return $this->render('tamere/index.html.twig', [
            'controller_name' => 'TamereController',
        ]);
    }
}
