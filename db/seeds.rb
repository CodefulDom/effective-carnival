10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Convallis aenean et tortor at risus viverra adipiscing at. Fames ac turpis egestas sed tempus. Aliquet risus
 feugiat in ante metus dictum. Nisl purus in mollis nunc sed id semper. Justo eget magna fermentum iaculis eu. Scelerisque
  eleifend donec pretium vulputate sapien. Nec feugiat nisl pretium fusce id. Placerat vestibulum lectus mauris
 ultrices eros in cursus. Arcu dictum varius duis at consectetur lorem donec massa. Quis imperdiet massa tincidunt nunc
 pulvinar sapien. Ac ut consequat semper viverra nam libero. Et malesuada fames ac turpis egestas integer eget aliquet
 nibh. Vestibulum sed arcu non odio euismod. Mattis enim ut tellus elementum sagittis vitae et leo.Imperdiet proin
 fermentum leo vel. Integer vitae justo eget magna fermentum iaculis eu non.Quis vel eros donec ac odio. Dui vivamus arcu
  felis bibendum ut tristique et egestas quis. Volutpat odio facilisis mauris sit amet massa.'
  )
end

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percentage_utilized: 15
  )
end

9.times do |employer_item|
  Employer.create!(
    title: "Employer #{employer_item}",
    subtitle: '',
    body: 'fksdfjsdkljflksdjflksdjfklsdjfklsdjflsdkjflsdfjldsf
    dfdslkfjlskdjflkasdjflksjdflksjdfklasjdflksjdklfjaskldfjlasdjflasdfj
    jdklsfjlaskdjfklasdjflkjsldkfjlaksdjflkasjdfklajsdklfjalsdfjkasdlfjl
    dfjslkadjflsdfsnvmasvjkrhgjka jfdnfjalsnkjashgajkvnadfvnajkdvkjadf v',
    main_image: 'https://placeholdit.co//i/600x400',
    thumb_image: 'https://placeholdit.co//i/350x200'
  )
end

puts 'seeds have been seeded'