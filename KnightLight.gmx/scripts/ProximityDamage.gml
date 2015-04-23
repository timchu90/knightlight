// Calculates proximity to the explosion and returns damage
// based on this proximity.

proximity = distance_to_point(other.x, other.y);

if (proximity <= 40){
    return 80;
}
else if (proximity <= 90) {
    return 60;
}
else {
    return 40;
}
