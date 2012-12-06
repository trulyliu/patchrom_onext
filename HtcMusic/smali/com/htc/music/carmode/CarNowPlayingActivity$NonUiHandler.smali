.class final Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
.super Landroid/os/Handler;
.source "CarNowPlayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    .line 1542
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1543
    return-void
.end method

.method private onServiceConnectedHandle()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 1547
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onServiceConnectedHandle + "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo(Landroid/os/Handler;)V
    invoke-static {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    .line 1549
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updatePlayState(Landroid/os/Handler;)V
    invoke-static {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1800(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    .line 1550
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime(Landroid/os/Handler;)V
    invoke-static {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1700(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    .line 1551
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateShuffletState(Landroid/os/Handler;)V
    invoke-static {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4100(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    .line 1552
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateRepeatState(Landroid/os/Handler;)V
    invoke-static {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4200(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    .line 1554
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh(Landroid/os/Handler;)V
    invoke-static {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2000(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    .line 1563
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onServiceConnectedHandle - "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1569
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1738
    :cond_0
    :goto_0
    return-void

    .line 1571
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1572
    .local v0, albumId:I
    if-ltz v0, :cond_0

    .line 1573
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiPlayAlbum(I)V
    invoke-static {v7, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4300(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    goto :goto_0

    .line 1578
    .end local v0           #albumId:I
    :pswitch_1
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUIGetTrackInfo()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1583
    :pswitch_2
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiDoPauseResume()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4500(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1588
    :pswitch_3
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiDoShuffle()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4600(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1593
    :pswitch_4
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiDoRepeat()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1598
    :pswitch_5
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiDoNext()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1603
    :pswitch_6
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiDoPrev()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4900(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1608
    :pswitch_7
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiGetTrackTime()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1613
    :pswitch_8
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiGetPlayState()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1618
    :pswitch_9
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiGetShuffleState()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5200(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1623
    :pswitch_a
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiGetRepeatState()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1628
    :pswitch_b
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiUpdateGlider()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1633
    :pswitch_c
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiAnimationInit()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5500(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1638
    :pswitch_d
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiStartNextAnimation()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5600(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1643
    :pswitch_e
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiStartPrevAnimation()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1648
    :pswitch_f
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiEndAnimation()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1653
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "seek_pos"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1654
    .local v6, pos:I
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiSeek(I)V
    invoke-static {v7, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5900(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    goto :goto_0

    .line 1659
    .end local v6           #pos:I
    :pswitch_11
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiGetBeatsState()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$6000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1664
    :pswitch_12
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiGetBeatsStateHeadsetChanged()V
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$6100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1669
    :pswitch_13
    const-string v7, "[CarNowPlayingActivity]"

    const-string v8, "NONUI_SERVICE_CONNECTED +"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNeedBindService:Z
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$6200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1671
    const-string v7, "[CarNowPlayingActivity]"

    const-string v8, "onServiceConnected, but activity is onStop"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 1680
    :goto_1
    const-string v7, "[CarNowPlayingActivity]"

    const-string v8, "NONUI_SERVICE_CONNECTED -"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1675
    :cond_1
    iget-object v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/htc/music/IMediaPlaybackService;

    iput-object v7, v8, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1676
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsSeriveBinded:Z
    invoke-static {v7, v10}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$6302(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z

    .line 1677
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->onServiceConnectedHandle()V

    goto :goto_1

    .line 1685
    :pswitch_14
    const-string v7, "[CarNowPlayingActivity]"

    const-string v8, "NONUI_SERVICE_DISCONNECTED +"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iput-object v11, v7, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1687
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsSeriveBinded:Z
    invoke-static {v7, v9}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$6302(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z

    .line 1688
    const-string v7, "[CarNowPlayingActivity]"

    const-string v8, "NONUI_SERVICE_DISCONNECTED -"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1693
    :pswitch_15
    const-string v7, "[CarNowPlayingActivity]"

    const-string v8, "NONUI_ON_STOP +"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsSeriveBinded:Z
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$6300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1695
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 1698
    :cond_2
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNeedBindService:Z
    invoke-static {v7, v9}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$6202(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z

    .line 1700
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iput-object v11, v7, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1701
    const-string v7, "[CarNowPlayingActivity]"

    const-string v8, "NONUI_ON_STOP -"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1706
    :pswitch_16
    const-string v7, "[CarNowPlayingActivity]"

    const-string v8, "NONUI_ON_START +"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNeedBindService:Z
    invoke-static {v7, v10}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$6202(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z

    .line 1708
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v9}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$6400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/content/ServiceConnection;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 1710
    const-string v7, "[CarNowPlayingActivity]"

    const-string v8, "NONUI_ON_START -"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1715
    :pswitch_17
    const-string v7, "[CarNowPlayingActivity]"

    const-string v8, "NONUI_DO_STATE_CHANGE_UI + "

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_3

    .line 1718
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "glider_state"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1719
    .local v4, gliderState:I
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getQueuePositionImmediately()I

    move-result v1

    .line 1720
    .local v1, albumQueuePos:I
    const/16 v7, 0x12

    if-ne v4, v7, :cond_3

    .line 1721
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1722
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1723
    .local v5, message:Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 1724
    .local v2, data:Landroid/os/Bundle;
    const-string v7, "glider_state"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1725
    const-string v7, "album_queue_pos"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1726
    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1734
    .end local v1           #albumQueuePos:I
    .end local v2           #data:Landroid/os/Bundle;
    .end local v4           #gliderState:I
    .end local v5           #message:Landroid/os/Message;
    :cond_3
    :goto_2
    const-string v7, "[CarNowPlayingActivity]"

    const-string v8, "NONUI_DO_STATE_CHANGE_UI -"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1729
    :catch_0
    move-exception v3

    .line 1730
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
