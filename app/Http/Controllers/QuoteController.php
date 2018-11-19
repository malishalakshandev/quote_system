<?php
/**
 * Created by PhpStorm.
 * User: HP
 * Date: 2018-09-22
 * Time: 5:28 PM
 */

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Author;
use App\Quote;

class QuoteController extends Controller
{

    public function getIndex($author = null)
    {

        if (!is_null($author)){

            $quote_auhtor = Author::where('name',$author)->first();
            if ($quote_auhtor){
                $quotes = $quote_auhtor->quotes()->orderBy('created_at','Desc')->paginate(6);
            }

        }else{
            $quotes = Quote::orderBy('created_at','Desc')->paginate(6);
        }

        return view('index')->with(['quotes' => $quotes]);
    }

    public function postQoute(Request $request)
    {

        $this->validate($request,[
            'author' => 'required|max:60|alpha',
            'quote' => 'required|max:500'
        ]);

        $authorText = $request['author'];
        $quoteText = $request['quote'];

        $author = Author::where('name', $authorText)->first();

        if (!$author){
            $author = new Author();
            $author->name = $authorText;
            $author->save();
        }

        $quote = new Quote();
        $quote->quote = $quoteText;
        $author->quotes()->save($quote);

        return redirect()->route('index')->with([
                'success' => 'Quote Saved!'
            ]);
    }

    public function getDeleteQuote($quote_id)
    {

        $quote = Quote::find($quote_id);

        /*
         *  access the author() for the specified quote_id via the quote model
         *  then  using author model access again access quotes() relation in author model to count how many quotes for that author
         *  if count == 1 means delete the both quote and author from database
         *  if count !=1 means there more quotes for a author, at this time, deleted only the specified quote from quote table
         */
        $author_deleted = false;
        if(count($quote->author->quotes)===1){
            $quote->author->delete();
            $author_deleted = true;
        }

        $quote->delete();
        
        $msg = $author_deleted ? 'Quote and Author deleted!' : 'Quote deleted!';
        return redirect()->route('index')->with([
            'success' => $msg
        ]);

    }
}









