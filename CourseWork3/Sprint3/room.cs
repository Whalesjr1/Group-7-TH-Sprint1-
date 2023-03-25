using System;

 class room : itemBase, Ilibrary
    {
        public string Name;
        public string Access;


        public room(string Name) : base(Name)
        {
            this.Name = "Room 6";
            this.Access = "everyday";

        }

        public string getName()
        {
            return this.Name;
        }

        public string getAccess()
        {
            return this.Access;
        }

    }

