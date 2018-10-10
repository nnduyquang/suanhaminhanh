<?php



Route::get('/', 'FrontendController@getFrontend');

Route::get('/gioi-thieu-minh-anh.html', function () {
    return view('frontend.about-us.index');
});

Route::get('/lien-he.html', function () {
    return view('frontend.contact.index');
});

Route::get('/bao-gia.html', function () {
    return view('frontend.baogia.index');
});


Route::get('/tin-tuc.html', 'FrontendController@getAllTinTuc');


Route::get('/tin-tuc/{path}','FrontendController@getTinTucDetail');

Route::get('/du-an.html','FrontendController@getAllDuAn');

Route::get('/dich-vu/{path}', 'FrontendController@getDichVuDetail')->name('dichvu.detail');

Route::get('/dich-vu.html', 'FrontendController@getAllDichVu');
//Route::get('/du-an-chi-tiet.html', function () {
//    return view('frontend.project-details.index');
//});
Route::get('/du-an/{path}','FrontendController@getDuAnDetail');


Route::post('/tim-kiem','FrontendController@getSearch')->name('search');



Route::get('/admin/sml_login', 'AuthController@checklogin');
Route::post('sml_login', 'AuthController@login')->name('login');
Route::get('/admin/sml_logout', 'AuthController@logout')->name('logout');

