<?php

namespace App\Controller;

use Psr\Container\ContainerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class TroisièmeController extends AbstractController
{
    /**
     * @Route("App/Controller", name="trois")
     */

    public function buttonToTroisieme($trois)
    {
        return $this->render("troisième.html.twig",['trois' => $trois]);
    }
}