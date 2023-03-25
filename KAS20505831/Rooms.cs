using System;

class Room : Items
{

	private int Room_No;
	private string SittingSpace;

	public Room(string Name, string User_ID, int Room_No, string SittingSpace) : base(Name, User_ID)
	{
		this.Room_No = Room_No;
		this.SittingSpace = SittingSpace;
	}

	// Return a formatted string with Items firstname, last name, availability and size: we are overriding the virtual method

	public override string Print()
	{
		// code that returns the Name, User_ID, Room_No and sittingSpace for the room.
		return $"{this.GetType()}:  {this.Name} with the User_ID of {this.User_ID} has Room_No: {this.Room_No}, has SittingSpace: {this.SittingSpace} Booked";
	}
}