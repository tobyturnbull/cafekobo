User.destroy_all
Post.destroy_all
Comment.destroy_all

u1 = User.create( :name => "AA", :email => "a@a.com", :password => "a", :password_confirmation => 'a' )
u2 = User.create( :name => "BB", :email => "b@b.com", :password => "b", :password_confirmation => 'b' )
u2 = User.create( :name => "CC", :email => "c@c.com", :password => "c", :password_confirmation => 'c' )

p1 = Post.create( :content => "Here is a sample post", :user_id => 1)
p2 = Post.create( :content => "Here is a second sample post", :user_id => 2)
p3 = Post.create( :content => "Here is a third sample post", :user_id => 3)

c1 = Comment.create( :content => "Here is a sample comment", :user_id => 1)
c2 = Comment.create( :content => "Here is a second sample comment", :user_id => 2)
c3 = Comment.create( :content => "Here is a third sample comment", :user_id => 3)
