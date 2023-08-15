import { CartConsistsOfFood } from './cartConsistsOfFood';
import { Food } from './food';
import { Restaurant } from './restaurant';

export interface Cart {
  id: number;
  restaurant: Restaurant;
  status: String;
  cartConsistsOfFoodList: CartConsistsOfFood[];
  ammountPrice: number;
}
