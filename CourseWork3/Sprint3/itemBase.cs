class itemBase
{
    // Properties
    private string Name { get; set; }
    private int Id_num { get; set; }
   

    public itemBase(string Name)
    {
        this.Name = Name;
    }

    public int makeId_num()
    {
        return this.Id_num;

    }

    
    public string getName()
    {
        return $"{this.Name}, the {this.GetType()}";
    }

    public void setName(string Name)
    {

        this.Name = Name;

    }


}