
use <master_connector.scad>
use <master_connector_automated.scad>
use <master_formalism.scad>
use <assertions\ndef.scad>
use <assertions\num_parity.scad>
use <assertions\same_type.scad>
use <assertions\arrays\array_is_euclidic.scad>
use <assertions\arrays\array_level.scad>
use <assertions\arrays\array_only_bool.scad>
use <assertions\arrays\array_only_nums.scad>
use <assertions\arrays\array_only_strings.scad>
use <assertions\arrays\is_array.scad>
use <assertions\bool\is_true.scad>
use <assertions\descriptors\descriptor_is_consistent.scad>
use <assertions\descriptors\has_descriptor.scad>
use <assertions\descriptors\is_descriptor.scad>
use <assertions\lists\data_only_nums.scad>
use <assertions\lists\list_contains_num.scad>
use <assertions\lists\list_is_flat.scad>
use <assertions\lists\list_only_bool.scad>
use <assertions\lists\list_only_ntuples.scad>
use <assertions\lists\list_only_nums.scad>
use <assertions\lists\list_only_strings.scad>
use <assertions\math\is_divisible.scad>
use <assertions\strings\is_word.scad>
use <conversions\alphanumeric.scad>
use <conversions\hexadecic.scad>
use <conversions\letter.scad>
use <conversions\coordinates\array_to_num.scad>
use <conversions\coordinates\num_to_array.scad>
use <data operations\element.scad>
use <data operations\flatten.scad>
use <data operations\adresses\adresses_array_num.scad>
use <data operations\arrays\array_level.scad>
use <data operations\arrays\array_size.scad>
use <data operations\arrays\array_tupility.scad>
use <data operations\arrays\fold_array.scad>
use <data operations\fields\field_concat.scad>
use <data operations\lists\invert_list - tester.scad>
use <data operations\lists\invert_list.scad>
use <data operations\lists\list_add.scad>
use <data operations\lists\list_add_field.scad>
use <data operations\lists\list_after_n.scad>
use <data operations\lists\list_contains_numbers.scad>
use <data operations\lists\list_divide.scad>
use <data operations\lists\list_duplicate_entries.scad>
use <data operations\lists\list_duplicate_sequence.scad>
use <data operations\lists\list_encapsulate.scad>
use <data operations\lists\list_except_n_m.scad>
use <data operations\lists\list_fold.scad>
use <data operations\lists\list_functional_selection.scad>
use <data operations\lists\list_functional_sequention.scad>
use <data operations\lists\list_highest_num.scad>
use <data operations\lists\list_insert.scad>
use <data operations\lists\list_insert_single.scad>
use <data operations\lists\list_last_n.scad>
use <data operations\lists\list_logic.scad>
use <data operations\lists\list_longest_str.scad>
use <data operations\lists\list_map.scad>
use <data operations\lists\list_modulo.scad>
use <data operations\lists\list_multiply.scad>
use <data operations\lists\list_n_m.scad>
use <data operations\lists\list_permutations.scad>
use <data operations\lists\list_permutations_append.scad>
use <data operations\lists\list_permutations_single.scad>
use <data operations\lists\list_remove.scad>
use <data operations\lists\list_remove_by_conditional.scad>
use <data operations\lists\list_remove_by_index.scad>
use <data operations\lists\list_remove_by_list.scad>
use <data operations\lists\list_remove_single.scad>
use <data operations\lists\list_replace_by_index.scad>
use <data operations\lists\list_replace_by_list.scad>
use <data operations\lists\list_search.scad>
use <data operations\lists\list_subtract.scad>
use <data operations\lists\list_update.scad>
use <data operations\lists\list_update_single.scad>
use <data operations\lists\list_upto_n.scad>
use <data operations\search\search.scad>
use <data operations\search\search_array.scad>
use <data operations\search\search_num.scad>
use <data operations\search\search_string.scad>
use <data operations\strings\invert_string.scad>
use <data operations\strings\string_after_n.scad>
use <data operations\strings\string_except_n_m.scad>
use <data operations\strings\string_last_n.scad>
use <data operations\strings\string_n_m.scad>
use <data operations\strings\string_n_to_m.scad>
use <data operations\strings\string_upto_n.scad>
use <fundamentals\condit.scad>
use <fundamentals\connectome.scad>
use <fundamentals\content.scad>
use <fundamentals\coord.scad>
use <fundamentals\descriptor.scad>
use <fundamentals\elem.scad>
use <fundamentals\elem_array.scad>
use <fundamentals\first.scad>
use <fundamentals\fold.scad>
use <fundamentals\fold_list.scad>
use <fundamentals\inc - tester.scad>
use <fundamentals\inc.scad>
use <fundamentals\last.scad>
use <fundamentals\phasor.scad>
use <fundamentals\retrieve.scad>
use <fundamentals\span.scad>
use <fundamentals\unfold.scad>
use <fundamentals\unfold_complete.scad>
use <generators\generate_array.scad>
use <generators\generate_list.scad>
use <generators\random_list.scad>
use <generators\random_number.scad>
use <generators\conditionals\generate_conditional_code.scad>
use <generators\conditionals\generate_conditional_code_example.scad>
use <generators\geometry\generate_edges.scad>
use <generators\geometry\generate_polygons.scad>
use <generators\geometry\linear_expand.scad>
use <generators\geometry\list_expand.scad>
use <generators\geometry\list_expand_n.scad>
use <generators\geometry\list_expand_single.scad>
use <logic\and.scad>
use <logic\and_field.scad>
use <logic\nand.scad>
use <logic\nor.scad>
use <logic\not.scad>
use <logic\or.scad>
use <logic\xnor.scad>
use <logic\xor.scad>
use <mathematics\modulus.scad>
use <mathematics\quotor.scad>
use <mathematics\coordinates\array_convert.scad>
use <mathematics\coordinates\array_to_num.scad>
use <mathematics\coordinates\convert.scad>
use <mathematics\coordinates\convert_cartesic.scad>
use <mathematics\coordinates\num_to_array.scad>
use <mathematics\lists\list_product.scad>
use <mathematics\lists\list_product_offset.scad>
use <mathematics\lists\list_sum.scad>
use <mathematics\lists\list_sum_offset.scad>
use <mathematics\probabilistics\factorial.scad>
use <mathematics\probabilistics\n_over_k.scad>
use <modules\geometry\line.scad>
use <test cases\test_cases.scad>
