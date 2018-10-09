<?php

namespace App\Repositories\Frontend;


use App\CategoryItem;
use App\Config;
use App\Menu;
use App\Post;
use App\Product;

class FrontendRepository implements FrontendRepositoryInterface
{


    public function getFrontEndInfo()
    {
        $data = [];
        $post = new Post();
        $news = $post->getAllPostByCategoryHasLimit(8, 3);
        $data['news']=$news;
        return $data;
    }

    public function getFrontend()
    {
        $data = [];
        $post = new Post();
        $categoryItem = new CategoryItem();
        $services = $post->getAllPostByCategory(6);
        $service = $categoryItem->findCategoryById(6);
        foreach ($services as $key => $item) {
            $item->description = cat_chuoi_dai_thanh_ngan($item->description, 75);
        }
        $news = $post->getAllPostByCategoryHasLimit(8, 3);
        foreach ($news as $key => $item) {
            $item->description = cat_chuoi_dai_thanh_ngan($item->description, 85);
        }
        $data['news'] = $news;
        $data['services'] = $services;
        $data['service'] = $service;
        return $data;
    }

    public function getDichVuDetail($path)
    {
        $data = [];
        $post = new Post();
        $service = $post->getPostByCategoryAndPathPost(6, $path);
        $other = $post->findPostOther(6, $service->id);
        $news = $post->getAllPostByCategoryHasLimit(8, 3);
        foreach ($news as $key => $item) {
            $item->description = cat_chuoi_dai_thanh_ngan($item->description, 85);
        }
        $data['news'] = $news;
        $data['post'] = $service;
        $data['other'] = $other;
        return $data;
    }

    public function getAllTinTuc()
    {
        $data = [];
        $post = new Post();
        $news = $post->getAllPostByCategory(8);
        foreach ($news as $key => $item) {
            $item->description = cat_chuoi_dai_thanh_ngan($item->description, 85);
        }
        $data['news'] = $news;
        return $data;
    }

    public function getTinTucDetail($path)
    {
        $data = [];
        $post = new Post();
        $news = $post->getPostByCategoryAndPathPost(8, $path);
        $other = $post->findPostOtherHasTakeAndSort(8, $news->id, 5);
        $data['post'] = $news;
        $data['other'] = $other;
        return $data;
    }

    public function getAllDichVu()
    {
        $data = [];
        $post = new Post();
        $services = $post->getAllPostByCategory(6);
        $data['services'] = $services;
        foreach ($services as $key => $item) {
            $item->description = cat_chuoi_dai_thanh_ngan($item->description, 150);
        }
        return $data;
    }

    public function getAllDuAn()
    {
        $data = [];
        $categoryItem = new CategoryItem();
        $post = new Post();
        $categoryChild=$categoryItem->getChildCategoryByParentId(7);
        foreach ($categoryChild as $key => $item) {
            $product = $post->getAllPostByCategory($item->id);
            $item->product = $product;
        }
        $data['categoryChild'] = $categoryChild;

        return $data;
    }

    public function getDuAnDetail($path)
    {
        $data = [];
        $post = new Post();
        $projects = $post->getPostByCategoryAndPathPost(7, $path);
        $otherId=$projects->categoryitems(CATEGORY_POST)->where('id','!=',7)->first()->id;
        $other = $post->findPostOtherHasTakeAndSort($otherId, $projects->id, 5);
        $data['projects'] = $projects;
        $data['other'] = $other;
        return $data;
    }

    public function getAllMenuFrontend()
    {
        $menu = new Menu();
        $data = $menu->getAllParentOrderBy('order');
        return $data;
    }


}