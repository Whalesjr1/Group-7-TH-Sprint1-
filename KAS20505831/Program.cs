using System;
class Program
{
    // static void main is the entrypoint to your program
    static void Main()
    {


        // We can declare EITHER Items or Book or room or Computer.
        Items Ak1 = new Book("Junior", "KAS1234", "King Of Fishes", "WhalesJr");
        Items Ak2 = new Room("Laser", "LAS2222", 5, "12 Feet Wide");
        Computer Ak3 = new Computer("Adewale","ADE2468", "YES", "MAC BOOK");

        Console.WriteLine("Using the PrintName method on the Base class -------");

        Console.WriteLine(Ak1.PrintName());
        Console.WriteLine(Ak2.PrintName());
        Console.WriteLine(Ak3.PrintName());


        Console.WriteLine("Using the Print method on the derived classes -------");

        Console.WriteLine(Ak1.Print());
        Console.WriteLine(Ak2.Print());
        Console.WriteLine(Ak3.Print());

    }
}
