<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuizStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quiz_students', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('student_id');
            $table->integer('quiz_id');
            $table->integer('assignment_id')->nullable();
            $table->dateTime('assign_date');
            $table->enum('is_taken',['Yes','No'])->default( 'No');
            $table->tinyInteger('attempt')->default(0);
            $table->float('score', 10,2)->nullable();
            $table->dateTime('taken_date')->nullable();
            $table->enum('retake',['Yes','No'])->default( 'No');
            $table->enum('count',['Yes','No'])->default( 'Yes');
            $table->time('quiz_take_duration')->nullable();
            $table->enum('status',['Start','Running','Finished'])->default( 'Start');
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
        Schema::dropIfExists('quiz_students');
    }
}
