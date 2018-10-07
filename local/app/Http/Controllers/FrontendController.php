<?php

namespace App\Http\Controllers;

use App\Repositories\Frontend\FrontendRepositoryInterface;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    protected $frontendRepository;

    public function __construct(FrontendRepositoryInterface $frontendRepository)
    {
        $this->frontendRepository = $frontendRepository;
    }

    public function getFrontend()
    {
        $data = $this->frontendRepository->getFrontend();
        return view('frontend.home.index', compact('data'));
    }

    public function getDichVuDetail($path)
    {
        $data = $this->frontendRepository->getDichVuDetail($path);
        return view('frontend.service-details.index', compact('data'));
    }

    public function getAllTinTuc()
    {
        $data = $this->frontendRepository->getAllTinTuc();
        return view('frontend.news.index', compact('data'));
    }

    public function getTinTucDetail($path)
    {
        $data = $this->frontendRepository->getTinTucDetail($path);
        return view('frontend.news-detail.index', compact('data'));
    }

    public function getAllDichVu()
    {
        $data = $this->frontendRepository->getAllDichVu();
        return view('frontend.services.index', compact('data'));
    }
    public function getAllDuAn(){
        $data = $this->frontendRepository->getAllDuAn();
        return view('frontend.project.index', compact('data'));
    }
    public function getDuAnDetail($path){
        $data = $this->frontendRepository->getDuAnDetail($path);
        return view('frontend.project-details.index', compact('data'));
    }



}

