<?php

namespace App\Controller;

use App\Entity\Formmattion;
use App\Form\FormmattionType;
use App\Repository\FormmattionRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/formmattion")
 */
class FormmattionController extends AbstractController
{
    /**
     * @Route("/affichage_formation_front", name="affichage_formation_front", methods={"GET"})
     */
    public function affichage_formation_front(FormmattionRepository $formmattionRepository): Response
    {
        return $this->render('formmattion/affichageformation.html.twig', [
            'formmattion' => $formmattionRepository->findAll(),
        ]);
    }

    /**
     * @Route("/", name="formmattion_index", methods={"GET"})
     */
    public function index(FormmattionRepository $formmattionRepository): Response
    {
        return $this->render('formmattion/index.html.twig', [
            'formmattion' => $formmattionRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="formmattion_new", methods={"GET", "POST"})
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $formmattion = new Formmattion();
        $form = $this->createForm(FormmattionType::class, $formmattion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($formmattion);
            $entityManager->flush();

            return $this->redirectToRoute('formmattion_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('formmattion/new.html.twig', [
            'formmattion' => $formmattion,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="formmattion_show", methods={"GET"})
     */
    public function show(Formmattion $formmattion): Response
    {
        return $this->render('formmattion/show.html.twig', [
            'formmattion' => $formmattion,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="formmattion_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Formmattion $formmattion, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(FormmattionType::class, $formmattion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('formmattion_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('formmattion/edit.html.twig', [
            'formmattion' => $formmattion,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="formmattion_delete", methods={"POST"})
     */
    public function delete(Request $request, Formmattion $formmattion, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete' . $formmattion->getId(), $request->request->get('_token'))) {
            $entityManager->remove($formmattion);
            $entityManager->flush();
        }

        return $this->redirectToRoute('formmattion_index', [], Response::HTTP_SEE_OTHER);
    }

    /**
     * @Route("/b", name="affiche_indexb", methods={"GET"})
     */
    public function indexb(Formmattion $formmattion): Response
    {
        return $this->render('formmattion/show.html.twig', [
            'formmattion' => $formmattion,
        ]);
    }
}