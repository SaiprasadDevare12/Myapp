class Curd < ApplicationRecord
 validates_presence_of :adno 
 validates_presence_of :name
 validates_presence_of :gender
 validates_presence_of :standard
end
