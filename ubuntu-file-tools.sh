#!/bin/bash

WORKSPACE="$HOME/repo"

LOCAL_USERNAME="oliver%2elu"
LOCAL_PASSWORD="filesman"
#####################
## NEX X1
#####################
X1_APP_REPO="nexapp"
LOCAL_X1_APP_REPO="avc-rd01.anser-u2.com:8800/nex-x1/nex.git"


X1_KRL_REPO="nexkrl"
LOCAL_X1_KRL_REPO="avc-rd01.anser-u2.com:8800/nex-x1/nexkrl.git"

X1_UBT_REPO="nexubt"
LOCAL_X1_UBT_REPO="avc-rd01.anser-u2.com:8800/nex-x1/nexubt.git"

X1_CVKRL_REPO="cvkernel"
LOCAL_X1_CVKRL_REPO="avc-rd01.anser-u2.com:8800/nex-x1/cvkernel.git"

X1_SNIP_REPO="snippets"
LOCAL_X1_SNIP_REPO="avc-rd01.anser-u2.com:8800/nex-x1/qt-snippets.git"

X1_MSGPRO_REPO="message_pro_x1"
LOCAL_X1_MSGPRO_REPO="avc-rd01.anser-u2.com:8800/nex-x1/message_pro_x1.git"

#####################
## U2
#####################
U2PRO_REPO="u2pro"
LOCAL_U2PRO_REPO="avc-rd01.anser-u2.com:8800/u2danser/u2pro.git"

U2KRL_REPO="u2d_krl"
LOCAL_U2KRL_REPO="avc-rd01.anser-u2.com:8800/u2danser/u2d_krl.git"

U2UBT_REPO="u2d_ubt"
LOCAL_U2UBT_REPO="avc-rd01.anser-u2.com:8800/u2danser/u2d_ubt.git"

U2DRV_REPO="u2d_drv"
LOCAL_U2DRV_REPO="avc-rd01.anser-u2.com:8800/u2danser/u2d_drv.git"


#####################
## REMOTE
#####################
REMOTE_USERNAME="work-exp"
REMOTE_PASSWORD="Kay54068"

REMOTE_X1_APP_REPO="github.com/work-exp/nexapp.git"
REMOTE_X1_KRL_REPO="github.com/work-exp/nexkrl.git"
REMOTE_X1_UBT_REPO="github.com/work-exp/nexubt.git"
REMOTE_X1_CVKRL_REPO="github.com/work-exp/cvkernel.git"
REMOTE_X1_SNIP_REPO="github.com/work-exp/qt-snippets.git"
REMOTE_X1_MSGPRO_REPO="github.com/work-exp/message_pro_x1.git"

REMOTE_U2PRO_REPO="github.com/work-exp/u2pro.git"
REMOTE_U2KRL_REPO="github.com/work-exp/u2d_krl.git"
REMOTE_U2UBT_REPO="github.com/work-exp/u2d_ubt.git"
REMOTE_U2DRV_REPO="github.com/work-exp/u2d_drv.git"

#####################
## e-mail
#####################
EMAIL="tsc.system.mail@gmail.com"

#ref:
# space: %20
# .: 	%2e
# HTML URL 编码
# https://www.w3school.com.cn/tags/html_ref_urlencode.html

echo "backup"
if [ -d "$WORKSPACE" ]; then
  rm -rf  $WORKSPACE
fi

if [ ! -d "$WORKSPACE" ]; then
  mkdir $WORKSPACE
fi


print () {
    #builtin echo -n `date +"[%m-%d %H:%M:%S]"` ": "
    #builtin echo $1
    echo -n "."
} 

cd $WORKSPACE

