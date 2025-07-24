from sqlalchemy.orm import Session
from . import models, schemas

def create_rental(db: Session, rental: schemas.RentalCreate):
    db_rental = models.Rental(**rental.dict())
    db.add(db_rental)
    db.commit()
    db.refresh(db_rental)
    return db_rental

def get_rentals(db: Session):
    return db.query(models.Rental).all()
