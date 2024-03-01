import com.sorsix.backend.model.Category
import com.sorsix.backend.model.Ingredient

data class NewFoodDto(
    val id: Long?,
    val photo: String,
    val name: String,
    val price: Double,
    val restaurantId: Long?,
    val categorySet: Set<Category>,
    val ingredientsSet: Set<Ingredient>
)
