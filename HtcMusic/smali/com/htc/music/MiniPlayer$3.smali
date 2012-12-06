.class Lcom/htc/music/MiniPlayer$3;
.super Ljava/lang/Object;
.source "MiniPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MiniPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "classname"
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 423
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected classname= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,IBinder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 426
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v2, v2, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    sput-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z
    invoke-static {v2}, Lcom/htc/music/MiniPlayer;->access$300(Lcom/htc/music/MiniPlayer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    const-string v2, "[MiniPlayer]"

    const-string v3, "mIsServiceBinded already be true when service connected!! somebody could call bind twice!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    const/4 v3, 0x1

    #setter for: Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z
    invoke-static {v2, v3}, Lcom/htc/music/MiniPlayer;->access$302(Lcom/htc/music/MiniPlayer;Z)Z

    .line 435
    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->isReleased:Z
    invoke-static {v2}, Lcom/htc/music/MiniPlayer;->access$400(Lcom/htc/music/MiniPlayer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MiniPlayer;->unBindMediaPlayer()V

    .line 439
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->loadPreferences:Z
    invoke-static {v2}, Lcom/htc/music/MiniPlayer;->access$500(Lcom/htc/music/MiniPlayer;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v2, v2, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v2, v2, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 440
    const-string v2, "[MiniPlayer]"

    const-string v3, "[onServiceConnected] loadPreferences && !mService.isPluginMode()."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    .line 442
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    .line 443
    .local v1, messageQueue:Landroid/os/MessageQueue;
    if-eqz v1, :cond_3

    .line 444
    new-instance v2, Lcom/htc/music/MiniPlayer$3$1;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$3$1;-><init>(Lcom/htc/music/MiniPlayer$3;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1           #messageQueue:Landroid/os/MessageQueue;
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    #setter for: Lcom/htc/music/MiniPlayer;->loadPreferences:Z
    invoke-static {v2, v5}, Lcom/htc/music/MiniPlayer;->access$502(Lcom/htc/music/MiniPlayer;Z)Z

    .line 462
    :goto_1
    const-string v2, "[MiniPlayer]"

    const-string v3, "onServiceConnected finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void

    .line 453
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MiniPlayer;->refreshInfo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "[MiniPlayer]"

    const-string v3, "[onServiceConnected] mService.isPluginMode()."

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MiniPlayer;->refreshInfo()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    iget-object v2, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    #setter for: Lcom/htc/music/MiniPlayer;->loadPreferences:Z
    invoke-static {v2, v5}, Lcom/htc/music/MiniPlayer;->access$502(Lcom/htc/music/MiniPlayer;Z)Z

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    #setter for: Lcom/htc/music/MiniPlayer;->loadPreferences:Z
    invoke-static {v3, v5}, Lcom/htc/music/MiniPlayer;->access$502(Lcom/htc/music/MiniPlayer;Z)Z

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 466
    const-string v0, "[MiniPlayer]"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 468
    return-void
.end method
