using System;

abstract class Items
{
    protected string Name;
    protected string User_ID;

    public Items(string Name, string user_ID)
    {
        this.Name = Name;
        this.User_ID = user_ID;
    }

    // Return a formatted string with Items Name and User_ID, this method can be overridden by derived classes
    public virtual string Print()
    {
        // code that returns the Name, User_ID - but this code is never used as its virtual!!
        return $"Items: {this.Name} {this.User_ID}";

    }

    public string PrintName()
    {
        // code that returns the Name and User_ID - can be used by any derived class
        return $"Items: {this.Name} {this.User_ID}";
    }
}