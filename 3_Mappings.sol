pragma solidity ^0.6.0;

contract MyContract {
    // Mappings
    // kind of like an array
    // key value store
    // kind of like a database as we can assaign values 
    mapping(uint => string) public names;
    //uint is the key and string is the value. i.e. name is to be stored with corresponding serial number
    // and (names ) is the name of the varible where mapping will be stored
    //examples
    //(2) Then we map the struct to an ID like book 1 is A which again has 2 arributes. 
    // Notice the =>
    mapping(uint => Book) public books;
    //(5) Nested mapping--> Mapping inside a mapping
    mapping(address => mapping(uint => Book)) public myBooks;
    //its like getting all the list of books i like(book mappings) mapped to address of the user(Like mine)

    //(1) Create a struct book with two attributes 
    struct Book {
        string title;
        string author;
    }
    
    constructor() public {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    //(3) Create a special function to add a book i.e. addBook
    //(4) We need to tell it the id, the title and the author
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
        //(5) Then we will map the book id to the book struct
        // here books is the mapping, and Book is the struct
        //WHY uint is not assaigned memory. //Value assaignment vs reference Assaignment
    }
    
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
        // nested mapping here: msg.sender captures the address
        //Why didnt we declare type of msg.sender in the function..like id, title and author
    }
}
