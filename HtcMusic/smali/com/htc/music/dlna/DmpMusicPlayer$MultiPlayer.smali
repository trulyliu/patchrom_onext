.class Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
.super Ljava/lang/Object;
.source "DmpMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmpMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field bufferUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field infoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurPercentage:F

.field private mDefaultPos:J

.field private mDuration:J

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mIsPrepared:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSessionID:I

.field preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

.field seekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field final synthetic this$0:Lcom/htc/music/dlna/DmpMusicPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/music/dlna/DmpMusicPlayer;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1775
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1748
    iput-boolean v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    .line 1749
    iput-boolean v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsPrepared:Z

    .line 1752
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mSessionID:I

    .line 1753
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mDefaultPos:J

    .line 1930
    new-instance v0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$1;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1940
    new-instance v0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$2;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->seekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1947
    new-instance v0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$3;

    invoke-direct {v0, p0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$3;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->bufferUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1955
    new-instance v0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$4;

    invoke-direct {v0, p0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$4;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1970
    new-instance v0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;

    invoke-direct {v0, p0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$5;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2007
    new-instance v0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;

    invoke-direct {v0, p0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1778
    return-void
.end method

.method static synthetic access$2902(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1745
    iput p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mCurPercentage:F

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1745
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1745
    iput-boolean p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1745
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsPrepared:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1745
    iput-boolean p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1745
    iget-wide v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mDefaultPos:J

    return-wide v0
.end method

.method static synthetic access$3800(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private initNewMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1756
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1758
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "initNewMediaPlayer()...call mMediaPlayer.release()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1760
    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1763
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1764
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$700(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1766
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNewMediaPlayer()... mSessionID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mSessionID:I

    if-gtz v0, :cond_1

    .line 1768
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mSessionID:I

    .line 1773
    :goto_0
    return-void

    .line 1771
    :cond_1
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mSessionID:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 1782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    .line 1783
    return-void
.end method

.method public duration()J
    .locals 4

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 2113
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "duration()...mMediaPlayer is null..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    const-wide/16 v0, -0x1

    .line 2119
    :goto_0
    return-wide v0

    .line 2117
    :cond_0
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mDuration:J

    .line 2118
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration()...mDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    iget-wide v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mDuration:J

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2156
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mSessionID:I

    return v0
.end method

.method public getPercentage()F
    .locals 1

    .prologue
    .line 2152
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mCurPercentage:F

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1850
    monitor-enter p0

    .line 1851
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsPrepared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1852
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 1919
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "isPlaying()...mMediaPlayer is null!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    const/4 v0, 0x0

    .line 1923
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1915
    :goto_0
    return-void

    .line 1913
    :cond_0
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "pause()...mMediaPlayer is null!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public position()J
    .locals 4

    .prologue
    .line 2123
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 2124
    const-string v2, "[DmpMusicPlayer]"

    const-string v3, "position()...mMediaPlayer is null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    const-wide/16 v0, -0x1

    .line 2129
    :goto_0
    return-wide v0

    .line 2128
    :cond_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v0, v2

    .line 2129
    .local v0, currentPos:J
    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 1896
    invoke-virtual {p0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->stop()V

    .line 1897
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1898
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "II internal multiplayer...release()... calling mMediaPlayer.release();"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1900
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1905
    :goto_0
    return-void

    .line 1903
    :cond_0
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "release()...mMediaPlayer is null!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seek(J)J
    .locals 3
    .parameter "whereto"

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2139
    :goto_0
    return-wide p1

    .line 2137
    :cond_0
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")...mMediaPlayer is null..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataSourceAsync(Ljava/lang/String;J)V
    .locals 8
    .parameter "path"
    .parameter "defaultPos"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    .line 1786
    move-object v2, p1

    .line 1788
    .local v2, uriPath:Ljava/lang/String;
    monitor-enter p0

    .line 1789
    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    .line 1790
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsPrepared:Z

    .line 1791
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1794
    cmp-long v5, p2, v3

    if-lez v5, :cond_0

    .end local p2
    :goto_0
    :try_start_1
    iput-wide p2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mDefaultPos:J

    .line 1795
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetDataSourceAsync()... uriPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDefaultPos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mDefaultPos:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mCurPercentage:F

    .line 1798
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mDuration:J

    .line 1800
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->initNewMediaPlayer()V

    .line 1802
    if-eqz v2, :cond_1

    const-string v3, "htc-dlna"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1803
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataSourceAsync(), can NOT seek uriPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,then replace the prefix to http."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string v3, "htc-dlna"

    const-string v4, "http"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1805
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update uriPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1808
    .local v1, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "x-htc-dlna"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    const-string v3, "x-htc-dlna-byteseek"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$700(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 1816
    .end local v1           #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1817
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1818
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->bufferUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 1819
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1820
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1821
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->seekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 1822
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1823
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@@@@ prepareAsync() @@@@@ mIsInitialized = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1845
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    .line 1846
    :goto_2
    return-void

    .line 1791
    .restart local p2
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_0
    move-wide p2, v3

    .line 1794
    goto/16 :goto_0

    .line 1813
    .end local p2
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 1825
    :catch_0
    move-exception v0

    .line 1827
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "prepareAsync finished, IOException ex"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    iput-boolean v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    goto :goto_2

    .line 1830
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1832
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "prepareAsync finished, IllegalArgumentException ex"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    iput-boolean v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    goto :goto_2

    .line 1835
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1836
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "prepareAsync finished, IllegalStateException"

    invoke-static {v3, v4, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1837
    iput-boolean v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    goto :goto_2

    .line 1839
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 1841
    .local v0, ex:Ljava/lang/Exception;
    iput-boolean v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    .line 1842
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataSourceAsync path= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1927
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 1928
    return-void
.end method

.method public setVolume(F)V
    .locals 3
    .parameter "vol"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2149
    :goto_0
    return-void

    .line 2147
    :cond_0
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")...mMediaPlayer is null..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 1857
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 1859
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2800(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2700(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1860
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPausedByTransientLossOfFocus:Z
    invoke-static {v1, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2502(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    .line 1862
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    :goto_0
    return-void

    .line 1864
    :catch_0
    move-exception v0

    .line 1865
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "[DmpMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** start(), IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1870
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :cond_0
    const-string v1, "[DmpMusicPlayer]"

    const-string v2, "start()...mMediaPlayer is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1875
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 1876
    const-string v1, "[DmpMusicPlayer]"

    const-string v2, "II internal multiplayer... stop()...before calling mMediaPlayer.reset();"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1887
    :goto_0
    iput-boolean v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z

    .line 1888
    iput-boolean v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsPrepared:Z

    .line 1889
    return-void

    .line 1880
    :catch_0
    move-exception v0

    .line 1881
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[DmpMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "II stop(), Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1885
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v1, "[DmpMusicPlayer]"

    const-string v2, "stop()...mMediaPlayer is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
