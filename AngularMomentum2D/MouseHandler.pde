void mousePressed() {
    println("breaching mainframe");
    positions = new PVector[]{};
    vectors = new PVector[]{};
}

float shootAngle = 0;
PVector shootVector = new PVector(0, 0);
void updateShootAngle() {
    float distance = dist(mouseX, mouseY, whiteBall.position.x, whiteBall.position.y);
    shootAngle = atan2(mouseY - whiteBall.position.y, mouseX - whiteBall.position.x);
    shootVector = PVector.fromAngle(shootAngle).mult(distance/100);
    whiteBall.acceleration = (shootVector);
}
