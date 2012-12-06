.class final Lcom/htc/music/HtcMusic$NonUiHandler;
.super Landroid/os/Handler;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method public constructor <init>(Lcom/htc/music/HtcMusic;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 5686
    iput-object p1, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    .line 5687
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5688
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 5693
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 5984
    :pswitch_0
    const-string v6, "[HtcMusic]"

    const-string v7, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5986
    :cond_0
    :goto_0
    return-void

    .line 5763
    :pswitch_1
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5764
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v6

    if-ne v7, v6, :cond_1

    .line 5766
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5767
    const-string v6, "[HtcMusic]"

    const-string v7, "###### case CHECK_PLUGIN_SERVICE_STATE: Close error state if exists. $$$$$$$"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5768
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.music.finisherroractivity"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5769
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v6, v2}, Lcom/htc/music/HtcMusic;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5791
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    :goto_2
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 5771
    :cond_2
    :try_start_1
    const-string v6, "[HtcMusic]"

    const-string v7, "###### case CHECK_PLUGIN_SERVICE_STATE: Go to plugin error state!!! ######"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5772
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v6}, Lcom/htc/music/HtcMusic;->finish()V

    .line 5773
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 5774
    .local v5, targetIntent:Landroid/content/Intent;
    const/high16 v6, 0x1400

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5776
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    const-class v7, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5778
    const-string v6, "pluginmode"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5779
    const-string v6, "errorcause"

    iget-object v7, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v7, v7, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5781
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v6, v5}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 5783
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5788
    .end local v5           #targetIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 5789
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5791
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    goto :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v7}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    .line 5859
    :pswitch_2
    const-string v6, "[HtcMusic]"

    const-string v7, "msg.what = CHECK_ERROR_STATE"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5864
    :try_start_3
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5865
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v6, :cond_3

    .line 5888
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    :goto_3
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 5869
    :cond_3
    :try_start_4
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v6

    if-gez v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v6

    if-lez v6, :cond_9

    .line 5873
    :cond_4
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    new-instance v7, Lcom/htc/music/HtcMusic$NonUiHandler$1;

    invoke-direct {v7, p0}, Lcom/htc/music/HtcMusic$NonUiHandler$1;-><init>(Lcom/htc/music/HtcMusic$NonUiHandler;)V

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 5888
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    goto :goto_3

    .line 5885
    :catch_1
    move-exception v1

    .line 5886
    .local v1, ex:Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5888
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    .end local v1           #ex:Landroid/os/RemoteException;
    :goto_4
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5895
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v6}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_0

    .line 5897
    :try_start_6
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v3

    .line 5898
    .local v3, len:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 5905
    .local v4, status:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8500(Lcom/htc/music/HtcMusic;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 5908
    if-gtz v3, :cond_5

    const-string v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5911
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    new-instance v7, Lcom/htc/music/HtcMusic$NonUiHandler$2;

    invoke-direct {v7, p0}, Lcom/htc/music/HtcMusic$NonUiHandler$2;-><init>(Lcom/htc/music/HtcMusic$NonUiHandler;)V

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 5953
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5954
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    .end local v3           #len:I
    .end local v4           #status:Ljava/lang/String;
    :goto_5
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 5888
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v7}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    .line 5922
    .restart local v3       #len:I
    .restart local v4       #status:Ljava/lang/String;
    :cond_5
    :try_start_7
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v6, v6, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v6, :cond_6

    const-string v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5924
    const-string v6, "[HtcMusic]"

    const-string v7, "now playing view is on"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 5953
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5954
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    goto :goto_5

    .line 5933
    :cond_6
    :try_start_8
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    new-instance v7, Lcom/htc/music/HtcMusic$NonUiHandler$3;

    invoke-direct {v7, p0, v3}, Lcom/htc/music/HtcMusic$NonUiHandler$3;-><init>(Lcom/htc/music/HtcMusic$NonUiHandler;I)V

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 5953
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5954
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    goto :goto_5

    .line 5950
    .end local v3           #len:I
    .end local v4           #status:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 5951
    .restart local v1       #ex:Landroid/os/RemoteException;
    :try_start_9
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 5953
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5954
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    goto :goto_5

    .line 5953
    .end local v1           #ex:Landroid/os/RemoteException;
    :catchall_2
    move-exception v6

    iget-object v7, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v7}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5954
    iget-object v7, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v7}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5953
    :cond_7
    throw v6

    .line 5963
    :pswitch_3
    :try_start_a
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5964
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v6, :cond_8

    .line 5966
    :try_start_b
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ltz v6, :cond_8

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ltz v6, :cond_8

    .line 5967
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v6, v7, v8}, Lcom/htc/music/IMediaPlaybackService;->playAlbumAsync(II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3

    .line 5974
    :cond_8
    :goto_6
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 5969
    :catch_3
    move-exception v0

    .line 5970
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_c
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_6

    .line 5974
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_3
    move-exception v6

    iget-object v7, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v7}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    .line 5980
    :pswitch_4
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v7, 0x0

    #calls: Lcom/htc/music/HtcMusic;->updateTrackInfoP(Landroid/os/Bundle;)V
    invoke-static {v6, v7}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 5888
    :cond_9
    iget-object v6, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v6}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    goto/16 :goto_4

    .line 5693
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