git_clone_x1app()
{
    print "run git clone x1 app"
    result=$(git clone --bare  http://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_X1_APP_REPO $X1_APP_REPO 2>&1)
    if [ $? -ne 0 ]; then
        print "git first clone fail"
        rm -rf $WORKSPACE/$X1_APP_REPO 
        result_https=$(git clone --bare  https://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_X1_APP_REPO $X1_APP_REPO 2>&1)
        if [ $? -ne 0 ]; then
                print "git clone fail !!"
        #exit 1
        else
            print "git clone success !!"
        fi
    #exit 1
    else
        print "git clone success "
    fi
}

git_clone_x1krl()
{
    print "run git clone x1 krl"
    result=$(git clone --bare  http://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_X1_KRL_REPO $X1_KRL_REPO 2>&1)
    if [ $? -ne 0 ]; then
        print "git first clone fail"
        rm -rf $WORKSPACE/$X1_KRL_REPO 
        result_https=$(git clone --bare  https://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_X1_KRL_REPO $X1_KRL_REPO 2>&1)
        if [ $? -ne 0 ]; then
                print "git clone fail !!"
        #exit 1
        else
            print "git clone success !!"
        fi
    #exit 1
    else
        print "git clone success "
    fi
}

git_clone_x1ubt()
{
    print "run git clone x1 ubt"
    result=$(git clone --bare  http://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_X1_UBT_REPO $X1_UBT_REPO 2>&1)
    if [ $? -ne 0 ]; then
        print "git first clone fail"
        rm -rf $WORKSPACE/$X1_UBT_REPO 
        result_https=$(git clone --bare  https://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_X1_UBT_REPO $X1_UBT_REPO 2>&1)
        if [ $? -ne 0 ]; then
                print "git clone fail !!"
        #exit 1
        else
            print "git clone success !!"
        fi
    #exit 1
    else
        print "git clone success "
    fi
}

git_clone_x1cvkrl()
{
    print "run git clone x1 cv kernel"
    result=$(git clone --bare  http://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_X1_CVKRL_REPO $X1_CVKRL_REPO 2>&1)
    if [ $? -ne 0 ]; then
        print "git first clone fail"
        rm -rf $WORKSPACE/$X1_CVKRL_REPO 
        result_https=$(git clone --bare  https://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_X1_CVKRL_REPO $X1_CVKRL_REPO 2>&1)
        if [ $? -ne 0 ]; then
                print "git clone fail !!"
        #exit 1
        else
            print "git clone success !!"
        fi
    #exit 1
    else
        print "git clone success "
    fi
}

git_clone_x1snippet()
{
    print "run git clone x1 snippet"
    result=$(git clone --bare  http://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_X1_SNIP_REPO $X1_SNIP_REPO 2>&1)
    if [ $? -ne 0 ]; then
        print "git first clone fail"
        rm -rf $WORKSPACE/$X1_SNIP_REPO 
        result_https=$(git clone --bare  https://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_X1_SNIP_REPO $X1_SNIP_REPO 2>&1)
        if [ $? -ne 0 ]; then
                print "git clone fail !!"
        #exit 1
        else
            print "git clone success !!"
        fi
    #exit 1
    else
        print "git clone success "
    fi
}

git_clone_x1msgpro()
{
    print "run git clone x1 msgpro"
    result=$(git clone --bare  http://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_X1_MSGPRO_REPO $X1_MSGPRO_REPO 2>&1)
    if [ $? -ne 0 ]; then
        print "git first clone fail"
        rm -rf $WORKSPACE/$X1_MSGPRO_REPO 
        result_https=$(git clone --bare  https://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_X1_MSGPRO_REPO $X1_MSGPRO_REPO 2>&1)
        if [ $? -ne 0 ]; then
                print "git clone fail !!"
        #exit 1
        else
            print "git clone success !!"
        fi
    #exit 1
    else
        print "git clone success "
    fi
}

git_clone_u2pro()
{
    print "run git clone u2pro"
    result=$(git clone --bare  http://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_U2PRO_REPO $U2PRO_REPO 2>&1)
    if [ $? -ne 0 ]; then
        print "git first clone fail"
        rm -rf $WORKSPACE/$U2PRO_REPO 
        result_https=$(git clone --bare  https://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_U2PRO_REPO $U2PRO_REPO 2>&1)
        if [ $? -ne 0 ]; then
                print "git clone fail !!"
        #exit 1
        else
            print "git clone success !!"
        fi
    #exit 1
    else
        print "git clone success "
    fi
}

git_clone_u2krl()
{
    print "run git clone u2krl"
    result=$(git clone --bare  http://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_U2KRL_REPO $U2KRL_REPO 2>&1)
    if [ $? -ne 0 ]; then
        print "git first clone fail"
        rm -rf $WORKSPACE/$U2KRL_REPO 
        result_https=$(git clone --bare  https://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_U2KRL_REPO $U2KRL_REPO 2>&1)
        if [ $? -ne 0 ]; then
                print "git clone fail !!"
        #exit 1
        else
            print "git clone success !!"
        fi
    #exit 1
    else
        print "git clone success "
    fi
}


git_clone_u2ubt()
{
    print "run git clone u2ubt"
    result=$(git clone --bare  http://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_U2UBT_REPO $U2UBT_REPO 2>&1)
    if [ $? -ne 0 ]; then
        print "git first clone fail"
        rm -rf $WORKSPACE/$U2UBT_REPO 
        result_https=$(git clone --bare  https://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_U2UBT_REPO $U2UBT_REPO 2>&1)
        if [ $? -ne 0 ]; then
                print "git clone fail !!"
        #exit 1
        else
            print "git clone success !!"
        fi
    #exit 1
    else
        print "git clone success "
    fi
}

git_clone_u2drv()
{
    print "run git clone u2drv"
    result=$(git clone --bare  http://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_U2DRV_REPO $U2DRV_REPO 2>&1)
    if [ $? -ne 0 ]; then
        print "git first clone fail"
        rm -rf $WORKSPACE/$U2DRV_REPO 
        result_https=$(git clone --bare  https://$LOCAL_USERNAME:$LOCAL_PASSWORD@$LOCAL_U2DRV_REPO $U2DRV_REPO 2>&1)
        if [ $? -ne 0 ]; then
                print "git clone fail !!"
        #exit 1
        else
            print "git clone success !!"
        fi
    #exit 1
    else
        print "git clone success "
    fi
}


##########################
##   Push
##########################

git_push_x1app()
{

# add remote
#git remote add origin https://$REMOTE_NEXAPP_REPO

    ## 
    cd $WORKSPACE/$X1_APP_REPO
    print "run git push X1 app"
    result=$(git push --mirror  https://$REMOTE_USERNAME:$REMOTE_PASSWORD@$REMOTE_X1_APP_REPO 2>&1)
    if [[ $? != 0 ]]; then
        print "push X1 app failed"
        # exit 1
    else
        print "success!"
    fi

}

git_push_x1krl()
{
    ## 
    cd $WORKSPACE/$X1_KRL_REPO
    print "run git push X1 krl"
    result=$(git push --mirror  https://$REMOTE_USERNAME:$REMOTE_PASSWORD@$REMOTE_X1_KRL_REPO 2>&1)
    if [[ $? != 0 ]]; then
        print "push X1 x1krl failed"
        # exit 1
    else
        print "success!"
    fi

}

git_push_x1ubt()
{
    ## 
    cd $WORKSPACE/$X1_UBT_REPO
    print "run git push x1ubt"
    result=$(git push --mirror  https://$REMOTE_USERNAME:$REMOTE_PASSWORD@$REMOTE_X1_UBT_REPO 2>&1)
    if [[ $? != 0 ]]; then
        print "push x1ubt failed"
        # exit 1
    else
        print "success!"
    fi

}

git_push_x1cvkrl()
{
    ## 
    cd $WORKSPACE/$X1_CVKRL_REPO
    print "run git push x1cvkrl"
    result=$(git push --mirror  https://$REMOTE_USERNAME:$REMOTE_PASSWORD@$REMOTE_X1_CVKRL_REPO 2>&1)
    if [[ $? != 0 ]]; then
        print "push x1cvkrl failed"
        # exit 1
    else
        print "success!"
    fi

}


git_push_x1snippet()
{
    ## 
    cd $WORKSPACE/$X1_SNIP_REPO
    print "run git push x1snippet"
    result=$(git push --mirror  https://$REMOTE_USERNAME:$REMOTE_PASSWORD@$REMOTE_X1_SNIP_REPO 2>&1)
    if [[ $? != 0 ]]; then
        print "push x1snippet failed"
        # exit 1
    else
        print "success!"
    fi

}


git_push_x1msgpro()
{
    ## 
    cd $WORKSPACE/$X1_MSGPRO_REPO
    print "run git push x1msgpro"
    result=$(git push --mirror  https://$REMOTE_USERNAME:$REMOTE_PASSWORD@$REMOTE_X1_MSGPRO_REPO 2>&1)
    if [[ $? != 0 ]]; then
        print "push x1msgpro failed"
        # exit 1
    else
        print "success!"
    fi

}

git_push_u2pro()
{
    ## 
    cd $WORKSPACE/$U2PRO_REPO
    print "run git push u2pro"
     #>> "$log_file"
    result=$(git push --mirror  https://$REMOTE_USERNAME:$REMOTE_PASSWORD@$REMOTE_U2PRO_REPO 2>&1)
    if [[ $? != 0 ]]; then
        ##print "Body" | mail -s "push failed" $EMAIL
        print "push u2pro failed"
        # exit 1
    else
        print "success!"
    fi

}

git_push_u2krl()
{
    ## 
    cd $WORKSPACE/$U2KRL_REPO
    print "run git push u2 krl"
     #>> "$log_file"
    result=$(git push --mirror  https://$REMOTE_USERNAME:$REMOTE_PASSWORD@$REMOTE_U2KRL_REPO 2>&1)
    if [[ $? != 0 ]]; then
        ##print "Body" | mail -s "push failed" $EMAIL
        print "push u2 krl failed"
        # exit 1
    else
        print "success!"
    fi

}

git_push_u2ubt()
{
    ## 
    cd $WORKSPACE/$U2UBT_REPO
    print "run git push u2 ubt"
    result=$(git push --mirror  https://$REMOTE_USERNAME:$REMOTE_PASSWORD@$REMOTE_U2UBT_REPO 2>&1)
    if [[ $? != 0 ]]; then
        ##print "Body" | mail -s "push failed" $EMAIL
        print "push u2 ubt failed"
        # exit 1
    else
        print "success!"
    fi

}


git_push_u2drv()
{
    ## 
    cd $WORKSPACE/$U2DRV_REPO
    print "run git push u2 drv"
    result=$(git push --mirror  https://$REMOTE_USERNAME:$REMOTE_PASSWORD@$REMOTE_U2DRV_REPO 2>&1)
    if [[ $? != 0 ]]; then
        ##print "Body" | mail -s "push failed" $EMAIL
        print "push u2 ubt failed"
        # exit 1
    else
        print "success!"
    fi

}

## clone all 
git_clone_x1app > /dev/null 2>&1
echo -n "."
git_clone_x1krl > /dev/null 2>&1
echo -n "."
git_clone_x1ubt > /dev/null 2>&1
echo -n "."
git_clone_x1cvkrl > /dev/null 2>&1
echo -n "."
git_clone_x1snippet > /dev/null 2>&1
echo -n "."
git_clone_x1msgpro > /dev/null 2>&1
echo -n "."
git_clone_u2pro  > /dev/null 2>&1
echo -n "."
git_clone_u2krl  > /dev/null 2>&1
echo -n "."
git_clone_u2ubt > /dev/null 2>&1
echo -n "."
git_clone_u2drv > /dev/null 2>&1

sleep 1

## push
git_push_x1app  > /dev/null 2>&1
echo -n "."
git_push_x1krl  > /dev/null 2>&1
echo -n "."
git_push_x1ubt  > /dev/null 2>&1
echo -n "."
git_push_x1cvkrl  > /dev/null 2>&1
echo -n "."
git_push_x1snippet  > /dev/null 2>&1
echo -n "."
git_push_x1msgpro  > /dev/null 2>&1
echo -n "."
git_push_u2pro  > /dev/null 2>&1
echo -n "."
git_push_u2krl  > /dev/null 2>&1
echo -n "."
git_push_u2ubt  > /dev/null 2>&1
echo -n "."
git_push_u2drv  > /dev/null 2>&1
echo -n "."
cd ..
rm -rf $WORKSPACE

echo "OK"