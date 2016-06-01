
square=[0,1,2,3,4,5,6,7,8,9]

option=2
maxi=0
player=1
i=0
puts "---------BOARD--------"
puts square[0].to_s+"  |  "+square[1].to_s+"  |  "+square[2].to_s
puts " ------------"
puts square[3].to_s+"  |  "+square[4].to_s+"  |  "+square[5].to_s
puts " ------------"
puts square[6].to_s+"  |  "+square[7].to_s+"  |  "+square[8].to_s
puts "PLAYER 1 : X"
puts "PLAYER 2 : O"
puts "\n-----------------------"
puts "PLAYER VS PLAYER:1\nPLAYER VS COMPUTER:2\nENTER CHOICE:"
ch=gets.chomp.to_i

loop do

if maxi>9
	exit 0
end
maxi=maxi+1
	if(ch==1) then 
		puts "\n\tPLAYER  "+player.to_s+" turn"
	
    elsif ((ch==2)&&(player==2))
    	
     puts "\n\tComputer\'s turn"
 end

if (ch==1)||((ch==2)&&(player==1)) then
puts "Enter Square number to mark"

choice=gets.chomp.to_i
end

if player==1
 then 
mark="X" 
else
mark= "o"
end


if(ch==1)||((ch==2)&&(player==1)) then
if square[choice]==choice
then
square[choice]=mark
else
puts "Invalid choice"
player=(player%2)+1
end
end
if ch==2&&player==2 then
	    while (1)
	    option=rand()*10
        option=option.round
        if((square[option]!="X")&&(option<9)&&(square[option]==option) )then
         square[option]="o"
         break
        end
	    end
       
       
end
puts "---------BOARD--------"
puts square[0].to_s+"  |  "+square[1].to_s+"  |  "+square[2].to_s
puts " ------------"
puts square[3].to_s+"  |  "+square[4].to_s+"  |  "+square[5].to_s
puts " ------------"
puts square[6].to_s+"  |  "+square[7].to_s+"  |  "+square[8].to_s





if square[0]==square[1]&&square[1]==square[2]
then
puts "\nPlayer"+player.to_s+" has won "
exit 0
end
if square[3]==square[4]&&square[4]==square[5]
then
puts "\nPlayer"+player.to_s+" has won "
exit 0
end
if square[6]==square[7]&&square[7]==square[8]
then
puts "\nPlayer"+player.to_s+" has won "
exit 0
end

if square[0]==square[3]&&square[3]==square[6]
then

puts "\nPlayer"+player.to_s+" has  won "
exit 0
end
if square[1]==square[4]&&square[4]==square[7]
then

puts "\nPlayer"+player.to_s+" has  won "
exit 0
end
if square[2]==square[5]&&square[5]==square[8]
then

puts "\nPlayer"+player.to_s+" has  won "
exit 0
end


if (square[0] == square[4] && square[4] == square[8])
then 
puts "\nPlayer"+player.to_s+" has won "
exit 0
end
if (square[2] == square[4] && square[4] == square[6])
then 
puts "\nPlayer"+player.to_s+" has won "
exit 0
end


if(player==1)
then
player=2
else
player=1
end


end