Route::group(['middleware' => ['auth']], function () {
    Route::get('sml_admin/dashboard', function () {
        return view('backend.admin.dashboard.index');
    })->name('dashboard');
    Route::resource('sml_admin/users', 'UserController');
    //ROLE
    Route::get('sml_admin/roles', ['as' => 'roles.index', 'uses' => 'RoleController@index', 'middleware' => ['permission:role-list|role-create|role-edit|role-delete']]);
    Route::post('sml_admin/roles/create', ['as' => 'roles.store', 'uses' => 'RoleController@store', 'middleware' => ['permission:role-create']]);
    Route::get('sml_admin/roles/create', ['as' => 'roles.create', 'uses' => 'RoleController@create', 'middleware' => ['permission:role-create']]);
    Route::get('sml_admin/roles/{id}/edit', ['as' => 'roles.edit', 'uses' => 'RoleController@edit', 'middleware' => ['permission:role-edit']]);
    Route::patch('sml_admin/roles/{id}', ['as' => 'roles.update', 'uses' => 'RoleController@update', 'middleware' => ['permission:role-edit']]);
    Route::delete('sml_admin/roles/{id}', ['as' => 'roles.destroy', 'uses' => 'RoleController@destroy', 'middleware' => ['permission:role-delete']]);
    Route::get('sml_admin/roles/{id}', ['as' => 'roles.show', 'uses' => 'RoleController@show']);

    //PAGE
    Route::get('sml_admin/page', ['as' => 'page.index', 'uses' => 'PageController@index', 'middleware' => ['permission:page-list|page-create|page-edit|page-delete']]);
    Route::post('sml_admin/page/create', ['as' => 'page.store', 'uses' => 'PageController@store', 'middleware' => ['permission:page-create']]);
    Route::post('sml_admin/page', ['as' => 'page.search', 'uses' => 'PageController@search']);
    Route::get('sml_admin/page/create', ['as' => 'page.create', 'uses' => 'PageController@create', 'middleware' => ['permission:page-create']]);
    Route::get('sml_admin/page/{id}/edit', ['as' => 'page.edit', 'uses' => 'PageController@edit', 'middleware' => ['permission:page-edit']]);
    Route::patch('sml_admin/page/{id}', ['as' => 'page.update', 'uses' => 'PageController@update', 'middleware' => ['permission:page-edit']]);
    Route::delete('sml_admin/page/{id}', ['as' => 'page.destroy', 'uses' => 'PageController@destroy', 'middleware' => ['permission:page-delete']]);

    //CATEGORY POST
    Route::get('sml_admin/danh-muc-bai-viet', ['as' => 'categorypost.index', 'uses' => 'CategoryItemController@index', 'middleware' => ['permission:page-list|page-create|page-edit|page-delete']])->defaults('type','categorypost');
    Route::post('sml_admin/danh-muc-bai-viet/search', ['as' => 'categorypost.search', 'uses' => 'CategoryItemController@search'])->defaults('type','categorypost');
    Route::post('sml_admin/danh-muc-bai-viet/create', ['as' => 'categorypost.store', 'uses' => 'CategoryItemController@store', 'middleware' => ['permission:page-create']])->defaults('type','categorypost');
    Route::get('sml_admin/danh-muc-bai-viet/create', ['as' => 'categorypost.create', 'uses' => 'CategoryItemController@create', 'middleware' => ['permission:page-create']])->defaults('type','categorypost');
    Route::get('sml_admin/danh-muc-bai-viet/{id}/edit', ['as' => 'categorypost.edit', 'uses' => 'CategoryItemController@edit', 'middleware' => ['permission:page-edit']])->defaults('type','categorypost');
    Route::patch('sml_admin/danh-muc-bai-viet/{id}', ['as' => 'categorypost.update', 'uses' => 'CategoryItemController@update', 'middleware' => ['permission:page-edit']])->defaults('type','categorypost');
    Route::delete('sml_admin/danh-muc-bai-viet/{id}', ['as' => 'categorypost.destroy', 'uses' => 'CategoryItemController@destroy', 'middleware' => ['permission:page-delete']])->defaults('type','categorypost');

    //POST
    Route::get('sml_admin/post', ['as' => 'post.index', 'uses' => 'PostController@index', 'middleware' => ['permission:page-list|page-create|page-edit|page-delete']]);
    Route::post('sml_admin/post/create', ['as' => 'post.store', 'uses' => 'PostController@store', 'middleware' => ['permission:post-create']]);
    Route::post('sml_admin/post', ['as' => 'post.search', 'uses' => 'PostController@search']);
    Route::get('sml_admin/post/create', ['as' => 'post.create', 'uses' => 'PostController@create', 'middleware' => ['permission:post-create']]);
    Route::get('sml_admin/post/{id}/edit', ['as' => 'post.edit', 'uses' => 'PostController@edit', 'middleware' => ['permission:post-edit']]);
    Route::patch('sml_admin/post/{id}', ['as' => 'post.update', 'uses' => 'PostController@update', 'middleware' => ['permission:post-edit']]);
    Route::delete('sml_admin/post/{id}', ['as' => 'post.destroy', 'uses' => 'PostController@destroy', 'middleware' => ['permission:post-delete']]);

    //CATEGORY PRODUCT
    Route::get('sml_admin/danh-muc-san-pham', ['as' => 'categoryproduct.index', 'uses' => 'CategoryProductController@index', 'middleware' => ['permission:page-list|page-create|page-edit|page-delete']]);
    Route::post('sml_admin/danh-muc-san-pham/search', ['as' => 'categoryproduct.search', 'uses' => 'CategoryProductController@search']);
    Route::post('sml_admin/danh-muc-san-pham/paste', ['as' => 'categoryproduct.paste', 'uses' => 'CategoryProductController@paste']);
    Route::post('sml_admin/danh-muc-san-pham/create', ['as' => 'categoryproduct.store', 'uses' => 'CategoryProductController@store', 'middleware' => ['permission:page-create']]);
//    Route::post('sml_admin/danh-muc-bai-vie', ['as' => 'categorypost.search', 'uses' => 'TuyenDungController@search']);
    Route::get('sml_admin/danh-muc-san-pham/create', ['as' => 'categoryproduct.create', 'uses' => 'CategoryProductController@create', 'middleware' => ['permission:page-create']]);
    Route::get('sml_admin/danh-muc-san-pham/{id}/edit', ['as' => 'categoryproduct.edit', 'uses' => 'CategoryProductController@edit', 'middleware' => ['permission:page-edit']]);
    Route::patch('sml_admin/danh-muc-san-pham/{id}', ['as' => 'categoryproduct.update', 'uses' => 'CategoryProductController@update', 'middleware' => ['permission:page-edit']]);
    Route::delete('sml_admin/danh-muc-san-pham/{id}', ['as' => 'categoryproduct.destroy', 'uses' => 'CategoryProductController@destroy', 'middleware' => ['permission:page-delete']]);

    //PRODUCT
    Route::get('sml_admin/san-pham', ['as' => 'product.index', 'uses' => 'ProductController@index', 'middleware' => ['permission:product-list|product-create|product-edit|product-delete']]);
    Route::post('sml_admin/san-pham/create', ['as' => 'product.store', 'uses' => 'ProductController@store', 'middleware' => ['permission:product-create']]);
    Route::post('sml_admin/san-pham/search', ['as' => 'product.search', 'uses' => 'ProductController@search']);
    Route::post('sml_admin/san-pham/past', ['as' => 'product.paste', 'uses' => 'ProductController@paste']);
    Route::get('sml_admin/san-pham/create', ['as' => 'product.create', 'uses' => 'ProductController@create', 'middleware' => ['permission:product-create']]);
    Route::get('sml_admin/san-pham/{id}/edit', ['as' => 'product.edit', 'uses' => 'ProductController@edit', 'middleware' => ['permission:product-edit']]);
    Route::patch('sml_admin/san-pham/{id}', ['as' => 'product.update', 'uses' => 'ProductController@update', 'middleware' => ['permission:product-edit']]);
    Route::delete('sml_admin/san-pham/{id}', ['as' => 'product.destroy', 'uses' => 'ProductController@destroy', 'middleware' => ['permission:product-delete']]);
    //CONFIG
    //------GENERAL

    Route::get('sml_admin/config', ['as' => 'config.index', 'uses' => 'ConfigGeneralController@getConfig']);
    Route::post('sml_admin/config', ['as' => 'config.store', 'uses' => 'ConfigGeneralController@saveConfig']);


    //MENU
    Route::get('sml_admin/menu', ['as' => 'menu.index', 'uses' => 'MenuController@index']);
    Route::post('sml_admin/menu/create', ['as' => 'menu.store', 'uses' => 'MenuController@store']);
    Route::post('sml_admin/menu/order-menu', ['as' => 'menu.order', 'uses' => 'MenuController@orderMenu']);
    Route::put('sml_admin/menu/edit', ['as' => 'menu.update', 'uses' => 'MenuController@update']);
    Route::delete('sml_admin/menu/{id}', ['as' => 'menu.delete', 'uses' => 'MenuController@delete']);


});
