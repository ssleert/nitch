let
  asd: ref = new(string)
  asd_ref: ref = asd
  asd_ref_ref: ref = asd_ref
  asd_ref_ref_ref: ref = asd_ref_ref
  asd_ref_ref_ref_ref: ref = asd_ref_ref_ref

asd_ref_ref_ref_ref[] = "Hello, World!"

echo asd_ref_ref_ref_ref.repr
echo ""
echo asd.repr

