<?php

namespace App\Controller;

use App\Entity\Mesures;
use App\Form\MesuresType;
use App\Repository\MesuresRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;

/**
 * @Route("/mesures")
 */
class MesuresController extends AbstractController
{
    /**
     * @Route("/", name="mesures_index", methods={"GET"})
     * @param MesuresRepository $mesuresRepository
     * @param PaginatorInterface $paginator
     * @param Request $request
     * @return Response
     */
    public function index(MesuresRepository $mesuresRepository, PaginatorInterface $paginator, Request $request): Response
    {
        $mesures = $paginator->paginate($mesuresRepository->findAll(),$request->query->getInt('page',1),4);
//        $mesures = $mesuresRepository->findAll();
//        dd($mesures);

        return $this->render('mesures/index.html.twig', [
            'mesures' => $mesures,
        ]);
    }

    /**
     * @Route("/new", name="mesures_new", methods={"GET","POST"})
     * @param Request $request
     * @return Response
     */
    public function new(Request $request): Response
    {
        $mesure = new Mesures();
        $form = $this->createForm(MesuresType::class, $mesure);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($mesure);
            $entityManager->flush();

            return $this->redirectToRoute('mesures_index');
        }

        return $this->render('mesures/new.html.twig', [
            'mesure' => $mesure,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="mesures_show", methods={"GET"})
     * @param Mesures $mesure
     * @return Response
     */
    public function show(Mesures $mesure): Response
    {
        return $this->render('mesures/show.html.twig', [
            'mesure' => $mesure,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="mesures_edit", methods={"GET","POST"})
     * @param Request $request
     * @param Mesures $mesure
     * @return Response
     */
    public function edit(Request $request, Mesures $mesure): Response
    {
        $form = $this->createForm(MesuresType::class, $mesure);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('mesures_index');
        }

        return $this->render('mesures/edit.html.twig', [
            'mesure' => $mesure,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="mesures_delete", methods={"DELETE"})
     * @param Request $request
     * @param Mesures $mesure
     * @return Response
     */
    public function delete(Request $request, Mesures $mesure): Response
    {
        if ($this->isCsrfTokenValid('delete'.$mesure->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($mesure);
            $entityManager->flush();
        }

        return $this->redirectToRoute('mesures_index');
    }
}


