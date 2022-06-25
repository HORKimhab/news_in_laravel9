<?php

use App\Models\User;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            // foreignIdFor: https://laravel.com/docs/9.x/migrations#column-method-foreignIdFor

            /*  onDelete('casacde')

                Short answer is: in your case, if you deleted a user, all posts related to him will be deleted too.
onDelete('cascade'); simply adds ON DELETE CASCADE rule to your database which specifies that the child data gets deleted when the parent data is deleted.
                URL: https://stackoverflow.com/a/43094735
            */

            // $table->foreignIdFor(User::class)->constrained()->onDelete('cascade'); // not work

            // URL: https://stackoverflow.com/a/65491787
            $table->foreignIdFor(\App\Models\User::class)->constrained()->onDelete('cascade'); // work 
            $table->string('title');
            $table->text('body')->fulltext();
            // fulltext(): https://laravel.com/docs/9.x/releases#full-text
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('posts');
    }
};
