.class Lcom/htc/music/HtcMusic$16;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 4
    .parameter "v"
    .parameter "howlong"
    .parameter "repcnt"

    .prologue
    .line 1466
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 1468
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1469
    const-string v2, "[HtcMusic]"

    const-string v3, "current is dmc or pushmode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    :goto_0
    return-void

    .line 1472
    :catch_0
    move-exception v0

    .line 1473
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "[HtcMusic]"

    const-string v3, "RemoteException in mFfwdListener onRepeat"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    if-nez p4, :cond_2

    .line 1479
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v3, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z
    invoke-static {v2, v3}, Lcom/htc/music/HtcMusic;->access$2802(Lcom/htc/music/HtcMusic;Z)Z

    .line 1480
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    const-class v3, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1482
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.music.musicservicecommand"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1483
    const-string v2, "command"

    const-string v3, "ffstart"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1485
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2, v1}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1492
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    goto :goto_0

    .line 1486
    :cond_2
    const/4 v2, -0x1

    if-ne p4, v2, :cond_1

    .line 1488
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    const-string v3, "ffstop"

    #calls: Lcom/htc/music/HtcMusic;->stopFFRWScan(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/HtcMusic;->access$2700(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V

    .line 1489
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v3, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z
    invoke-static {v2, v3}, Lcom/htc/music/HtcMusic;->access$2802(Lcom/htc/music/HtcMusic;Z)Z

    goto :goto_1
.end method
