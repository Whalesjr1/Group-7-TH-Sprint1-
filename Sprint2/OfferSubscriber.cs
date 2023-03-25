public class OfferSubscriber : IOfferSubscriber
{

    private string name;

    public OfferSubscriber(string name)
    {
        this.name = name;
    }

    public void notify(string message)
    {
        Console.WriteLine($"Your offer: {message} is now available. Hurry up** {this.name} and get product by 25% to 30% off on this offer!!");
    }

}