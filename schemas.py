from pydantic import BaseModel
from datetime import datetime

class RentalCreate(BaseModel):
    customer_name: str
    days: int

class RentalOut(RentalCreate):
    id: int
    is_active: bool
    created_at: datetime

    class Config:
        orm_mode = True
