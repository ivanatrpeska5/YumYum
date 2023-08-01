package com.sorsix.backend.controller

import com.sorsix.backend.model.Category
import com.sorsix.backend.model.Food
import com.sorsix.backend.model.Ingredient
import com.sorsix.backend.repository.CategoryRepository
import com.sorsix.backend.repository.FoodRepository
import com.sorsix.backend.repository.IngredientRepository
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*
import org.springframework.web.multipart.MultipartFile
import java.nio.file.Path
import java.nio.file.Paths

@RestController
@RequestMapping("/api")
class FoodController(private val categoryRepository: CategoryRepository,
                     private val ingredientRepository: IngredientRepository, private val foodRepository: FoodRepository
) {
    private val uploadDir: Path = Paths.get("D:\\Faks\\Sorsix\\YumYum\\frontend\\src\\assets\\images")
    @GetMapping("/categories")
    fun getCategories(): ResponseEntity<MutableList<Category>> {
        return ResponseEntity.ok().body(categoryRepository.findAll());
    }


    @GetMapping("/ingredients")
    fun getIngredients(): ResponseEntity<MutableList<Ingredient>> {
        return ResponseEntity.ok().body(ingredientRepository.findAll());
    }

    @PostMapping("food/add")
    fun postFood(@RequestBody food: Food){
        foodRepository.save(food)
    }

    @PostMapping("food/photo")
    fun uploadPhoto(@RequestParam("image") image: MultipartFile): ResponseEntity<Map<String, String>> {
        // Save the image to the server
        val fileName = "${System.currentTimeMillis()}_${image.originalFilename}"
        val file = uploadDir.resolve(fileName).toFile()
        image.transferTo(file)

        // Return the URL/path of the uploaded image

        return ResponseEntity.ok().body(mapOf("imageUrl" to "assets/images/$fileName"));
    }
}