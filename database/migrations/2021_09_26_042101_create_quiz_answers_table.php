<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuizAnswersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quiz_answers', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('quiz_student_id');
            $table->integer('question_id');
            $table->dateTime('answer_date')->nullable();
            $table->enum('answered',['Yes','No'])->default('No');
            $table->enum('answer',['No Answer','Right','Wrong','Skipped '])->default('No Answer');
            $table->float('mark',0);
            $table->enum('Retake',['Yes','No'])->default('No');
            $table->time('time_duration')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('quiz_answers');
    }
}
