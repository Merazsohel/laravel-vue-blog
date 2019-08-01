<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Image;

class PostController extends Controller
{
    public function all_post(){
       $posts = Post::with('user','category')->orderBy('id','desc')->get();
       return response()->json([
           'posts' => $posts
       ],200);
    }

    public function save_post(Request $request){
        $strpos = strpos($request->photo,';');
        $sub = substr($request->photo,'0',$strpos);
        $ex = explode('/',$sub)[1];
        $name = time().".".$ex;
        $img = Image::make($request->photo)->resize(300, 200);
        $upload_path = public_path()."/uploadimage/";
        $img->save($upload_path.$name);

        $post = new Post();
        $post->title = $request->title;
        $post->description = $request->description;
        $post->cat_id = $request->cat_id;
        $post->user_id = Auth::id();
        $post->photo = $name;
        $post->save();

    }
}
