using { managed, cuid  } from '@sap/cds/common';

namespace golf;

entity Rounds : cuid , managed {
  title  : String(111);
  holes  : Composition of many Holes;
}

entity Holes : cuid  {
  score  : Integer;
  par    : Integer;
  result : String(111);
  round  : Association to Rounds;
  shots  : Composition of many Shots;
}

entity Shots : cuid  {
  hole   : Association to Holes;
}