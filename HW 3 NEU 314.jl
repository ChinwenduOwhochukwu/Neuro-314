using JLD
using PyPlot
EC= imread("/Users/chinwenduowhochukwu/NEU_314/el_capitan.png")
#1A-A1: to visualize el capitan
image= imshow(convert(Array{Float32,3},EC))
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

#1A-C flagging for Bug
function show_channels(image)
    B= image[:,:,3];
    R= image[:,:,1];
    G= image[:,:,2];
    println("BUG, BUG, BUG")
    return R, G, B
end
here
