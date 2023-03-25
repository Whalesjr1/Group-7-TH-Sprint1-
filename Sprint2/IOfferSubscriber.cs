// All subscribers ot offers should implement this.
public interface IOfferSubscriber
{
    public void notify(string message);
}