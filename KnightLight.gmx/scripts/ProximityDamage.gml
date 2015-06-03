// Calculates proximity to the explosion and returns damage
// based on this proximity.

proximity = distance_to_point(other.x, other.y);

if (proximity <= 20){
    return bombdmg*2;
}
else if (proximity <= 70) {
    return bombdmg*1.5;
}
else {
    return bombdmg;
}
