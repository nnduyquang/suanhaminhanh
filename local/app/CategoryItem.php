<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryItem extends Model
{
    protected $fillable = [
        'name','path','description','image','image_mobile','level','parent_id','type','seo_id','order','is_active'
    ];
    protected $table = 'category_items';
    protected $hidden = ['id'];
    public function seos(){
        return $this->belongsTo('App\Seo','seo_id');
    }
    public function children()
    {
        return $this->hasMany('App\CategoryItem', 'parent_id')
            ->with('children');
    }

    public function posts(){
        return $this->belongsToMany('App\Post','category_many','category_id','item_id')->withTimestamps();
    }

    public function prepareParameters($parameters,$type)
    {
        if (!$parameters->has('is_active'))
            $parameters->request->add(['is_active' => null]);
        $parameters->request->add(['path' => '']);
        $parameters->request->add(['level' => 0]);
        switch ($type) {
            case'categoryproduct':
                $parameters->request->add(['type' => CATEGORY_PRODUCT]);
                break;
            case'categorypost':
                $parameters->request->add(['level' => CATEGORY_POST]);
                break;
        }
        $parent_id = $parameters->input('parent_id');
        if ($parent_id == '-1') {
            $parameters['parent_id'] = null;
            $parameters['level'] = 0;
        }else{
            $parameters['level']=self::findLevelById($parent_id)+1;
        }
        return $parameters;
    }

    public function findLevelById($id){
        return $this->where('id',$id)->first()->level;
    }
    public function findCategoryById($id){
        return $this->where('id',$id)->first();
    }
    public function getChildCategoryByParentId($parent_id){
        return $this->where('parent_id',$parent_id)->where('is_active', ACTIVE)->get();
    }

    public function getAllCategoryByType($type)
    {
        return $this->where('type', $type)->orderBy('order')->get();
    }
    public function getAllOrderBy($order,$type)
    {
        return $this->where('type', $type)->orderBy($order)->get();
    }

    public function getAllParent($order, $type)
    {
        $newArray = array();
        $categoryItems = self::getAllOrderBy($order,$type);
        foreach ($categoryItems as $key => $item) {
            if (!isset($item->parent_id)) {
                array_push($newArray, $item);
            }
        }
        return $newArray;
    }
    public function setIsActiveAttribute($value)
    {
        if (!IsNullOrEmptyString($value)) {
            $this->attributes['is_active'] = 1;
        } else {
            $this->attributes['is_active'] = 0;
        }
    }

    public function setPathAttribute($value)
    {
        if (IsNullOrEmptyString($value))
            $this->attributes['path'] = chuyen_chuoi_thanh_path($this->name);
    }

    public function setOrderAttribute($value)
    {
        if (IsNullOrEmptyString($value))
            $this->attributes['order'] = 1;
    }
    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($categoryItem) { // before delete() method call this
            $categoryItem->seos->delete();
        });

    }
}
