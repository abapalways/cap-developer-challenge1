using { golf } from '../db/schema';
service CatalogService @(path:'/browse') {
  entity Rounds as projection on golf.Rounds;
  entity Holes  as projection on golf.Holes;
  entity Shots  as projection on golf.Shots;
}
