from recommender_model import recommend_top_foods


class RecommendationService:
    def findUsersAlsoOrderedRecommendations(self, user_id: int):
        return {"userId": user_id, "recommendations": ["Item A", "Item B"]}

    def findAddMoreItemsRecommendations(self, user_id: int):
        return {"userId": user_id, "recommendations": ["Item C", "Item D"]}

    def findNoIdeaWhatToEatRecommendations(self, user_id: int):
        return recommend_top_foods(user_id, top_n=5)
