// For more information see https://aka.ms/fsharp-console-apps
type Items(name, id_num) =
    member private this.name = name
    member private this.id_num = id_num
    member this.printN = printfn $"The {id_num} And {name}"
    // Abstractmethod: not this is a signature not a method
    abstract member printA: unit
    // An abstract method in a non-abstract class needs default implementation
    default this.printA = printfn $"The {id_num} And {name}"

type Book(Title, Author, name, id_num) =
          // Inheriting from ItemBase
         inherit Items(name, id_num)
         member this.Title = Title
         member this.Author = Author
         // override the abstract method
         override this.printA = printfn $"The Book {Title} Written By {Author} is Available in {name} and the id_num is {id_num}"

let b = Book("King Of Fishes", "Junior Kasim", "Booking_Items", 5)
// base class method
b.printN
// base class method
b.printA

type Room(Room_No, SittingSpace, name, id_num) =
          // Inheriting from ItemBase
         inherit Items(name, id_num)
         member this.Room_No = Room_No
         member this.SittingSpace = SittingSpace
         // override the abstract method
         override this.printA = printfn $"The {Room_No} With the Sitting space of {SittingSpace} is Available in {name} and the id_num is {id_num}"

let r = Room("room 4", "7 Feets Wide", "Booking_Items", 10)
// base class method
r.printN
// base class method
r.printA

type Computer(Model, Availability, name, id_num) =
          // Inheriting from ItemBase
         inherit Items(name, id_num)
         member this.Availability = Availability
         member this.Model = Model
         // override the abstract method
         override this.printA = printfn $"The {Model} With the Usability of {Availability} is Available in {name} and the id_num is {id_num}"

let p = Computer("24 Hours","Mac Book", "Booking_Items", 15)
// base class method
p.printN
// base class method
p.printA