<?php

namespace App\Models;

use App\Jobs\questionImageUploaderJob;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class Option extends Model
{
    protected $fillable = ['question_id', 'question_option_title', 'is_answer'];


    public static function createquestionOptions($request, $id){
        try {
            $rule = [
                'question_option_title' 		=> 'Required',
            ];
            $validation = Validator::make($request, $rule);
            if ($validation->fails()) {
                return false;
            }
            else {
                 DB::beginTransaction();
                if($request['type'] == "Free text"){
                    foreach ($request['question_option_title'] as $key => $question){
                        Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => 'Free Text',
                            'is_answer'              => $question,
                        ]);
                    }
                }
                else if($request['type'] == "Multiple choice"){
                    foreach ($request['question_option_title'] as $key => $question){
                         Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => $question,
                            'is_answer'              => $request['is_answer'][$key],
                        ]);
                    }
                }
                else if($request['type'] == "True/false"){
                    foreach ($request['question_option_title'] as $key => $question){
                        Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => $question,
                            'is_answer'              => $request['is_answer'][$key],
                        ]);
                    }
                }
                else if($request['type'] == "Single Choice"){
                    foreach ($request['question_option_title'] as $key => $question){
                        Option::create([
                            'question_id'              =>$id,
                            'question_option_title'    =>$question,
                            'is_answer'                =>$request['is_answer'][$key],
                        ]);
                    }
                }
                else if($request['type'] == "Fill in the blanks"){
                    foreach ($request['question_option_title'] as $key => $question){
                        Option::create([
                            'question_id'               =>$id,
                            'question_option_title'     =>'Fill in the blanks',
                            'is_answer'                 =>$question,
                        ]);
                    }
                }
                else if($request['type'] == "Picture choice"){
                    foreach ($request['question_option_title'] as $key => $question){
                        $option = Option::create([
                            'question_id'            => $id,
                            'is_answer'              => $request['is_answer'][$key],
                        ]);
                        $photo = (isset($question) && $question!= "")?$question:"";
                        if ($photo!="") {
                            $ext                    = $photo->getClientOriginalExtension();
                            $photoFullName          = time().$photo->getClientOriginalName();
                            $uploadPath             = 'assets/images/option/';
                            $success                = $photo->move($uploadPath, $photoFullName);
                            $option->question_option_title    = $photoFullName;
                            $option->save();
                        }
                    }
                }
                else if($request['type'] == "Match pair"){
                    foreach ($request['question_option_title'] as $key => $question){
                        Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => $question,
                            'is_answer'              =>$request['is_answer'][$key],
                        ]);
                    }
                }
                else if($request['type'] == "Ordering"){
                    foreach ($request['question_option_title'] as $key => $question){
                        Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => $question,
                            'is_answer'              => '0',
                        ]);
                    }
                }
                else if($request['type'] == "Graph"){
                    foreach ($request['question_option_title'] as $key => $question){
                        Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => $question,
                            'is_answer'              =>$request['is_answer'][$key],
                        ]);
                    }
                }
                else if($request['type'] == "Match pair image"){
                    foreach ($request['question_option_title'] as $key => $question){
                        $option = Option::create([
                            'question_id'            => $id,
                        ]);
                        $photoquestion = (isset($question) && $question!= "")?$question:"";
                        if ($photoquestion!="") {
                            $ext                    = $photoquestion->getClientOriginalExtension();
                            $photoFullName          = time().$photoquestion->getClientOriginalName();
                            $uploadPath             = 'assets/images/option/';
                            $success                = $photoquestion->move($uploadPath, $photoFullName);
                            $option->question_option_title    = $photoFullName;
                            $option->save();
                        }
                        $photoanser = (isset($request['is_answer'][$key]) && $request['is_answer'][$key]!= "")?$request['is_answer'][$key]:"";
                        if ($photoanser!="") {
                            $ext                    = $photoanser->getClientOriginalExtension();
                            $photoFullName          = time().$photoanser->getClientOriginalName();
                            $uploadPath             = 'assets/images/option/';
                            $success                = $photoanser->move($uploadPath, $photoFullName);
                            $option->is_answer    = $photoFullName;
                            $option->save();
                        }
                    }
                }
                else {
                    return 0;
                }
                DB::commit();
                return true;
            }

        } catch (\Exception $e) {
            DB::rollback();
            return false;
        }
    }

    public static function editquestionOptions($request, $id){
        try {
            $rule = [
               // 'question_option_title' 		=> 'Required',
            ];
            $validation = Validator::make($request, $rule);
            if ($validation->fails()) {
                return false;
            }
            else {
                DB::beginTransaction();
                Option::where('question_id', $id)->delete();
                if($request['type'] == "Free text"){
                    foreach ($request['question_option_title'] as $key => $questionTitle) {
                        Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => "Free Text",
                            'is_answer'              => $questionTitle,
                        ]);
                    }
                }
                else if($request['type'] == "Multiple choice"){
                        foreach ($request['question_option_title'] as $key => $questionTitle) {
                            Option::create([
                                'question_id'            => $id,
                                'question_option_title'  => $questionTitle,
                                'is_answer'              => $request['is_answer'][$key],
                            ]);
                        }
                }
                else if($request['type'] == "True/false"){
                    foreach ($request['question_option_title'] as $key => $questionTitle) {
                        Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => $questionTitle,
                            'is_answer'              => $request['is_answer'][$key],
                        ]);
                    }
                }
                else if($request['type'] == "Single Choice"){
                    foreach ($request['question_option_title'] as $key => $questionTitle) {
                        Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => $questionTitle,
                            'is_answer'              => $request['is_answer'][$key],
                        ]);
                    }
                }
                else if($request['type'] == "Fill in the blanks"){
                    foreach ($request['question_option_title'] as $key => $questionTitle) {
                        Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => "Fill in the blanks",
                            'is_answer'              => $questionTitle,
                        ]);
                    }
                }
                else if($request['type'] == "Picture choice"){
                    if(isset($request['question_option_title']) && $request['question_option_title']!= ""){
                        foreach ($request['question_option_title'] as $key => $question){

                            $option = Option::create([
                                'question_id'            => $id,
                                'is_answer'              => $request['is_answer'][$key],
                            ]);
                            $photo = (isset($question) && $question!= "")?$question:"";
                            if ($photo!="") {
                                $ext                    = $photo->getClientOriginalExtension();
                                $photoFullName          = time().$photo->getClientOriginalName();
                                $uploadPath             = 'assets/images/option/';
                                $success                = $photo->move($uploadPath, $photoFullName);
                                $option->question_option_title    = $photoFullName;
                                $option->save();
                            }
                        }
                    }else {
                        foreach ($request['option_id'] as $key => $question){
                            $option = Option::create([
                                'question_id'            => $id,
                                'is_answer'              => $request['is_answer'][$key],
                            ]);

                        }
                    }


                }
                else if($request['type'] == "Match pair"){
                    foreach ($request['question_option_title'] as $key => $question){
                        Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => $question,
                            'is_answer'              =>$request['is_answer'][$key],
                        ]);
                    }
                }
                else if($request['type'] == "Ordering"){
                    foreach ($request['question_option_title'] as $key => $question){
                        Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => $question,
                            'is_answer'              => '0',
                        ]);
                    }
                }
                else if($request['type'] == "Graph"){
                    foreach ($request['question_option_title'] as $key => $question){
                        Option::create([
                            'question_id'            => $id,
                            'question_option_title'  => $question,
                            'is_answer'              =>$request['is_answer'][$key],
                        ]);
                    }
                }
                else if($request['type'] == "Match pair image"){
                    if(isset($request['question_option_title']) && $request['question_option_title']!= ""){
                        foreach ($request['question_option_title'] as $key => $question) {
                            $option = Option::create([
                                'question_id' => $id,
                            ]);
                            $photoquestion = (isset($question) && $question != "") ? $question : "";
                            if ($photoquestion != "") {
                                $ext = $photoquestion->getClientOriginalExtension();
                                $photoFullName = time() . $photoquestion->getClientOriginalName();
                                $uploadPath = 'assets/images/option/';
                                $success = $photoquestion->move($uploadPath, $photoFullName);
                                $option->question_option_title = $photoFullName;
                                $option->save();
                            }
                            $photoanser = (isset($request['is_answer'][$key]) && $request['is_answer'][$key] != "") ? $request['is_answer'][$key] : "";
                            if ($photoanser != "") {
                                $ext = $photoanser->getClientOriginalExtension();
                                $photoFullName = time() . $photoanser->getClientOriginalName();
                                $uploadPath = 'assets/images/option/';
                                $success = $photoanser->move($uploadPath, $photoFullName);
                                $option->is_answer = $photoFullName;
                                $option->save();
                            }
                        }
                    } else {
                        foreach ($request['question_option_title'] as $key => $question) {
                            $option = Option::create([
                                'question_id' => $id,
                            ]);
                        }
                    }
                }
                else {
                    echo "Please select Type?";
                }

                DB::commit();
                return true;
            }

        } catch (\Exception $e) {
            DB::rollback();
            return false;
        }
    }
}
