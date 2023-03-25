using System;

class Computer : Items
{

	private string Availability;
	private string Model;

	public Computer(string Name, string User_ID, string Availability, string Model) : base(Name, User_ID)
	{
		this.Availability = Availability;
		this.Model = Model;
	}

	// Return a formatted string with students Name, User_ID and Computers: we are overriding the virtual method

	public override string Print()
	{
		// code that returns the Name, User_ID, Availability and Model for the pc.
		return $"{this.GetType()}: {this.Name} with the User_ID of {this.User_ID} has the chance of booking: {this.Availability} With this Model of: {this.Model}";
	}
}