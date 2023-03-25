namespace LibraryofStuff
{

    // Note that inheritance could be used here
    class Book : Item
    {
        public string Title;
        public string Author;



        public override string print()
        {
            return $"{Catagories} {ID_NUM} {this.Title} {this.Author}";

        }
        public Book(string Catagories, int ID_NUM, string Title, string Author) : base(Catagories, ID_NUM)
        {
            this.Title = Title;
            this.Author = Author;
        }
    }

}