namespace quartiermeister;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    managed,
    temporal
}
from '@sap/cds/common';

entity Team
{
    key ID : UUID;
    employees : Association to many Employee on employees.team = $self;
}

entity Employee
{
    key ID : UUID;
    team : Association to one Team;
    name : String(100);
}
