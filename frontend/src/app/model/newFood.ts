import { Category } from './category';
import { Ingredient } from './ingredient';
import { Restaurant } from './restaurant';

export interface NewFood {
  id: null;
  photo: string;
  name: string;
  price: number;
  restaurant: Restaurant | undefined;
  categorySet: Category[];
  ingredientsSet: Ingredient[];
}
