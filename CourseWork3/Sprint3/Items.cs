// Make the items into a singleton as it is the single point of reference for the zoo.
using System.Collections.Generic;
using System;
using System.Printing;

class items
{
    List<Ilibrary> item = new List<Ilibrary>();

    public void additem(Ilibrary item)
    {
        this.item.Add(item);

    }

    public void bookitem()
    {

        foreach (Ilibrary item in item)
        {
            Console.WriteLine(item.getAccess());
        }
    }

    public string listitem()
    {
        string ret = "";
        foreach (Ilibrary item in item)
        {
            ret += $"{item.getName()}\n";
        }
        return ret;
    }

    public void itemName()
    {
        foreach (itemBase item in item)
        {
            Console.WriteLine(item.makeId_num());

        }
    }
}