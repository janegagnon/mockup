User.destroy_all
user_group = [{:username => "janegagnon",
          :password => "jmgagnon"
          },
          {:username => "brockcorbett",
          :password => "tbcorbett",
          }
        ]
  user_group.each do |user_info|
  u = User.new
  u.username = user_info[:username]
  u.password = user_info[:password]
  u.save
end

Category.destroy_all
["Dairy", "Condiments", "Dry Goods", "Fruits & Vegetables", "Meat", "Spices"].each do |category_name|
  c = Category.new
  c.name = category_name
  c.save
end

Item.destroy_all
item_pantry = [{ :name => "Flour",
                        :image_file => "Flour.jpg",
                        :category_name => "Dry Goods",
                      },
                      { :name => "Butter",
                        :image_file => "Butter.jpg",
                        :category_name => "Dairy"
                      },
                      { :name => "Eggs",
                        :image_file => "Eggs.jpg",
                        :category_name => "Dairy"
                      },
                      {:name => "Sugar",
                        :image_file => "Sugar.jpg",
                        :category_name => "Dry Goods"
                      },
                      {:name => "Baking Powder",
                        :image_file => "Baking_Powder.jpg",
                        :category_name => "Dry Goods"
                      },
                      {:name => "Baking Soda",
                        :image_file => "Baking_Soda.jpg",
                        :category_name => "Dry Goods"
                      },
                      {:name => "Salt",
                        :image_file => "Salt.jpg",
                        :category_name => "Spices"
                      },
                      {:name => "Olive Oil",
                        :image_file => "Olive_Oil.jpg",
                        :category_name => "Condiments"
                      },
                      {:name => "Milk",
                        :image_file => "Milk.jpg",
                        :category_name => "Dairy"
                      },
                      {:name => "Hamburger",
                        :image_file => "Hamburger.jpg",
                        :category_name => "Meat"
                      },
                      {:name => "Carrots",
                        :image_file => "Carrots.jpg",
                        :category_name => "Fruits & Vegetables"
                      },
                      {:name => "Celery",
                        :image_file => "Celery.jpg",
                        :category_name => "Fruits & Vegetables"
                      },
                       {:name => "Split Peas",
                        :image_file => "Split_Peas.jpg",
                        :category_name => "Fruits & Vegetables"
                      },
                       {:name => "Ham",
                        :image_file => "Ham.jpg",
                        :category_name => "Meat"
                      },
                      {:name => "Chocolate Chips",
                        :image_file => "Chocolate_Chips.jpg",
                        :category_name => "Dry Goods"
                      }
                  ]
item_pantry.each do |item|
p =  Item.new
  p.name = item[:name]
  p.image_file = item[:image_file]

  category = Category.find_by(:name => item[:category_name])
  p.category_id = category.id
  p.save
end

recipe_book = [ { :name => "Split Pea Soup",
                  :username => "janegagnon",
                  :image_file => "Split_Pea_Soup.jpg",
                  :directions => "Place all ingredients in crockpot for 6-8 hours."
                      },
                { :name => "Chocolate Chip Cookies",
                  :username => "brockcorbett",
                  :image_file => "Chocolate_Chip_Cookies.jpg",
                  :directions => "Mix butter and sugars.  Sift all dry ingredients and add gradually.  Stir in chocolate chips.  Bake 10-12 minutes @ 350 degrees."
                      },
                { :name => "Oatmeal Spice Cookies",
                  :username => "brockcorbett",
                  :image_file => "Oatmeal_Spice_Cookies.jpg",
                  :directions => "Mix butter and sugars.  Sift all dry ingredients and add gradually.  Stir in oats.  Bake 10-12 minutes @ 350 degrees."
                      },
               { :name => "Swedish Pancakes",
                  :username => "janegagnon",
                  :image_file => "Swedish_Pancakes.jpeg",
                  :directions =>"Place all ingredients in blender. Blend until smooth.  Cook in skillet"
                      }

                    ]

Recipe.destroy_all
recipe_book.each do |recipe|
  p =  Recipe.new
  p.name = recipe[:name]
  p.directions = recipe[:directions]
  p.image_file = recipe[:image_file]
  user = User.find_by(:username => recipe[:username])
  p.user_id = user.id
  p.save
end

ingredient_list =[ {:serving_unit => "Cup(s)",
                    :serving_quantity => 2,
                    :recipe => "Chocolate Chip Cookies",
                    :item => "Chocolate Chips"
                    },
                    {:serving_unit => "Cups(s)",
                    :serving_quantity => 2,
                    :recipe => "Chocolate Chip Cookies",
                    :item => "Butter"
                    },
                    {:serving_unit => "Cup(s)",
                    :serving_quantity => 3,
                    :recipe => "Chocolate Chip Cookies",
                    :item => "Flour"
                    },
                    {:serving_unit => "Cup(s)",
                    :serving_quantity => 1.5,
                    :recipe => "Chocolate Chip Cookies",
                    :item => "Sugar"
                    },
                    {:serving_unit => "Tbsp",
                    :serving_quantity => "1",
                    :recipe => "Chocolate Chip Cookies",
                    :item => "Baking Soda"
                    },
                    {:serving_unit => " ",
                    :serving_quantity => 2,
                    :recipe => "Split Pea Soup",
                    :item => "Carrots"
                    },
                    {:serving_unit => " ",
                    :serving_quantity => 2,
                    :recipe => "Split Pea Soup",
                    :item => "Celery"
                    },
                    {:serving_unit => "Packages",
                    :serving_quantity => 1.5,
                    :recipe => "Split Pea Soup",
                    :item => "Split Peas"
                    },
                    {:serving_unit => " ",
                    :serving_quantity => 1,
                    :recipe => "Split Pea Soup",
                    :item => "Ham"
                    },
                    {:serving_unit => "Cup(s)",
                    :serving_quantity => 3,
                    :recipe => "Swedish Pancakes",
                    :item => "Milk"
                    },
                    {:serving_unit => "Cup(s)",
                    :serving_quantity => 3,
                    :recipe => "Swedish Pancakes",
                    :item => "Flour"
                    },
                    {:serving_unit => " ",
                    :serving_quantity => 3,
                    :recipe => "Swedish Pancakes",
                    :item =>"Eggs"
                    },
                    {:serving_unit => "Tbsp",
                    :serving_quantity => "1",
                    :recipe => "Swedish Pancakes",
                    :item => "Butter"
                    },
                    {:serving_unit => "Cup(s)",
                    :serving_quantity => 2,
                    :recipe => "Oatmeal Spice Cookies",
                    :item => "Flour"
                    },
                    {:serving_unit => "Cup(s)",
                    :serving_quantity => 1,
                    :recipe => "Oatmeal Spice Cookies",
                    :item => "Butter"
                    }
                  ]
Ingredient.destroy_all
ingredient_list.each do |ingredient|
  p =  Ingredient.new
  p.serving_unit = ingredient[:serving_unit]
  p.serving_quantity = ingredient[:serving_quantity]
  recipe = Recipe.find_by(:name => ingredient[:recipe])
  p.recipe_id = recipe.id
  item = Item.find_by(:name => ingredient[:item])
  p.item_id = item.id
  p.save

end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
