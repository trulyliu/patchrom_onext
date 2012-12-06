.class Lcom/htc/music/MediaPlaybackService$LocalPlayer;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalPlayer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method private constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 6172
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6172
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 6172
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6172
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pauseImpl()V

    return-void
.end method

.method static synthetic access$7600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6172
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$7700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 6172
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$7800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6172
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V

    return-void
.end method

.method static synthetic access$8600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6172
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->playImpl(I)V

    return-void
.end method

.method static synthetic access$8700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6172
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pauseImpl(Z)V

    return-void
.end method

.method static synthetic access$8800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6172
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->prevImpl(Z)V

    return-void
.end method

.method static synthetic access$8900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;ZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 6172
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->nextImpl(ZZI)V

    return-void
.end method

.method static synthetic access$9000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 6172
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method static synthetic access$9100(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 6172
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method private duration()J
    .locals 2

    .prologue
    .line 6429
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6430
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 6432
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getAudioSessionId()I
    .locals 1

    .prologue
    .line 6449
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6450
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v0

    .line 6452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlaying()Z
    .locals 1

    .prologue
    .line 6445
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$4100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    return v0
.end method

.method private nextImpl(ZZI)V
    .locals 4
    .parameter "force"
    .parameter "playAnim"
    .parameter "cookie"

    .prologue
    const/4 v3, 0x2

    .line 6200
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$9700(Lcom/htc/music/MediaPlaybackService;)V

    .line 6201
    monitor-enter p0

    .line 6202
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 6203
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "No play queue"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6204
    monitor-exit p0

    .line 6274
    :goto_0
    return-void

    .line 6215
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 6216
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$10100(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 6218
    :cond_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$10100(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 6219
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$10100(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 6222
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$2400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_9

    .line 6224
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4300(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-nez v1, :cond_7

    if-nez p1, :cond_7

    .line 6226
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$9800(Lcom/htc/music/MediaPlaybackService;)V

    .line 6227
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$5700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6228
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Track end. Set mPausedByTransientLossOfFocus = false;"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6229
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$5702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6232
    :cond_3
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6233
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6234
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6236
    :cond_4
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.playbackcomplete"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6237
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$1802(Lcom/htc/music/MediaPlaybackService;I)I

    .line 6247
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$10000(Lcom/htc/music/MediaPlaybackService;)V

    .line 6249
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V

    .line 6251
    if-eqz p2, :cond_a

    .line 6252
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextImpl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6253
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6254
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    #calls: Lcom/htc/music/MediaPlaybackService;->playNextArtAnimation(II)V
    invoke-static {v1, v2, p3}, Lcom/htc/music/MediaPlaybackService;->access$3100(Lcom/htc/music/MediaPlaybackService;II)V

    .line 6255
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext(I)V
    invoke-static {v1, p3}, Lcom/htc/music/MediaPlaybackService;->access$10200(Lcom/htc/music/MediaPlaybackService;I)V

    .line 6256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6257
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "animationtype"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6258
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/htc/music/MediaPlaybackService;->access$3200(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6259
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next mPlayOnNextPrev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6260
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6261
    invoke-direct {p0, p3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->playImpl(I)V

    .line 6273
    :cond_6
    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    .end local v0           #bundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6239
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4300(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-eq v1, v3, :cond_8

    if-eqz p1, :cond_5

    .line 6240
    :cond_8
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$1802(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_1

    .line 6243
    :cond_9
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1808(Lcom/htc/music/MediaPlaybackService;)I

    goto/16 :goto_1

    .line 6264
    :cond_a
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4200(Lcom/htc/music/MediaPlaybackService;)V

    .line 6265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6266
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "animationtype"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6267
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/htc/music/MediaPlaybackService;->access$3200(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6268
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.changeart"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6269
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6270
    invoke-direct {p0, p3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->playImpl(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private pauseImpl()V
    .locals 1

    .prologue
    .line 6175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pauseImpl(Z)V

    .line 6176
    return-void
.end method

.method private pauseImpl(Z)V
    .locals 4
    .parameter "notUpdateUi"

    .prologue
    .line 6179
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9700(Lcom/htc/music/MediaPlaybackService;)V

    .line 6180
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v1

    .line 6181
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6182
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$4402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6183
    const-string v0, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause() mPlayOnNextPrev= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6184
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 6186
    if-nez p1, :cond_0

    .line 6187
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9800(Lcom/htc/music/MediaPlaybackService;)V

    .line 6188
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6189
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$9902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6190
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6193
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10000(Lcom/htc/music/MediaPlaybackService;)V

    .line 6195
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6196
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->printATSPauseMusictoStopLog()V

    .line 6197
    return-void

    .line 6195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private playImpl(I)V
    .locals 8
    .parameter "cookie"

    .prologue
    const/16 v7, 0x2715

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 6296
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "!!!!! @@@@@ play() - 1"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6298
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$10500(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$10400(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 6300
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$5702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6302
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$9700(Lcom/htc/music/MediaPlaybackService;)V

    .line 6303
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6304
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "call play() and mediaplayer is initialized"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6308
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$6600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 6309
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$6602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6310
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 6313
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$10600(Lcom/htc/music/MediaPlaybackService;)V

    .line 6316
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$2600(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$4500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6317
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Check if the DRM File to play is legal"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6318
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$2600(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    #calls: Lcom/htc/music/MediaPlaybackService;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    invoke-static {v4, v5}, Lcom/htc/music/MediaPlaybackService;->access$10700(Lcom/htc/music/MediaPlaybackService;Landroid/net/Uri;)Z

    move-result v0

    .line 6319
    .local v0, isLegal:Z
    if-nez v0, :cond_3

    .line 6320
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Cannot play drm file because the rights has been expired."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6321
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v5, 0x7f060080

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v4, v5, v1}, Lcom/htc/music/MediaPlaybackService;->access$9600(Lcom/htc/music/MediaPlaybackService;II)V

    .line 6322
    const/16 v2, 0xa

    .line 6323
    .local v2, min:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-le v4, v3, :cond_1

    .line 6324
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    .line 6325
    :cond_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$10808(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-ge v4, v2, :cond_2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-le v4, v3, :cond_2

    .line 6326
    invoke-direct {p0, v1, v3, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->nextImpl(ZZI)V

    .line 6368
    .end local v0           #isLegal:Z
    .end local v2           #min:I
    :cond_2
    :goto_0
    return-void

    .line 6330
    .restart local v0       #isLegal:Z
    :cond_3
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Legal rights to play drm file"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6331
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$4502(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6332
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I
    invoke-static {v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$10802(Lcom/htc/music/MediaPlaybackService;I)I

    .line 6335
    .end local v0           #isLegal:Z
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$4402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6336
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$4100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v3

    .line 6337
    .local v1, isStateChange:Z
    :cond_5
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6338
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play() mPlayOnNextPrev= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6340
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->start()V

    .line 6343
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->updateNotification()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3600(Lcom/htc/music/MediaPlaybackService;)V

    .line 6345
    if-eqz v1, :cond_2

    .line 6347
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 6349
    .end local v1           #isStateChange:Z
    :cond_6
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v3

    if-gtz v3, :cond_7

    .line 6353
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play, mPlayListLen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$2400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6359
    :cond_7
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v4, 0x7f060054

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v3, v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$9600(Lcom/htc/music/MediaPlaybackService;II)V

    .line 6360
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$10900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6361
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "File uneixsted. refresh playlist again"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6362
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6363
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 6364
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private position()J
    .locals 2

    .prologue
    .line 6422
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6423
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 6425
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private prevImpl(Z)V
    .locals 7
    .parameter "playAnim"

    .prologue
    .line 6371
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$9700(Lcom/htc/music/MediaPlaybackService;)V

    .line 6372
    monitor-enter p0

    .line 6373
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 6374
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "skip_prev"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6375
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J

    .line 6376
    monitor-exit p0

    .line 6419
    :goto_0
    return-void

    .line 6383
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v3

    if-lez v3, :cond_2

    .line 6384
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1810(Lcom/htc/music/MediaPlaybackService;)I

    .line 6389
    :goto_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$10000(Lcom/htc/music/MediaPlaybackService;)V

    .line 6390
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V

    .line 6393
    if-eqz p1, :cond_3

    .line 6394
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.rotateleft"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6395
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "current_playing_pos"

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6396
    const-string v3, "playlist_len"

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$11000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6397
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Landroid/content/Intent;)V
    invoke-static {v3, v2}, Lcom/htc/music/MediaPlaybackService;->access$11100(Lcom/htc/music/MediaPlaybackService;Landroid/content/Intent;)V

    .line 6398
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4200(Lcom/htc/music/MediaPlaybackService;)V

    .line 6399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6400
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "animationtype"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6401
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v3, v4, v0}, Lcom/htc/music/MediaPlaybackService;->access$3200(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6402
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6403
    const/4 v1, -0x1

    .line 6404
    .local v1, cookie:I
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->playImpl(I)V

    .line 6418
    .end local v1           #cookie:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :goto_2
    monitor-exit p0

    goto :goto_0

    .end local v0           #bundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 6386
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$1802(Lcom/htc/music/MediaPlaybackService;I)I

    goto :goto_1

    .line 6407
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4200(Lcom/htc/music/MediaPlaybackService;)V

    .line 6408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6409
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v3, "animationtype"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6410
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v3, v4, v0}, Lcom/htc/music/MediaPlaybackService;->access$3200(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6411
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "com.htc.music.changeart"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6412
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6413
    const/4 v1, -0x1

    .line 6414
    .restart local v1       #cookie:I
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->playImpl(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 6436
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6437
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 6438
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide p1

    .line 6439
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 6441
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private stop(Z)V
    .locals 2
    .parameter "remove_status_icon"

    .prologue
    const/4 v1, 0x0

    .line 6277
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9700(Lcom/htc/music/MediaPlaybackService;)V

    .line 6279
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6280
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 6282
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$2602(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 6283
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mNextFileToPlay:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 6284
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10300(Lcom/htc/music/MediaPlaybackService;)V

    .line 6285
    if-eqz p1, :cond_1

    .line 6286
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9800(Lcom/htc/music/MediaPlaybackService;)V

    .line 6290
    :cond_1
    if-eqz p1, :cond_2

    .line 6291
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6293
    :cond_2
    return-void
.end method
