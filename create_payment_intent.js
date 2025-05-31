// create_payment_intent.js

(async () => {
  try {
    const paymentIntent = await stripe.paymentIntents.create({
      amount: 1000, 
      currency: 'usd',
      payment_method_types: ['card'],
    });
    console.log("Payment Intent client_secret:", paymentIntent.client_secret);
  } catch (error) {
    console.error(error);
  }
})();
