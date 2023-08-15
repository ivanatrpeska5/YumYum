package com.sorsix.backend.controller

import NewFoodDto
import com.sorsix.backend.model.Category
import com.sorsix.backend.model.Food
import com.sorsix.backend.model.Ingredient
import com.sorsix.backend.repository.CategoryRepository
import com.sorsix.backend.repository.FoodRepository
import com.sorsix.backend.repository.IngredientRepository
import com.sorsix.backend.repository.RestaurantRepository
import com.sorsix.backend.service.FoodService
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*
import org.springframework.web.multipart.MultipartFile
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths

@RestController
@RequestMapping("/api")
class FoodController(
    private val categoryRepository: CategoryRepository,
    private val ingredientRepository: IngredientRepository,
    private val foodRepository: FoodRepository,
    private val foodService: FoodService, private val restaurantRepository: RestaurantRepository
) {
    private var uploadDir: Path = Paths.get("E:\\IdeaProjects\\Sorsix\\YumYum\\YumYum\\frontend\\src\\assets\\images")

    @GetMapping("/categories")
    fun getCategories(): ResponseEntity<MutableList<Category>> {
        return ResponseEntity.ok().body(categoryRepository.findAll());
    }


    @GetMapping("/ingredients")
    fun getIngredients(): ResponseEntity<MutableList<Ingredient>> {
        return ResponseEntity.ok().body(ingredientRepository.findAll());
    }

    @PostMapping("food/add")
    fun postFood(@RequestBody food: NewFoodDto): ResponseEntity<Any> {
        foodRepository.save(
            Food(
                photo = food.photo, name = food.name, price = food.price,
                restaurant = restaurantRepository.findById(food.restaurantId!!).get(), ingredientsSet = food.ingredientsSet, categorySet = food.categorySet
            )
        )
        return ResponseEntity.ok().build()
    }

    @PostMapping("food/photo")
    fun uploadPhoto(@RequestParam("image") image: MultipartFile): ResponseEntity<Map<String, String>> {
        if (!Files.isDirectory(uploadDir)) {
            uploadDir = Paths.get("D:\\Faks\\Sorsix\\YumYum\\frontend\\src\\assets\\images")
        }
        val fileName = "${System.currentTimeMillis()}_${image.originalFilename}"
        val file = uploadDir.resolve(fileName).toFile()
        image.transferTo(file)
        return ResponseEntity.ok().body(mapOf("imageUrl" to "assets/images/$fileName"));
    }

    @DeleteMapping("food/delete/{id}")
    fun deleteFoodFromRestaurant(@PathVariable id: Long): ResponseEntity<Any> {
        foodRepository.deleteById(id)
        return ResponseEntity.ok().build()
    }

    @GetMapping("newestFood")
    fun newestFood(): ResponseEntity<List<Food>> {
        return ResponseEntity.ok().body(foodService.newestFood())
    }

    @GetMapping("mostOrdered")
    fun getMostOrderedFood():ResponseEntity<List<Food>>{
        return ResponseEntity.ok().body(foodService.getMostOrderedFood())
    }

    @PutMapping("food/update")
    fun updateFood(@RequestBody food: NewFoodDto): ResponseEntity<Any> {
        foodService.updateFood(food)
        return ResponseEntity.ok().build()
    }
}