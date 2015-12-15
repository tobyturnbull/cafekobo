User.destroy_all
Post.destroy_all
Comment.destroy_all

u1 = User.create( :name => "Oneser", :email => "oneser@one.com", :password => "one", :password_confirmation => 'one' )
u2 = User.create( :name => "Twoser", :email => "twoser@two.com", :password => "two", :password_confirmation => 'two' )
u2 = User.create( :name => "Thruser", :email => "thruser@three.com", :password => "three", :password_confirmation => 'three' )

p1 = Post.create( :content => "Here is a sample post", :user_id => 1)
p2 = Post.create( :content => "Here is a second sample post", :user_id => 2)
p3 = Post.create( :content => "Here is a third sample post", :user_id => 3)

c1 = Comment.create( :content => "Here is a sample comment", :user_id => 1)
c2 = Comment.create( :content => "Here is a second sample comment", :user_id => 2)
c3 = Comment.create( :content => "Here is a third sample comment", :user_id => 3)
