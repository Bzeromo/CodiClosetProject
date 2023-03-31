import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cloth{
  final String name;
  final String image;
  final String color_attribute;
  final String part_attribute;
  final String style_attribute;
  final String occasion_attribute;
  final String person_attribute;
  final String season_attribute;
  final String size_attribute;
  final String material_attribute;

  Cloth({
    required this.name,
    required this.image,
    required this.color_attribute,
    required this.part_attribute,
    required this.style_attribute,
    required this.occasion_attribute,
    required this.person_attribute,
    required this.season_attribute,
    required this.size_attribute,
    required this.material_attribute
  });
}

final List<Cloth> TopCloths = [
  new Cloth(
    name: "blue sleeveless",
    image: "images/TOP1.png",
    color_attribute: "blue",
    part_attribute: "top",
    style_attribute: "street",
    occasion_attribute: "party",
    person_attribute: "friends",
    season_attribute: "summer",
    size_attribute: "small",
    material_attribute: "knit"
  ),
  new Cloth(
      name: "black outer",
      image: "images/TOP2.png",
      color_attribute: "black",
      part_attribute: "top",
      style_attribute: "street",
      occasion_attribute: "exercise",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "mid",
      material_attribute: "polyester"
  ),
  new Cloth(
      name: "beige jacket",
      image: "images/TOP3.png",
      color_attribute: "beige",
      part_attribute: "top",
      style_attribute: "casual",
      occasion_attribute: "party",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "small",
      material_attribute: "knit"
  ),
  new Cloth(
      name: "brown jacket",
      image: "images/TOP4.png",
      color_attribute: "beige",
      part_attribute: "top",
      style_attribute: "casual",
      occasion_attribute: "party",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "small",
      material_attribute: "knit"
  ),
];

final List<Cloth> HatAccesasriesCloths = [
  new Cloth(
      name: "sunglass",
      image: "images/sunglass_13.png",
      color_attribute: "black",
      part_attribute: "hat/accesaries",
      style_attribute: "chic",
      occasion_attribute: "travel",
      person_attribute: "couple",
      season_attribute: "summer",
      size_attribute: "fit",
      material_attribute: "plastic"
  ),
  new Cloth(
      name: "fedora",
      image: "images/fedora_10.png",
      color_attribute: "beige",
      part_attribute: "hat/accesaries",
      style_attribute: "casual",
      occasion_attribute: "travel",
      person_attribute: "meeting",
      season_attribute: "summer",
      size_attribute: "fit",
      material_attribute: "raffia"
  ),
  new Cloth(
      name: "white_buckethat",
      image: "images/white_buckethat.png",
      color_attribute: "white",
      part_attribute: "hat/accesaries",
      style_attribute: "casual",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "small",
      material_attribute: "fabric"
  ),
  new Cloth(
      name: "black_ballcap",
      image: "images/black_ballcap.png",
      color_attribute: "black",
      part_attribute: "hat/accesaries",
      style_attribute: "casual",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "large",
      material_attribute: "cotton"
  ),
  new Cloth(
      name: "mint_ballcap",
      image: "images/mint_ballcap.png",
      color_attribute: "mint",
      part_attribute: "hat/accesaries",
      style_attribute: "casual",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "small",
      material_attribute: "cotton"
  ),
  new Cloth(
      name: "beige_snapback",
      image: "images/beige_snapback.png",
      color_attribute: "beige",
      part_attribute: "hat/accesaries",
      style_attribute: "casual",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "spring",
      size_attribute: "small",
      material_attribute: "fabric"
  ),
];

final List<Cloth> BottomCloths = [
  new Cloth(
      name: "leggings",
      image: "images/leggings_12.png",
      color_attribute: "navy",
      part_attribute: "bottom",
      style_attribute: "casual",
      occasion_attribute: "activity",
      person_attribute: "exercise",
      season_attribute: "summer",
      size_attribute: "fit",
      material_attribute: "poly"
  ),
  new Cloth(
      name: "gray_sweatpants",
      image: "images/gray_sweatpants.png",
      color_attribute: "gray",
      part_attribute: "bottom",
      style_attribute: "street",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "large",
      material_attribute: "cotton"
  ),
  new Cloth(
      name: "brown_pants",
      image: "images/brown_pants.png",
      color_attribute: "brown",
      part_attribute: "bottom",
      style_attribute: "casual",
      occasion_attribute: "date",
      person_attribute: "couple",
      season_attribute: "spring",
      size_attribute: "large",
      material_attribute: "cotton"
  ),
  new Cloth(
      name: "skirt_jean",
      image: "images/skirt_jean.png",
      color_attribute: "black blue",
      part_attribute: "bottom",
      style_attribute: "casual",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "large",
      material_attribute: "cotton"
  ),
];

final List<Cloth> ShoesCloths = [
  new Cloth(
      name: "crocs",
      image: "images/crocs_14.png",
      color_attribute: "white",
      part_attribute: "shoes",
      style_attribute: "comfortable",
      occasion_attribute: "walk",
      person_attribute: "friends",
      season_attribute: "spring",
      size_attribute: "fit",
      material_attribute: "rubber"
  ),
  new Cloth(
      name: "black_loafer",
      image: "images/black_loafer.png",
      color_attribute: "black",
      part_attribute: "shoes",
      style_attribute: "formal",
      occasion_attribute: "date",
      person_attribute: "couple",
      season_attribute: "fal",
      size_attribute: "small",
      material_attribute: "leather"
  ),
  new Cloth(
      name: "black_sandals",
      image: "images/black_sandals.png",
      color_attribute: "black",
      part_attribute: "shoes",
      style_attribute: "casual",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "small",
      material_attribute: "leather"
  ),
  new Cloth(
      name: "white_flipflops",
      image: "images/white_flipflops.png",
      color_attribute: "white",
      part_attribute: "shoes",
      style_attribute: "casual",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "small",
      material_attribute: "rubber"
  ),
  new Cloth(
      name: "flipflop",
      image: "images/flipflop_11.png",
      color_attribute: "white",
      part_attribute: "shoes",
      style_attribute: "casual",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "fit",
      material_attribute: "rubber"
  ),
];

final List<Cloth> BagCloths = [
  new Cloth(
      name: "eco bag",
      image: "images/ecobag_9.png",
      color_attribute: "ivory",
      part_attribute: "bag",
      style_attribute: "casual",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "spring",
      size_attribute: "big",
      material_attribute: "cotton"
  ),
  new Cloth(
      name: "black_backpack",
      image: "images/black_backpack.png",
      color_attribute: "black",
      part_attribute: "bag",
      style_attribute: "street",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "large",
      material_attribute: "fabric"
  ),
  new Cloth(
      name: "black_minibag",
      image: "images/black_minibag.png",
      color_attribute: "black",
      part_attribute: "hat/accesaries",
      style_attribute: "casual",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "small",
      material_attribute: "cotton"
  ),
  new Cloth(
      name: "black_messengerbag",
      image: "images/black_messengerbag.png",
      color_attribute: "black",
      part_attribute: "hat/accesaries",
      style_attribute: "casual",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "large",
      material_attribute: "fabric"
  ),
  new Cloth(
      name: "black_crossbag",
      image: "images/black_crossbag.png",
      color_attribute: "black",
      part_attribute: "hat/accesaries",
      style_attribute: "casual",
      occasion_attribute: "daily",
      person_attribute: "friends",
      season_attribute: "summer",
      size_attribute: "large",
      material_attribute: "nylon"
  ),
];