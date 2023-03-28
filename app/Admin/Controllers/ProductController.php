<?php

namespace App\Admin\Controllers;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use App\Models\Product;
use Encore\Admin\Controllers\AdminController;
use Illuminate\Support\Facades\Storage;

class ProductController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Product controller';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Product);

        $grid->column('id', __('ID'))->sortable();
        $grid->active('¿Activo?')->display(function ($activo) {
            return $activo ? 'Sí' : 'No';
        });
        $grid->column('title', __('Nombre'));
        $grid->image('Imagen')->display(function ($name) {
            $url = Storage::url($name);
            return "<img src=' $url' width='20' heigth='20'></img>";
        });
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        $grid->filter(function ($filter) {
            $filter->between('created_at', 'Created Time')->datetime();
        });

        $grid->perPages([10, 20, 30, 40, 50]);

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed   $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Product::findOrFail($id));

        $show->field('id', __('ID'));
        $show->active('¿Activo?')->as(function ($content) {
            $content = $content ? 'Sí' : 'No';
            return $content;
        });
        $show->field('title', 'Nombre');
        $show->field('descripcion', 'Descripción');
        $show->image('Imagen')->image();
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Product);

        $form->display('id', __('ID'));
        $form->switch('active', __('¿Active?'));
        $form->text('title', __('Nombre'));
        $form->textarea('descripcion', __('Descripción'));
        $form->image('image', __('Imagen'));
        $form->display('created_at', __('Created At'));
        $form->display('updated_at', __('Updated At'));

        return $form;
    }
}
