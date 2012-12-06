.class Lcom/htc/music/HtcMusic$14;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1391
    iput-object p1, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1393
    iget-object v4, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 1428
    :goto_0
    return-void

    .line 1396
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$2400(Lcom/htc/music/HtcMusic;)I

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v4, :cond_3

    move v2, v1

    .line 1397
    .local v2, skipNext:Z
    :goto_1
    if-nez v2, :cond_6

    .line 1398
    const-string v4, "[HtcMusic]"

    const-string v5, "click next"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v4, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v5, -0x1

    #setter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static {v4, v5}, Lcom/htc/music/HtcMusic;->access$2402(Lcom/htc/music/HtcMusic;I)I

    .line 1400
    iget-object v4, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->startAnimationTimer()V
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$2500(Lcom/htc/music/HtcMusic;)V

    .line 1401
    iget-object v4, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1402
    iget-object v4, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x3a9c

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1403
    iget-object v4, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x3a9c

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1404
    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x3a9c

    const-wide/16 v6, 0x1770

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1407
    :cond_2
    iget-object v4, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v4}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1411
    .local v1, isMirrorPlayOnTV:Z
    :goto_2
    if-eqz v1, :cond_5

    .line 1412
    const-string v3, "[HtcMusic]"

    const-string v4, "mNextListener TV is on"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-object v3, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->pauseAsync()V

    .line 1414
    iget-object v3, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->nextAsync()V

    .line 1415
    iget-object v3, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$300(Lcom/htc/music/HtcMusic;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1425
    .end local v1           #isMirrorPlayOnTV:Z
    .end local v2           #skipNext:Z
    :catch_0
    move-exception v0

    .line 1426
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    move v2, v3

    .line 1396
    goto/16 :goto_1

    .restart local v2       #skipNext:Z
    :cond_4
    move v1, v3

    .line 1407
    goto :goto_2

    .line 1418
    .restart local v1       #isMirrorPlayOnTV:Z
    :cond_5
    :try_start_1
    const-string v3, "[HtcMusic]"

    const-string v4, "mNextListener TV is off"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    iget-object v3, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->nextAsync()V

    goto/16 :goto_0

    .line 1422
    .end local v1           #isMirrorPlayOnTV:Z
    :cond_6
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip next Current mGliderState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/HtcMusic$14;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$2400(Lcom/htc/music/HtcMusic;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
