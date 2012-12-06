.class Lcom/htc/music/dlna/DmcMusicPlayer$MediaPlayerHandler;
.super Landroid/os/Handler;
.source "DmcMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmcMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaPlayerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/dlna/DmcMusicPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/music/dlna/DmcMusicPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mainLooper"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    .line 567
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 568
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 572
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 607
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 574
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 575
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v3, "error_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    const-string v3, "error_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 577
    .local v2, errorId:I
    const-string v3, "[DmcMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%%% ERROR HANDLE: error => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 580
    const-string v3, "[DmcMusicPlayer]"

    const-string v4, "notify error"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    const-string v4, "com.htc.music.dlna.DmcMusicPlayer"

    invoke-interface {v3, v2, v4}, Lcom/htc/music/IPluginIPCNotify;->onErrorId(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v1

    .line 585
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 590
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #errorId:I
    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 592
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer$MediaPlayerHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "notify"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.music.dlna.DmcMusicPlayer"

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IPluginIPCNotify;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 594
    :catch_1
    move-exception v1

    .line 595
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 598
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "[DmcMusicPlayer]"

    const-string v4, "case NOTIFY_UPPER:...mNotify is null??!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
