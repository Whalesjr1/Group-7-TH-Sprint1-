class Offer
          {

            private bool isAvailable = false;

            public string offerName;

            private List<IOfferSubscriber> subscribers = new List<IOfferSubscriber>();

            public Offer(string name)
            {
                this.offerName = name;
            }

            public void addSubscriber(OfferSubscriber subscriber)
            {
                subscribers.Add(subscriber);
            }

            public void makeAvailable()
            {
                this.isAvailable = true;
                this.notifySubscribers();
            }

            private void notifySubscribers()
            {
                foreach (IOfferSubscriber subscriber in subscribers)
                {
                    subscriber.notify(this.offerName);
                }
            }
        }

