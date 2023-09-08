include <master_connector.scad>

function convert(input_coordinates,conversion_type) =

//this function serves as a waystation type, directs coordinate conversions based on the conversion_type variable

assert(!is_undef(input_coordinate))

(
  (is_undef(conversion_type))
)?
    convert_cartesic(input_coordinates):

assert(false,"function definition overrun for function convert");//unfinished
