from contextlib import asynccontextmanager

from apscheduler.schedulers.background import BackgroundScheduler
from apscheduler.triggers.cron import CronTrigger
from fastapi import FastAPI

from recommendation_service import RecommendationService
from recommender_model import execute_model

app = FastAPI()
service = RecommendationService()
execute_model()
scheduler = BackgroundScheduler()
trigger = CronTrigger(hour=0, minute=1)
scheduler.add_job(execute_model, trigger)
scheduler.start()

@asynccontextmanager
async def lifespan():
    yield
    scheduler.shutdown()

@app.get("/recommend-food-for-user/{user_id}")
async def recommend_food_for_user(user_id: int):
    return service.recommendFoodForUser(user_id)
