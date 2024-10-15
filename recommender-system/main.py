from fastapi import FastAPI

from recommendation_service import RecommendationService

app = FastAPI()
service = RecommendationService()

@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/hello/{name}")
async def say_hello(name: str):
    return {"message": f"Hello {name}"}

@app.get("/users-also-ordered/{user_id}")
async def users(user_id: int):
    return service.findUsersAlsoOrderedRecommendations(user_id)

@app.get("/add-more-items-to-your-order/{user_id}")
async def add_more_items_to_your_order(user_id: int):
    return service.findAddMoreItemsRecommendations(user_id)

@app.get("/no-idea-what-to-eat/{user_id}")
async def no_idea_what_to_eat(user_id: int):
    return service.findNoIdeaWhatToEatRecommendations(user_id)