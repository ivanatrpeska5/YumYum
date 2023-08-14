import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Category } from 'src/app/model/category';
import { Food } from 'src/app/model/food';
import { Ingredient } from 'src/app/model/ingredient';
import { NewFood } from 'src/app/model/newFood';
import { Restaurant } from 'src/app/model/restaurant';
import { FoodService } from 'src/app/service/food.service';

@Component({
  selector: 'app-add-food',
  templateUrl: './add-food.component.html',
  styleUrls: ['./add-food.component.css']
})
export class AddFoodComponent implements OnInit {
  newFood: NewFood={
    id:null,
    photo:'',
    restaurant:undefined,
    name:'',
    price:0,
    categorySet:[],
    ingredientsSet:[]
  };

  // Variable to store the selected image file
  selectedImage: File | undefined;

  restaurant?: Restaurant;

  selectedCategories:Category[]=[]

  selectedIngredients:Ingredient[]=[]

  categories:Category[]=[]

  ingredients:Ingredient[]=[]

  constructor(private foodService: FoodService, private router:Router) {}
  ngOnInit(): void {
    this.foodService.getRestaurantByEmployee().subscribe(restaurant=>{
      console.log("Restaurant: ",restaurant.name)
      this.restaurant=restaurant
      console.log("Restaurant: ",this.restaurant.name)})
    this.foodService.getCategories().subscribe(categories=>this.categories=categories);
    this.foodService.getIngredients().subscribe(ingredients=>this.ingredients=ingredients)

  }

  onSubmit() {
    this.newFood.categorySet=this.selectedCategories;
    this.newFood.ingredientsSet=this.selectedIngredients;
    this.newFood.restaurant=this.restaurant
    console.log(this.newFood.id)
    // First, upload the image to the server (backend)
    if (this.selectedImage) {
      this.foodService.uploadImage(this.selectedImage).subscribe(
        (response) => {
          // The backend should return the path of the uploaded image
          this.newFood!!.photo = response.imageUrl;

          // Now, post the newFood object with the image path to the server
          this.foodService.postFood(this.newFood!!).subscribe(
            (response) => {
              // Handle the success response if needed.
              console.log('Food posted successfully:', response);
              this.router.navigate([`restaurant/${this.restaurant?.id}`]);
            },
            (error) => {
              // Handle the error if needed.
              console.error('Error while posting food:', error);
            }
          );
        },
        (error) => {
          // Handle the error if image upload fails
          console.error('Error while uploading image:', error);
        }
      );
    } else {
      // If no image is selected, directly post the newFood object to the server
      this.foodService.postFood(this.newFood!!).subscribe(
        (response) => {
          // Handle the success response if needed.
          console.log('Food posted successfully:', response);
          this.router.navigate([`restaurant/${this.restaurant?.id}`]);
        },
        (error) => {
          // Handle the error if needed.
          console.error('Error while posting food:', error);
        }
      );
    }
  }

  // Function to handle file input change and store the selected image file
  onFileChange(event: Event) {
    const inputElement = event.target as HTMLInputElement;
    if (inputElement.files && inputElement.files.length > 0) {
      this.selectedImage = inputElement.files[0];
    }
  }

}
