# TODO: implement your seeds
john = User.create!(
  first_name: 'John',
  last_name: 'Doe',
  password: 'secret',
  email: 'john@gmail.com'
)

tree1 = Tree.new(
  name: 'John’s apple tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apple tree produces both sweet and sour apples. They will be perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price_per_year: 175,
  quantity_by_year: 50,
  fruits: 'Apple'
)
tree1.user = john
tree1.save!

tree2 = Tree.new(
  name: 'Little Pear Tree',
  address: '347 Avenue des Alpages 74310 Les Houches',
  description: 'Just a litte pear tree, needs some care',
  price_per_year: 35,
  quantity_by_year: 2,
  fruits: 'Pear'
)
tree2.user = john
tree2.save!

tree3 = Tree.new(
  name: 'Fig tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'Fig tree that produces lots of figs, great for salads!',
  price_per_year: 124,
  quantity_by_year: 400,
  fruits: 'Fig'
)
tree3.user = john
tree3.save!

tree4 = Tree.new(
  name: "Plumber's tree",
  address: '20 rue des Capucins 69001 Lyon',
  description: 'A cute little plum tree, enjoy the fruit.',
  price_per_year: 120,
  quantity_by_year: 25,
  fruits: 'Plum'
)
tree4.user = john
tree4.save!
