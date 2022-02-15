<?php

namespace App\Controller;

use App\Entity\Avis;
use App\Form\AvisType;
use App\Repository\AvisRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
/**
 * @Route("/avis")
 */
class AvisController extends AbstractController
{

    public function AddavisAction(Request $request){
        $avis = new avis();
        $form = $this->createFormBuilder(AvisType::class, $avis);
        $form->handleRequest($request);
        dump($request);

        if($form->isSubmitted() && $form->isValid())
        {
            $em = $this->getDoctrine()->getManager();
            $em->persist($avis);
            $em->flush();
            return $this->redirectToRoute('avis_show');
        }
        return $this->render("avis/add_avis.html.twig",array('form'=>$form->createView()));
    }

    public function afficheAction()
    {
        $tab=$this->getDoctrine()->getRepository(avis::class)->findAll();

        return $this->render("avis/index_avis.html.twig",array('formulaire'=>$tab));
    }
    public function deleteAction($id){
        $em=$this->getDoctrine()->getManager();
        $avis=$em->getRepository(avis::class)->find($id);
        $em->remove($avis);
        $em->flush();
        return $this->redirectToRoute('avis_show');
    }
    public function editAction(Request $request, $id)
    {

        $c = $this->getDoctrine()->getRepository(avis::class)->find($id);
        $form = $this->createFormBuilder($c)
            ->add('rating',ChoiceType::class,["choices"=>["1"=>1,"2"=>2,"3"=>3,"4"=>4,"5"=>5   ]])
            ->add('category',ChoiceType::class,["choices"=>["Events"=>event,"Orders"=>orders
                ,"Competition"=>competition,"Articles"=>article]])
            ->add('title',TextType::class)
            ->add('content',TextType::class)
            ->add('submit',SubmitType::class)
            ->getForm();

        $form->handleRequest($request);
        if ($form->isSubmitted()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($c);
            $em->flush();
            return $this->redirectToRoute('avis_show');
        }
        return $this->render("avis/edit_avis.html.twig", ["f" => $form->createView()]);
    }

    public function filterAction(Request $request)
    {
        $requestString = $request->get('Type');

        $rev =  $this->getDoctrine()->getRepository('AppBundle:avis')->findByCategory(['Type'=>$requestString]);
        ;
        return $this->render("avis/index_avis.html.twig",["formulaire"=>$rev]);
    }

}

