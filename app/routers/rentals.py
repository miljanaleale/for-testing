from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from .. import schemas, crud
from ..database import SessionLocal

router = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@router.post("/", response_model=schemas.RentalOut)
def create_rental(rental: schemas.RentalCreate, db: Session = Depends(get_db)):
    return crud.create_rental(db, rental)

@router.get("/", response_model=list[schemas.RentalOut])
def list_rentals(db: Session = Depends(get_db)):
    return crud.get_rentals(db)
