<?php

namespace App\Jobs;

use App\Models\Quiz;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Log;

class quizAttachmentUploaderJob implements ShouldQueue
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
        $this->data   = $data;
        $this->id   = $id;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $quiz = Quiz::where('id',$this->id)->first();
        $quiz->attachment       = $this->data;
        $quiz->save();
    }
}
