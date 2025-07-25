<?php

namespace App\Controller;

use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Contracts\HttpClient\Exception\ClientExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\DecodingExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\RedirectionExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\ServerExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\TransportExceptionInterface;
use Symfony\Contracts\HttpClient\HttpClientInterface;


class TraitementController extends AbstractController
{
    /**
     * Permet de recuper les customers
     * @Route("/home", name="app")
     * @param HttpClientInterface $httpClient
     * @param Request $request
     * @param PaginatorInterface $paginator
     * @return Response
     * @throws ClientExceptionInterface
     * @throws DecodingExceptionInterface
     * @throws RedirectionExceptionInterface
     * @throws ServerExceptionInterface
     * @throws TransportExceptionInterface
     */

    public function getCustomers(HttpClientInterface $httpClient, Request $request, PaginatorInterface $paginator): Response
    {
        $mesures = $httpClient->request('GET', 'http://localhost:8000/api/mesures')->toArray();
        $pagination = $paginator->paginate($mesures,
            $request->query->getInt('page', 1), 25);

// dd($mesures);
        return $this->render('traitement/index.html.twig', [
            'mesures' => $mesures,
            'pagination' => $pagination,
        ]);
    }



    /**
     * @Route("/", name="start")
     */
    public function index(): Response
    {
        return $this->render('traitement/index.html.twig', [
            'controller_name' => 'TraitementController',
        ]);
    }

}