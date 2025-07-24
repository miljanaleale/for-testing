from sqlalchemy import Column, Integer, String, Boolean, DateTime
from .database import Base
import datetime

class Rental(Base):
    __tablename__ = "rentals"

    id = Column(Integer, primary_key=True, index=True)
    customer_name = Column(String, index=True)
    days = Column(Integer)
    is_active = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.datetime.utcnow)
