///@description SplitString(:string, delimiter:string, ?list<string>):list<string>
///@function SplitString
///@param ToSplit
///@param Deliminator
///@param List<string>

var s = argument[0], d = argument[1], r;
if (argument_count >= 3) {
    r = argument[2];
    ds_list_clear(r);
} else r = ds_list_create();
var p = string_pos(d, s), o = 1;
var dl = string_length(d);
if (dl) while (p) {
    ds_list_add(r, string_copy(s, o, p - o));
    o = p + dl;
    //p = string_pos_ext(d, s, o);
}
ds_list_add(r, string_delete(s, 1, o - 1));
return r;