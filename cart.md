---
layout: default
title: Cart
permalink: /cart/
---

<div class="row cart">
 <div class="small-12 large-8 large-centered columns">
 	<h4>{{ page.title }}</h4>
	<div class="simplecart-area">
	  <div class="simplecart-cart">
	    <div class="simpleCart_items"></div>
	    <div class="simplecart-total">
	      <p>Grand Total: </p> <strong><span class="simpleCart_quantity"></span> items - <span class="simpleCart_total"></span></strong>
	    </div>
	    <a class="button right" href="/checkout/">Checkout</a>





	  </div>
	</div>

	<script src="https://checkout.stripe.com/checkout.js"></script>


<button class="btn btn-primary btn-lg" id="stripe-button">
        Checkout <span class="glyphicon glyphicon-shopping-cart"></span>
      </button>

      <script>
        $('#stripe-button').click(function(){
          var token = function(res){
            var $id = $('<input type=hidden name=stripeToken />').val(res.id);
            var $email = $('<input type=hidden name=stripeEmail />').val(res.email);
            $('form').append($id).append($email).submit();
          };

          var amount = $("grandTotal").val() *100;
          StripeCheckout.open({
            key:         '{{pk_live_jSnLYXfQTV6aZjuPbodeSbzz}}',
            amount:      amount,
            name:        'Serendipity Artisan Blends',
            description: 'Purchase Products',
            panelLabel:  'Checkout',
            token:       token
          });

          return false;
        });
      </script>

 </div>	
</div>

