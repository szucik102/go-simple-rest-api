package user

import (
	"github.com/google/uuid"

	"github.com/szucik/trade-helper/portfolio"
	"github.com/szucik/trade-helper/transaction"
)

type Aggregate struct {
	user        User
	transaction *transaction.Transaction
	portfolio   *portfolio.Portfolio
}

func (a *Aggregate) User() User {
	user := a.user
	return user
}

func (a *Aggregate) Transaction() *transaction.Transaction {
	return a.transaction
}

func (a *Aggregate) Portfolio() *portfolio.Portfolio {
	return a.portfolio
}

func (a *Aggregate) GetID() uuid.UUID {
	return a.User().ID
}

func (a *Aggregate) SetId(id uuid.UUID) {
	a.user.ID = id
}
