
namespace LibraryofStuff
{

    class Room : Item
    {
        public string Room_No;
        public string SittingSpace;





        public override string print()
        {
            // code that returns the ID_NUM, ChargerType and ChargerModel,CharegerSerialNum and Brand for the Item.
            return $"{Catagories} {ID_NUM} {this.Room_No} {this.SittingSpace}";

        }
        public Room(string Catagories, int ID_NUM, string Room_No, string SittingSpace) : base(Catagories, ID_NUM)
        {
            this.Room_No = Room_No;
            this.SittingSpace = SittingSpace;
        }
            
    }

}