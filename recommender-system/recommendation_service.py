from recommender_model import recommend_top_foods


class RecommendationService:

    def recommendFoodForUser(self, user_id: int):
        return recommend_top_foods(user_id, top_n=5)
