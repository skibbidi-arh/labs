public interface QueryGenerator {
    String getAllBooksQuery();
    String getBookByIdQuery();
    String deleteBookByIdQuery();
    String addBookQuery();
    String updateBookQtyByIdQuery();
    String updateBookByIdQuery();
}
