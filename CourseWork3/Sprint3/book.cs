using System;


    class book : itemBase,  Ilibrary
    {
        private string Name;
        private string Access;

    public book(string Name) : base (Name)
        {
        this.Name = " King of Fishes V2";
        this.Access = "weekdays";

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
