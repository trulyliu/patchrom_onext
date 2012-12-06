.class Lcom/htc/music/HtcMusic$DMCServiceListener;
.super Landroid/content/BroadcastReceiver;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMCServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method private constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 4069
    iput-object p1, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4069
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic$DMCServiceListener;-><init>(Lcom/htc/music/HtcMusic;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    .line 4072
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4073
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.htc.music.dmcservice.released"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4074
    const-string v6, "[HtcMusic]"

    const-string v7, "==========DMCSERVICE_RELEASED +"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4075
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v7, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v7

    #setter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v6, v7}, Lcom/htc/music/HtcMusic;->access$5002(Lcom/htc/music/HtcMusic;I)I

    .line 4077
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$5000(Lcom/htc/music/HtcMusic;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 4130
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$3700(Lcom/htc/music/HtcMusic;)V

    .line 4131
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z
    invoke-static {v6, v7}, Lcom/htc/music/HtcMusic;->access$5102(Lcom/htc/music/HtcMusic;Z)Z

    .line 4132
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4133
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4134
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4135
    :cond_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)V

    .line 4136
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$5400(Lcom/htc/music/HtcMusic;)V

    .line 4137
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V
    invoke-static {v6, v9}, Lcom/htc/music/HtcMusic;->access$5500(Lcom/htc/music/HtcMusic;Z)V

    .line 4138
    const-string v6, "[HtcMusic]"

    const-string v7, "==========DMCSERVICE_RELEASED -"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4154
    :cond_2
    :goto_1
    return-void

    .line 4079
    :pswitch_0
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/htc/music/HtcMusic;->access$4802(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 4081
    :try_start_0
    const-string v6, "dms_content_id"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4082
    .local v1, content:Ljava/lang/String;
    const/4 v4, 0x0

    .line 4084
    .local v4, index:I
    if-eqz v1, :cond_0

    .line 4085
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_3

    .line 4086
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4088
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 4093
    :goto_2
    :try_start_2
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DLNA_LOCAL - index from DMC = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4096
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v4}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 4097
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update index to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 4105
    .end local v1           #content:Ljava/lang/String;
    .end local v4           #index:I
    :catch_0
    move-exception v2

    .line 4106
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4089
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v4       #index:I
    :catch_1
    move-exception v3

    .line 4090
    .local v3, ex:Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v6, "[HtcMusic]"

    const-string v7, "NumberFormatException in DMCSERVICE_RELEASED"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    const/4 v4, 0x0

    goto :goto_2

    .line 4100
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    :cond_3
    const-string v6, "[HtcMusic]"

    const-string v7, "DMCServiceListener, DLNA_LOCAL, mService is null"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4113
    .end local v1           #content:Ljava/lang/String;
    .end local v4           #index:I
    :pswitch_1
    :try_start_4
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_5

    .line 4114
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4115
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->pauseAsync()V

    .line 4117
    :cond_4
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/htc/music/IMediaPlaybackService;->switchMode(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 4123
    :catch_2
    move-exception v2

    .line 4124
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4121
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_5
    :try_start_5
    const-string v6, "[HtcMusic]"

    const-string v7, "DMCServiceListener, DLNA_DMP, mService is null"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 4139
    :cond_6
    const-string v6, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4140
    const-string v6, "is_enabled"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 4142
    .local v5, isEnabled:Z
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==========DMCSERVICE_SET_PLAYBACK_COTNROL_ENABLED - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4143
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V
    invoke-static {v6, v5}, Lcom/htc/music/HtcMusic;->access$5500(Lcom/htc/music/HtcMusic;Z)V

    goto/16 :goto_1

    .line 4144
    .end local v5           #isEnabled:Z
    :cond_7
    const-string v6, "com.htc.music.dmcservice.repeat_changed"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4145
    const-string v6, "[HtcMusic]"

    const-string v7, "==========DMCSERVICE_REPEAT_CHANGED - "

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4146
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$5400(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 4147
    :cond_8
    const-string v6, "com.htc.music.dmcservice.shuffle_changed"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4148
    const-string v6, "[HtcMusic]"

    const-string v7, "==========DMCSERVICE_SHUFFLE_CHANGED - "

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4149
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 4150
    :cond_9
    const-string v6, "com.htc.music.dmcservice.dlna_connected"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4151
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$5400(Lcom/htc/music/HtcMusic;)V

    .line 4152
    iget-object v6, p0, Lcom/htc/music/HtcMusic$DMCServiceListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 4077
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
