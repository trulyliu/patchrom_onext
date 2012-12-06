.class Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$4;
.super Ljava/lang/Object;
.source "DmpMusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1955
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$4;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 1957
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "OnCompletionListener...onCompletion()...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$4;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3000(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1965
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$4;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3100(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1966
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$4;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3100(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1967
    return-void
.end method
