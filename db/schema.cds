using {
    cuid,
    managed
} from '@sap/cds/common';

namespace compant.db;

entity Books : cuid, managed {
    title   : String;
    author  : Association to Author;
    Chapter : Composition of many Chapter
                  on Chapter.book = $self;

}

entity Author : cuid, managed {
    name  : String;
    books : Association to many Books
                on books.author = $self
}

entity Chapter : cuid, managed {
        Number : Integer;
    key book   : Association to Books;
}
