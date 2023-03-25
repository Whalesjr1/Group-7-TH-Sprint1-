namespace LibraryofStuff
{
    class program
    {
        //Main entrypoint to the code
        static void Main()
        {
            Console.WriteLine("# WELCOME TO THE LABRARY OF STUFF #");
            Console.WriteLine("*****************************************************************");
            Console.WriteLine("Enter Your ID:");
            int num = Convert.ToInt32(Console.ReadLine());
            if (num == 1234)
            {
                Console.WriteLine("You Entered : " + num);
                Book w1 = new Book("Categorised **BOOK**\nID:", 1111, "\nTitle: King Of Fishes",
                "\nAuthor: Whales Jr ");

                Console.WriteLine(w1.print());
                Console.WriteLine("\nNOTICE: This item can only be borrowed by an adult over the age of 18.");
                Console.WriteLine("*****************************************************************");


                Room w2 = new Room("Categorised **ROOM**\nID:", 2222,
                    "\nRoom_No: Room 45A",
                    "\nSittingSpace: 12 Feets Wide with 6 Chairs");
                Console.WriteLine(w2.print());
                Console.WriteLine("*****************************************************************");


                Computer w3 = new Computer("Categorised **COMPUTER**\nID:", 3333,
                    "\nAvability: MacBook",
                    "\nModel: SN5412");
                Console.WriteLine(w3.print());
                Console.WriteLine("*****************************************************************");
                //Create an offer for families
                Offer familyOffer = new Offer("Student");

                // Add a subscriber
                OfferSubscriber s1 = new OfferSubscriber("Computer science club student ");
                familyOffer.addSubscriber(s1);

                // Add another subscriber
                OfferSubscriber s2 = new OfferSubscriber("All of roehampton university student");
                familyOffer.addSubscriber(s2);

                //Make the  offer available (this notifies all the subscribers)
                familyOffer.makeAvailable();

                //Create an offer for groups
                Offer groupOffer = new Offer("Groups");

                // Create an offer for groups
                //Offer groupOffer = new Offer("groups");

                // Add a subscriber
                OfferSubscriber g1 = new OfferSubscriber("Kingston University");
                groupOffer.addSubscriber(g1);

                // Add another subscriber
                OfferSubscriber g2 = new OfferSubscriber("Roehampton university ");
                groupOffer.addSubscriber(g2);

                //Make the  offer available (this notifies all the subscribers)
                groupOffer.makeAvailable();

            }
            else
                Console.WriteLine("UNREGISTERED PERSON");
            




            
        }
    }
}