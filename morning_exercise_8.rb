# Hash Bonanza
## Step 1:
# Write a method that takes a hash and returns the depth of the deepest value of the hash.
require 'pry'
class HashBonanza

  hash_bonanza = {
    key_1: {
      key_2: {
        key_3_a: {
          key_4: "found me!"
        },
        key_3_b: "not quite"
      }
    }
  }

  def deepest_value(hash_bonanza)
    hash = hash_bonanza.each do |key|
      key.value.last
    end
  end
end

hash = HashBonanza.new
hash.deepest_value(hash_bananza)

deepest_value(hash_bonanza)
# => 4





# ```
#
# ## Step 2:
#
# Write a method that finds the depth of a certain key.
#
# ```ruby
# hash_bonanza = {
#   key_1: {
#     key_2: {
#       key_3_a: {
#         key_4: "found me!"
#       },
#       key_3_b: "not quite"
#     }
#   }
# }
#
# key_depth(:key_3_b)
# # => 3```
