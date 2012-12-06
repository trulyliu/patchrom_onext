.class Lcom/htc/music/MediaPlaybackService$1;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 1
    .parameter

    .prologue
    .line 947
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 948
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/music/MediaPlaybackService$1;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x5

    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    .line 952
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 953
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "handleMessage: mPlayer==null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 992
    :pswitch_0
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TRACK_ENDED, mRepeatMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4300(Lcom/htc/music/MediaPlaybackService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPlayOnNextPrev = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z
    invoke-static {v1, v5}, Lcom/htc/music/MediaPlaybackService;->access$4502(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 994
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4300(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 995
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4200(Lcom/htc/music/MediaPlaybackService;)V

    .line 1005
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->playImpl()V

    goto :goto_0

    .line 958
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 959
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->getVolume()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    .line 960
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "handleMessage: FADEIN - isPlaying() : false and volume == 1.0f, call play()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService$1;->mCurrentVolume:F

    .line 962
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService$1;->mCurrentVolume:F

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 963
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->playImpl()V

    .line 964
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 966
    :cond_2
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "handleMessage: FADEIN - isPlaying() : false and volume < 1.0f"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iput v3, p0, Lcom/htc/music/MediaPlaybackService$1;->mCurrentVolume:F

    .line 968
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService$1;->mCurrentVolume:F

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto/16 :goto_0

    .line 971
    :cond_3
    iget v1, p0, Lcom/htc/music/MediaPlaybackService$1;->mCurrentVolume:F

    const v2, 0x3c23d70a

    add-float/2addr v1, v2

    iput v1, p0, Lcom/htc/music/MediaPlaybackService$1;->mCurrentVolume:F

    .line 972
    iget v1, p0, Lcom/htc/music/MediaPlaybackService$1;->mCurrentVolume:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    .line 973
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 977
    :goto_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService$1;->mCurrentVolume:F

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto/16 :goto_0

    .line 975
    :cond_4
    iput v3, p0, Lcom/htc/music/MediaPlaybackService$1;->mCurrentVolume:F

    goto :goto_1

    .line 981
    :pswitch_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 982
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1, v4}, Lcom/htc/music/MediaPlaybackService;->nextAsync(Z)V

    goto/16 :goto_0

    .line 988
    :cond_5
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4200(Lcom/htc/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 1008
    :cond_6
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1, v5}, Lcom/htc/music/MediaPlaybackService;->nextAsync(Z)V

    goto/16 :goto_0

    .line 1012
    :pswitch_3
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1013
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "release wake lock"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z
    invoke-static {v1, v5}, Lcom/htc/music/MediaPlaybackService;->access$4602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1015
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1020
    :pswitch_4
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1021
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "isDmcOrPushMode: true, cancel FF_RW"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1025
    :cond_7
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-nez v1, :cond_8

    .line 1026
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J
    invoke-static {v1, v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$4902(Lcom/htc/music/MediaPlaybackService;J)J

    .line 1028
    :cond_8
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$5000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 1029
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1030
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$4800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$4900(Lcom/htc/music/MediaPlaybackService;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    #calls: Lcom/htc/music/MediaPlaybackService;->scanForward(IJ)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$5100(Lcom/htc/music/MediaPlaybackService;IJ)V

    .line 1031
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1032
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x104

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1041
    .end local v0           #message:Landroid/os/Message;
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4808(Lcom/htc/music/MediaPlaybackService;)I

    goto/16 :goto_0

    .line 1033
    :cond_a
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$5000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 1034
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1035
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$4800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$4900(Lcom/htc/music/MediaPlaybackService;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    #calls: Lcom/htc/music/MediaPlaybackService;->scanBackward(IJ)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$5200(Lcom/htc/music/MediaPlaybackService;IJ)V

    .line 1036
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1037
    .restart local v0       #message:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x104

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1038
    .end local v0           #message:Landroid/os/Message;
    :cond_b
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$5000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-nez v1, :cond_9

    .line 1039
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$1;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "playing"

    :goto_3
    invoke-virtual {v2, v1}, Lcom/htc/music/MediaPlaybackService;->updatePlaybackStatus(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v1, "paused"

    goto :goto_3

    .line 956
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
