.class Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;
.super Ljava/lang/Object;
.source "DmpMusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 1970
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter "mp"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1972
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!!! onPrepared()...prepare complete... !!!!!, mIsInitialized = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z
    invoke-static {v5}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3200(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->initErrorRetryHandle()V
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3300(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    .line 1976
    const/4 v0, 0x0

    .line 1978
    .local v0, prepared:Z
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    monitor-enter v3

    .line 1979
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3200(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Z

    move-result v4

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsPrepared:Z
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3400(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 1980
    :goto_0
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    const/4 v5, 0x1

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsPrepared:Z
    invoke-static {v4, v5}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3402(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;Z)Z

    .line 1981
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1983
    if-eqz v0, :cond_3

    .line 1985
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mDefaultPos:J
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3500(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1986
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepared()...prepare complete...seek: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mDefaultPos:J
    invoke-static {v5}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3500(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mDefaultPos:J
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3500(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->seek(J)J

    .line 1990
    :cond_0
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mIsPlayPressed:Z
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3600(Lcom/htc/music/dlna/DmpMusicPlayer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1991
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "onPrepared()...prepare complete...mMediaPlayer.start()"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mIsSupposedToBePlaying:Z
    invoke-static {v3, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3702(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    .line 1995
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2800(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2700(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1996
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v1, v1, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPausedByTransientLossOfFocus:Z
    invoke-static {v1, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2502(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    .line 1997
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1998
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v1, v1, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const-string v2, "com.htc.music.plugin.statechanged"

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1700(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)V

    .line 2000
    :cond_1
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v1, v1, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const-string v2, "com.htc.music.plugin.metachanged"

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1700(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)V

    .line 2004
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1979
    goto/16 :goto_0

    .line 1981
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2003
    :cond_3
    const-string v1, "[DmpMusicPlayer]"

    const-string v2, "!!!!! onPrepared()...prepare complete...Do nothing...!!!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
