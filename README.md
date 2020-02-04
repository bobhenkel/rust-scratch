Thoughts... maybe a compiled language has more benefits than most of us think!

This repo has is an example of building a very small(in total image size) secure(very small attack surface) docker image using rust as the example language, go can use this approach too.  Because this approach uses scratch as the base image there's next to nothing on the final docker image, no shell(bash, sh) no ls no nothing really except the bare bones and a rust binary.


**STEPS TO RUN**
* ```git clone git@github.com:bobhenkel/rust-scratch.git``` 
* ```cd rust-scratch```
* ```docker build -t writerust .``` <- Will make a ~1.93MB docker image.  Granted this will be bigger the larger the code base, but still!
* ```docker run --rm writerust```


**SIDE NOTES**

Worth taking a look at this as well https://github.com/GoogleContainerTools/distroless. Those have solutions for non-compiled languages, not sure if a nodejs or python app will run in scratch, I'd guess not easily if at all.
