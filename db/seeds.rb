User.destroy_all
Post.destroy_all
Comment.destroy_all

u1 = User.create( :first_name => "Oneser", :last_name => "One", :email => "oneser@one.com", :password_digest => "one" )
u2 = User.create( :first_name => "Twoser", :last_name => "Two", :email => "twoser@two.com", :password_digest => "two" )
u2 = User.create( :first_name => "Thruser", :last_name => "Three", :email => "thruser@three.com", :password_digest => "three" )

p1 = Post.create( :content => "Here is a sample post", :user_id => 1)
p2 = Post.create( :content => "Here is a second sample post", :user_id => 2)
p3 = Post.create( :content => "Here is a third sample post", :user_id => 3)

c1 = Comment.create( :content => "Here is a sample comment", :user_id => 1)
c2 = Comment.create( :content => "Here is a second sample comment", :user_id => 2)
c3 = Comment.create( :content => "Here is a third sample comment", :user_id => 3)
