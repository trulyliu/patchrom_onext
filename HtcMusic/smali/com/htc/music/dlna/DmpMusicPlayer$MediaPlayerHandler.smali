.class Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;
.super Landroid/os/Handler;
.source "DmpMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmpMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaPlayerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/dlna/DmpMusicPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/dlna/DmpMusicPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 2387
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    .line 2388
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2389
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 2393
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2481
    :cond_0
    :goto_0
    return-void

    .line 2396
    :pswitch_0
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, ">> Receive SERVER_DIED <<"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mIsSupposedToBePlaying:Z
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3700(Lcom/htc/music/dlna/DmpMusicPlayer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2399
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->requestUpperDoNext(Z)V
    invoke-static {v3, v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4100(Lcom/htc/music/dlna/DmpMusicPlayer;Z)V

    goto :goto_0

    .line 2405
    :cond_1
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->openCurrent()V
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$900(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    goto :goto_0

    .line 2411
    :pswitch_1
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mRepeatMode:I
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4200(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 2414
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->openCurrent()V
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$900(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    goto :goto_0

    .line 2416
    :cond_2
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const/4 v4, 0x0

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->requestUpperDoNext(Z)V
    invoke-static {v3, v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4100(Lcom/htc/music/dlna/DmpMusicPlayer;Z)V

    goto :goto_0

    .line 2421
    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3000(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 2426
    :pswitch_3
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$800(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    move-result-object v3

    sget-object v4, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    if-ne v3, v4, :cond_6

    .line 2428
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%%% case DLNA_ERROR_HANDLE: show error %%% isPlaying() => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->isPlaying()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", if true => pause() and seek(0)..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2430
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2600(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2600(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2431
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->pause()V

    .line 2432
    :cond_3
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->seek(J)J

    .line 2435
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2437
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_5

    const-string v3, "error"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2438
    const-string v3, "error"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2439
    .local v2, errorReason:Ljava/lang/String;
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%%% case DLNA_ERROR_HANDLE: errorReason => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2444
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    const-string v4, "com.htc.music.dlna.DmpMusicPlayer"

    invoke-interface {v3, v2, v4}, Lcom/htc/music/IPluginIPCNotify;->onToastWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2445
    :catch_0
    move-exception v1

    .line 2447
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2452
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #errorReason:Ljava/lang/String;
    :cond_5
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "%%% case DLNA_ERROR_HANDLE: no error cause got here...don\'t show Toast!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2457
    .end local v0           #data:Landroid/os/Bundle;
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2458
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->getDLNAErrorString()Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.music.dlna.DmpMusicPlayer"

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IPluginIPCNotify;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2459
    :catch_1
    move-exception v1

    .line 2461
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2468
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_4
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2470
    :try_start_2
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "notify"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.music.dlna.DmpMusicPlayer"

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IPluginIPCNotify;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2471
    :catch_2
    move-exception v1

    .line 2472
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2476
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_7
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "case NOTIFY_UPPER:...mNotify is null??!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
