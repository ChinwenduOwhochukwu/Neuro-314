using JLD
using PyPlot
EC= imread("/Users/chinwenduowhochukwu/NEU_314/el_capitan.png")
#1A-A1: to visualize el capitan
data= imshow(convert(Array{Float32,3},EC))
clf(); #clear it

#1A-A2: to quantify the matrix
size(EC)

#1A-B: characterizing the color of the channels in el capitan

function show_channels(image)
    B= image[:,:,3];
    R= image[:,:,1];
    G= image[:,:,2];
    return R, G, B
end
#1A-C flaggin for bug
function show_channels(image)
    B= image[:,:,3];
    R= image[:,:,1];
    G= image[:,:,2];
    println("BUG BUG BUG")
    return R, G, B
end

#1A-D flagging for reset
function show_channels(image)
    B= image[:,:,3];
    R= image[:,:,1];
    G= image[:,:,2];
    println("Reset with git resert--mixed")
    return R, G, B
end

#1A-E making a new image2
#cat(G,B,R, dims=3 )
image2= cat(show_channels(EC)[2], show_channels(EC)[3], show_channels(EC)[1], dims= 3)

#to display image2 and EC(the original image) individually
imshow(image2)
imshow(EC)
#to display image2 and EC together on one plot
imshow(image2), subplot(1,2,2); imshow(EC), subplot(1,2,1), axis("off"), title("EC and Image2"), figure(figsize=[640,360])
