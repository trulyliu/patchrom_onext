.class Lcom/htc/music/HtcMusic$13;
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
    .line 1355
    iput-object p1, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1357
    iget-object v4, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 1388
    :goto_0
    return-void

    .line 1360
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$2400(Lcom/htc/music/HtcMusic;)I

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v4, :cond_1

    move v2, v1

    .line 1361
    .local v2, skipPrev:Z
    :goto_1
    if-nez v2, :cond_4

    .line 1362
    const-string v4, "[HtcMusic]"

    const-string v5, "click prev"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v4, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v5, -0x1

    #setter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static {v4, v5}, Lcom/htc/music/HtcMusic;->access$2402(Lcom/htc/music/HtcMusic;I)I

    .line 1364
    iget-object v4, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->startAnimationTimer()V
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$2500(Lcom/htc/music/HtcMusic;)V

    .line 1365
    iget-object v4, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v4}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1369
    .local v1, isMirrorPlayOnTV:Z
    :goto_2
    if-eqz v1, :cond_3

    .line 1370
    const-string v3, "[HtcMusic]"

    const-string v4, "mPrevListener TV is on"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v3, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->pauseAsync()V

    .line 1372
    iget-object v3, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->prevAsync()V

    .line 1373
    iget-object v3, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$300(Lcom/htc/music/HtcMusic;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1385
    .end local v1           #isMirrorPlayOnTV:Z
    .end local v2           #skipPrev:Z
    :catch_0
    move-exception v0

    .line 1386
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_1
    move v2, v3

    .line 1360
    goto :goto_1

    .restart local v2       #skipPrev:Z
    :cond_2
    move v1, v3

    .line 1365
    goto :goto_2

    .line 1376
    .restart local v1       #isMirrorPlayOnTV:Z
    :cond_3
    :try_start_1
    const-string v3, "[HtcMusic]"

    const-string v4, "mPrevListener TV is off"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v3, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->prevAsync()V

    .line 1379
    iget-object v3, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    goto :goto_0

    .line 1382
    .end local v1           #isMirrorPlayOnTV:Z
    :cond_4
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip Prev Current mGliderState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

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
