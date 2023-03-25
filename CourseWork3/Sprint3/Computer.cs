using System;


class Computer : itemBase, Ilibrary
{
    private string Name;
    private string Access;

    public Computer(string Name) : base(Name)
    {
        this.Name = " Mac Book";
        this.Access = "16 Hours Daily";

    }

    public string getName()
    {
        return Name;
    }

    public string getAccess()
    {
        return Access;

    }

}
