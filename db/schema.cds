using { managed, cuid  } from '@sap/cds/common';

namespace golf;

entity Rounds : cuid , managed {
  title  : String(111);
  holes  : Composition of many Holes;
}

entity Holes : cuid  {
  score  : Integer;
  par    : Integer;
  round  : Association to Rounds;
  shots  : Composition of many Shots;
  result : String;

}

entity Shots : cuid  {
  hole   : Association to Holes;
}