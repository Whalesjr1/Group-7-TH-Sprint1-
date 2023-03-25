using System;

abstract class Item
{
    public string Catagories;
    public int ID_NUM;



    public Item(string catagories, int iD_NUM)
    {
        this.Catagories = catagories;
        this.ID_NUM = iD_NUM;
    }

    public string PrintName()
    {
        return $"{this.Catagories} {this.ID_NUM}";

    }
    public virtual string print()
    {
        return "";
    }
}