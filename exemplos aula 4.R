require(dplyr)
require(tibble)

datatitanic <- as_tibble(datasets::Titanic)
head(datatitanic)
datatitanic %>% dplyr::select("Class","Sex")
print(datatitanic %>% dplyr::filter(Sex == "Male"))
print(datatitanic %>% dplyr::arrange(desc(n)))

