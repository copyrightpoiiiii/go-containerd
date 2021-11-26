f = open("test.txt","r")
lines = f.readlines(100000)
sh = open("test.sh","w+")
for line in lines:
    a = line.split("\n")[0].split(" ")[0].split("\t")
    image = "registry.cn-hangzhou.aliyuncs.com/qitest/"+a[0]+":"+a[1]+'_conv'
    print("echo "+a[0]+":"+a[1]+" >> test.log",file=sh)
    print("sudo ~/accelerated-container-image/bin/ctr rpull "+image +" | egrep 'elapsed|done:' |  tail -1 >> test.log",file=sh)
    print("sudo ./test --name="+a[0]+" --tag="+a[1],file=sh)
    print("sudo ctr i rm "+image,file=sh)

sh.close()