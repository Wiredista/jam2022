shader_set(shd_Asteroid)

var uniform_pixels = shader_get_uniform(shd_Asteroid, "pixels")
var uniform_rotation = shader_get_uniform(shd_Asteroid, "rotation")
var uniform_light_origin = shader_get_uniform(shd_Asteroid, "light_origin")
var uniform_color1 = shader_get_uniform(shd_Asteroid, "color1")
var uniform_color2 = shader_get_uniform(shd_Asteroid, "color2")
var uniform_color3 = shader_get_uniform(shd_Asteroid, "color3")
var uniform_size = shader_get_uniform(shd_Asteroid, "size")
var uniform_seed = shader_get_uniform(shd_Asteroid, "seed")
var uniform_time = shader_get_uniform(shd_Asteroid, "time")

shader_set_uniform_f(uniform_pixels, 64)
shader_set_uniform_f(uniform_rotation, angle)
shader_set_uniform_f(uniform_light_origin, 0.7, 0.7)
shader_set_uniform_f(uniform_color1, 155 / 255, 158 / 255, 184 / 255, 1)
shader_set_uniform_f(uniform_color2,71 / 255, 97 / 255, 124 / 255, 1)
shader_set_uniform_f(uniform_color3, 53 / 255, 57 / 255, 85 / 255, 1)
shader_set_uniform_f(uniform_size, 1)
shader_set_uniform_f(uniform_seed, seed)
shader_set_uniform_f(uniform_time, time)


draw_self()

shader_reset()