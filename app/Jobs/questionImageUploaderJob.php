<?php

namespace App\Jobs;

use App\Models\Question;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class questionImageUploaderJob implements ShouldQueue
{
    public $data, $id;
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($data, $id)
    {
        $this->data  = $data;
        $this->id   = $id;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $question = Question::where('id',$this->id)->first();
        $question->image        = $this->data;
        $question->save();
    }
}
