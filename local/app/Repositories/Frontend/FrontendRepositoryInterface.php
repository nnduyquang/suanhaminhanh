<?php

namespace App\Repositories\Frontend;

interface FrontendRepositoryInterface
{
    public function getFrontend();

    public function getFrontEndInfo();

    public function getDichVuDetail($path);

    public function getAllTinTuc();

    public function getTinTucDetail($path);

    public function getAllDichVu();

    public function getAllDuAn();

    public function getDuAnDetail($path);

}