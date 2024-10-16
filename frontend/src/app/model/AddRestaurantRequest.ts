import {Location} from './location';

export interface AddRestaurantRequest {
  name: string;
  location: Location;
  logo: string;
  photo: string;
}
