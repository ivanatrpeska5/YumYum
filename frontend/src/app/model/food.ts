import { Category } from './category';
import { Ingredient } from './ingredient';
import { Restaurant } from './restaurant';

export interface Food {
  id: number;
  photo: string;
  name: string;
  price: number;
  priceWithDiscount: number | null,
  restaurant: Restaurant;
  categorySet: Category[];
  ingredientsSet: Ingredient[];
}
