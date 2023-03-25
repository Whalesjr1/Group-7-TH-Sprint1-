namespace LibraryofStuff
{
    
    // Note that inheritance could be used here
    class Computer : Item
    {
        public string Availability;
        public string Model;



        public override string print()
        {
            return $"{Catagories} {ID_NUM} {this.Availability} {this.Model}";

        }
        public Computer(string Catagories, int ID_NUM, string Availability, string Model) : base(Catagories, ID_NUM)
        {
            this.Availability = Availability;
            this.Model = Model;
        }
    }

}