.class Lcom/htc/music/HtcMusic$20;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 3387
    iput-object p1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 3389
    const-string v1, "[HtcMusic]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected classname= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,IBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3392
    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$3000(Lcom/htc/music/HtcMusic;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3393
    const-string v1, "[HtcMusic]"

    const-string v2, "HtcMusic onServiceConnected, but mNeedBindSerive is false!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3395
    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 3415
    :goto_0
    return-void

    .line 3400
    :cond_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v2, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z
    invoke-static {v1, v2}, Lcom/htc/music/HtcMusic;->access$3102(Lcom/htc/music/HtcMusic;Z)Z

    .line 3401
    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 3402
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 3403
    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    sput-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 3406
    :cond_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$3200(Lcom/htc/music/HtcMusic;)V

    .line 3409
    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$3300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/widget/LyricsView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3410
    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->getLyricsForCurrentMusic()Lcom/htc/music/lyrics/Lyrics;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$3400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    .line 3411
    .local v0, lyrics:Lcom/htc/music/lyrics/Lyrics;
    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->openLyrics(Lcom/htc/music/lyrics/Lyrics;)Z
    invoke-static {v1, v0}, Lcom/htc/music/HtcMusic;->access$3500(Lcom/htc/music/HtcMusic;Lcom/htc/music/lyrics/Lyrics;)Z

    .line 3414
    .end local v0           #lyrics:Lcom/htc/music/lyrics/Lyrics;
    :cond_2
    const-string v1, "[HtcMusic]"

    const-string v2, "onServiceConnected finished"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 3418
    const-string v0, "[HtcMusic]"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    return-void
.end method
