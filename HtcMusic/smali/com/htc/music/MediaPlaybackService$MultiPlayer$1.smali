.class Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 6050
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v3, 0x1

    .line 6052
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9300(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6053
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6054
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v0

    const/16 v1, 0x2721

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 6071
    :goto_0
    return-void

    .line 6057
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Media player - onCompletion, mNonUiHandler is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6065
    :cond_1
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "acquire wake lock"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6066
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 6067
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z
    invoke-static {v0, v3}, Lcom/htc/music/MediaPlaybackService;->access$4602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6068
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6069
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
