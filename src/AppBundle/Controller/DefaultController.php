<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('default/index.html.twig', [
            'base_dir' => realpath($this->getParameter('kernel.root_dir').'/..'),
        ]);
    }

    /**
     * @Route("/pruebas", name="homepage")
     * @param Request $request
     */
    public function pruebasAction(Request $request)
    {
        // Trabajar con entidades de la BD
        $em = $this->getDoctrine()->getManager();
        // Obtener registros de Usuarios
        $users = $em->getRepository('BackendBundle:User')->findAll();
        var_dump($users);
        die();
    }
}
