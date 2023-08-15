import com.sorsix.backend.model.Category
import com.sorsix.backend.model.Ingredient

data class NewFoodDto(
    val id: Long?, // Use Long for nullable IDs
    val photo: String,
    val name: String,
    val price: Double,
    val restaurantId: Long?, // Use Long for nullable restaurant IDs
    val categorySet: Set<Category>, // Assuming Category is a data class too
    val ingredientsSet: Set<Ingredient> // Assuming Ingredient is a data class too
)
