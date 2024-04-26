function inflict_damage(damage)
{
    global.playerHealth -= damage;
    if (global.playerHealth <= 0)
    {
        instance_destroy(obj_player);
    }
}
