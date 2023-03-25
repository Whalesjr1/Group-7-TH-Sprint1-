using System;

class Book : Items
{

	private string Title;
	private string Author;


	public Book(string Name, string User_ID, string Title, string Author) : base(Name, User_ID)
	{
		this.Title = Title;
		this.Author = Author;
	}

	// Return a formatted string with Items firstname and User_ID: we are overriding the virtual method

	public override string Print()
	{
		// code that returns the Name, User_ID, Title and The Author for the Book.
		return $"{this.GetType()}: {this.Name} with the User_ID of {this.User_ID} Has this Book with the Title: {this.Title}, and Author of the Book: {this.Author} Taken";
	}
}