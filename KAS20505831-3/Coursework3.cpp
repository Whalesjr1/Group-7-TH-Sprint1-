#include <iostream> 
#include <string>
#include <iomanip>
#include <unordered_map>
#include <fstream>

using std::cout;
using std::cin;
using std::endl;
using std::setw;
using std::string;
using std::unordered_map;
using std::ifstream;
using std::ofstream;
using std::getline;
using std::setfill;

// EMPLOYEE'S DATA INFORMATION
int main(int argc, char** argv);
struct employee
{
    int num = 0;
    string Name;
    string DOB;
    string Tel;
    string Postcode;
    int checksum = 0;
};

// TO PRINT EMPLOYEE'S DATA
void print_employee(const employee& emp)
{
    //SETW IS USED TO MAKE THE TABLE   
    cout << std::setw(10) << emp.num; cout << std::setw(20) << emp.Name; cout << std::setw(12) << emp.DOB; cout << std::setw(13) << emp.Tel; cout << std::setw(10) << emp.Postcode; cout << endl;
}

// TO PRINT EMPLOYEE'S TABLE
void print_employee_table(const unordered_map<int, employee>& employees)
{
    cout << std::setw(10) << "Number" << std::setw(20) << "Name" << std::setw(12) << "DOB" << std::setw(13) << "Telephone" << std::setw(10) << "Postcode" << endl;
    for (const auto& emp : employees)
    {
        print_employee(emp.second);
    }
}

// TO READ EMPLOYEE'S DATA
employee read_employee_user()
{
    employee emp;
    string tmp;
    cout << "Enter employee number: ";
    cin >> emp.num;
    cin.ignore();
    // READ LINE TO ENTER EMPLOYEE'S NUMBER
    getline(cin, tmp);
    cout << "Enter employee Name: ";
    //  READ LINE TO ENTER EMPLOYEE'S NAME
    getline(cin, emp.Name);
    cout << "Enter DOB: ";
    // READ LINE TO ENTER EMPLOYEE'S DATE OF BIRTH
    getline(cin, emp.DOB);
    cout << "Enter Tel: ";
    // READ LINE TO ENTER EMPLOYEE'S TELEPHONE
    getline(cin, emp.Tel);
    cout << "Enter Postcode: ";
    // READ LINE TO ENTER EMPLOYEE'S POSTCODE
    getline(cin, emp.Postcode);
    return emp;
}

// CAPTALISE NAME OF EMPLOYEE
void capitalise_name(employee& emp)
{
    auto data = emp.Name.c_str();
    auto len = emp.Name.length();
    _asm
    {
        // load length into ecx register
        // used for loop counting
        mov ecx, len
        // load the memory location into ebx register
        // used to access correct element in array
        mov ebx, data
        start_loop :
        // Move byte in memoy location ebx + exc -1 into al register
        mov al, byte ptr[ebx + ecx - 1]
            // compare al register to z
            cmp al, 'a'
            // if al less than z jump to end_loop
            jl end_loop
            //compare al register to a
            cmp al, 'z'
            // if al greater than a jump to end_loop
            jg end_loop
            // If we are here, al contains letter between a and z
            // Subtract 32 from al register to convert to uppercase value
            sub al, 32
            // Move contents of al register back into memory location
            // pointed to by ebx + ecx - 1
            mov byte ptr[ebx + ecx - 1], al
            end_loop :
        // will jump back to start_loop if ecx > 1
        loop start_loop
    }
}

int generate_checksum(employee& emp)
{
    auto data = emp.Name.c_str();
    auto len = emp.Name.length();
    int count = 0;
    _asm
    {
        // Load Length into ex register
        // Use for Loop counting
        mov ecx, len
        // Load the memory Location into ebx register
        // Used to access correct element in array
        mov ebx, data
        start_loop :
        // Move byte in memory Location ebx + exc - 1 into al register
        mov al, byte ptr[ebx + ecx - 1]
            // Compare value in al register to A
            cmp al, 'A'
            // If al is Less than A then jump to end_Loop
            jl end_loop
            // Compare value in al register to z
            cmp al, 'z'
            // If al is greater than Z then jump to end_Loop
            jg end_loop
            // Now we need to check for values between Zand a
            // Compare value in al register to Z
            cmp al, 'Z'
            // If Less than Z jump to increment
            jl increment
            // Compare value in al register to a
            cmp al, 'a'
            // If greater than a jump to increment
            jg increment
            // If we are here then not a Letter
            // Jump to end_ Loop
            jmp end_loop
            increment :
        // If we are here, value must be a Letter
        // Move value of count into ex register
        mov eax, count
            // Increment eax register
            inc eax
            // Move value of ex register into count
            mov count, eax
            end_loop :
        // If ecx > 1 then Loop
        loop start_loop
    }
    return count;
}





// TO READ EMPLOYEE'S FILE
void read_employees_file(unordered_map<int, employee>& employees)
{
    string filename;
    cout << "Enter filename: ";
    cin >> filename;
    ifstream file(filename);
    while (file.peek() != EOF)
    {
        employee emp;
        string buf;
        getline(file, buf);
        emp.num = atoi(buf.c_str());
        getline(file, emp.Name);
        getline(file, emp.DOB);
        getline(file, emp.Tel);
        getline(file, emp.Postcode);
        capitalise_name(emp);
        generate_checksum(emp);
        employees[emp.num] = emp;
    }
    file.close();
}


void write_employees_file(const unordered_map<int, employee>& employees)
{
    string filename;
    cout << "Enter filename: ";
    cin >> filename;
    ofstream file(filename);
    for (const auto& emp : employees)
    {
        file << emp.second.num << endl;
        file << emp.second.Name << endl;
        file << emp.second.DOB << endl;
        file << emp.second.Tel << endl;
        file << emp.second.Postcode << endl;
    }
    file.close();
}



int menu()
{
    // THIS IS TO CREATE THE MAIN MENU TO THE EMPLOYEE'S INFORMATION
    int choice = -1;
    while (choice < 0 || choice > 4)
    {
        cout << "Main menu" << endl;
        cout << "1. Add employee" << endl;
        cout << "2. Print employees" << endl;
        cout << "3. Read employees from file" << endl;
        cout << "4. Output employees to file" << endl;
        cout << "0. Exit" << endl;
        cout << "Enter choice: ";
        cin >> choice;
        if (choice < 0 || choice > 4)
        {
            cout << "Error. Enter number between 0 and 4" << endl;
        }
    }

    return choice;
}

int main(int argc, char** argv)
{
    unordered_map<int, employee> employees;
    int choice = -1;
    while (choice != 0)
    {
        choice = menu();
        switch (choice)
        {
            // THIS IS TO PUT THE PROGRAM UNDER A LOOP AND TO END THE PROGRAM IF INPUT 0
        case 0:
        {
            cout << "Goodbye, Have a Good Day!" << endl;
            break;
        }
        // THIS IS TO ADD THE EMPLOYEE'S DATA
        case 1:
        {
            employee emp = read_employee_user();
            capitalise_name(emp);
            generate_checksum(emp);
            employees[emp.num] = emp;
            break;
        }
        // THIS IS TO PRINT THE EMPLOYEE'S DATA IN THE TABLE
        case 2:
        {
            print_employee_table(employees);
            break;
        }
        // THIS IS TO READ THE EMPLOYEE'S FILE
        case 3:
        {
            read_employees_file(employees);
            break;
        }
        //THIS IS TO OUTPUT EMPLOYEE'S TO FILE
        case 4:
        {
            write_employees_file(employees);
            break;
        }
        }
    }
}
