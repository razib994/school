<?php

namespace App\Jobs;

use App\Models\Question;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class questionAudioUploaderJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    public $data, $id;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($data, $id)
    {
        $this->data     = $data;
        $this->id       = $id;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $question = Question::where('id',$this->id)->first();
        $question->audio = $this->data;
        $question->save();
    }
}
