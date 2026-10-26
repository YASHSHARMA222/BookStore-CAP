using {compant.db as db} from '../db/schema';


service BookStoreService {
    entity Books   as projection on db.Books;
    entity Author  as projection on db.Author;
    entity Chapter as projection on db.Chapter;
}
