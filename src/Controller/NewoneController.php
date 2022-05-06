<?php

namespace App\Controller;

use App\Entity\Newone;
use App\Form\NewoneType;
use App\Repository\NewoneRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;

#[Route('/newone')]
class NewoneController extends AbstractController
{
    #[Route('/', name: 'app_newone_index', methods: ['GET'])]
    public function index(EntityManagerInterface $entityManager): Response
    {
        $newones = $entityManager
            ->getRepository(Newone::class)
            ->findAll();

        return $this->render('newone/index.html.twig', [
            'newones' => $newones,
        ]);
    }

    #[Route('/new', name: 'app_newone_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $newone = new Newone();
        $form = $this->createForm(NewoneType::class, $newone);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($newone);
            $entityManager->flush();

            return $this->redirectToRoute('app_newone_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('newone/new.html.twig', [
            'newone' => $newone,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_newone_show', methods: ['GET'])]
    public function show(Newone $newone): Response
    {
        return $this->render('newone/show.html.twig', [
            'newone' => $newone,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_newone_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Newone $newone, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(NewoneType::class, $newone);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_newone_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('newone/edit.html.twig', [
            'newone' => $newone,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_newone_delete', methods: ['POST'])]
    public function delete(Request $request, Newone $newone, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$newone->getId(), $request->request->get('_token'))) {
            $entityManager->remove($newone);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_newone_index', [], Response::HTTP_SEE_OTHER);
    }
}
