using System;
using System.Security.Cryptography;

class ItemsSpace
{

    public string Listlibraryitem()
    {
        items library = new items();
        library.additem(new room("Room 6"));
        library.additem(new book("King of Fishes V2"));
        library.additem(new Computer("Mac Book"));
        return library.listitem();

    }
}
