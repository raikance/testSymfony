<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MadeController extends AbstractController
{
    #[Route('/made', name: 'app_made')]
    public function index(): Response
    {
        return $this->render('made/index.html.twig', [
            'controller_name' => 'MadeController',
        ]);
    }
}
