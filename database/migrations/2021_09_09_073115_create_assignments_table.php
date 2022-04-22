<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAssignmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('assignments', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->dateTime('available_from');
            $table->dateTime('deadline');
            $table->time('quiz_time_limit')->nullable();
            $table->time('question_time_limit')->nullable();
            $table->enum('multiple_attampt',['Yes','No'])->default( 'Yes');
            $table->enum('is_exam',['Yes','No'])->default( 'No');
            $table->double('final_score');
            $table->time('taken_time');
            $table->enum('completed_status',['Yes','No'])->default( 'No');
            $table->string('school_id')->nullable();
            $table->foreignId('created_by');
            $table->enum('status',['Active','Inactive'])->default( 'Active');
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
        Schema::dropIfExists('assignments');
    }
}
