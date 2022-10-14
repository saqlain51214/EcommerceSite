<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class Mail extends Mailable
{
    use Queueable, SerializesModels;
    public $order_product;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($order_product)
    {
        $this->order_product = $order_product;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // return $this->view('view.name');
        return $this->subject('Mail from THRI/PEAT')
                    ->view('Mail.email');
    }
}
