// Calculates proximity to the explosion and returns damage
// based on this proximity.

proximity = distance_to_point(other.x, other.y);

if (proximity == 0){
    return bombdmg;
}
else {
    return bombdmg / (0.05 * proximity);
}