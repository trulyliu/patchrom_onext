.class Lcom/htc/music/MediaPlaybackService$MultiPlayer;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentMediaPlayer:Landroid/media/MediaPlayer;

.field private mHandler:Landroid/os/Handler;

.field private mHasValidRights:Z

.field private mIsInitialized:Z

.field private mNextMediaPlayer:Landroid/media/MediaPlayer;

.field private mVolume:F

.field preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 1
    .parameter

    .prologue
    .line 5866
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5857
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    .line 5860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHasValidRights:Z

    .line 5864
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mVolume:F

    .line 6050
    new-instance v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;-><init>(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 6074
    new-instance v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;-><init>(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 6080
    new-instance v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;-><init>(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 5867
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setWakeMode(Landroid/media/MediaPlayer;)V

    .line 5868
    return-void
.end method

.method static synthetic access$9200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5856
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/htc/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5856
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5856
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5856
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9502(Lcom/htc/music/MediaPlaybackService$MultiPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5856
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return p1
.end method

.method private setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;)Z
    .locals 5
    .parameter "player"
    .parameter "path"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5917
    if-nez p1, :cond_0

    .line 5918
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "setDataSource player is null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5956
    :goto_0
    return v1

    .line 5923
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHasValidRights:Z

    .line 5926
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 5927
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 5928
    const-string v3, "content://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5929
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 5933
    :goto_1
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "setDataSource finished"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5934
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 5935
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "prepare"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5936
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 5937
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "prepare finished"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5954
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5955
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    move v1, v2

    .line 5956
    goto :goto_0

    .line 5931
    :cond_1
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 5938
    :catch_0
    move-exception v0

    .line 5940
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 5941
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5943
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 5945
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 5946
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5948
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 5950
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5951
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource path= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public duration()J
    .locals 5

    .prologue
    .line 6132
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-long v0, v2

    .line 6133
    .local v0, duration:J
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaPlayer.getDuration(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6134
    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 6165
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 6161
    iget v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mVolume:F

    return v0
.end method

.method public hasValidRights()Z
    .locals 1

    .prologue
    .line 5987
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHasValidRights:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5992
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 6028
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 6022
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6023
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 6025
    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 6138
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 6012
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 6014
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 6015
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 6017
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 6018
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 6019
    :cond_1
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "whereto"

    .prologue
    .line 6142
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 6143
    return-wide p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 5908
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5909
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5910
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 5911
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 5913
    :cond_0
    return-void
.end method

.method public setDataSourceAsync(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 5882
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 5883
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 5884
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 5885
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 5886
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5901
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5902
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 5904
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5905
    :goto_0
    return-void

    .line 5887
    :catch_0
    move-exception v0

    .line 5889
    .local v0, ex:Ljava/io/IOException;
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0

    .line 5891
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 5893
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0

    .line 5895
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 5897
    .local v0, ex:Ljava/lang/Exception;
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5898
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSourceAsync path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 6032
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 6033
    return-void
.end method

.method public setNextDataSource(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 5960
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 5961
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 5962
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 5963
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 5965
    :cond_0
    if-nez p1, :cond_1

    .line 5983
    :goto_0
    return-void

    .line 5968
    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 5969
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setWakeMode(Landroid/media/MediaPlayer;)V

    .line 5971
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 5973
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNextDataSource path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5975
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5976
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 5980
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 5981
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 3
    .parameter "vol"

    .prologue
    .line 6147
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v1

    .line 6148
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 6149
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 6153
    :goto_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 6154
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 6156
    :cond_0
    iput p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mVolume:F

    .line 6157
    monitor-exit v1

    .line 6158
    return-void

    .line 6151
    :cond_1
    const-string v0, "[MediaPlaybackService]"

    const-string v2, "setVolume, mCurrentMediaPlayer is null!"

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWakeMode(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter "mediaPlayer"

    .prologue
    const/4 v3, 0x1

    .line 5871
    const-string v2, "true"

    .line 5872
    .local v2, trueString:Ljava/lang/String;
    const-string v4, "lpa.releaselock"

    invoke-static {v4}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5873
    .local v0, lpaReleaseLock:Ljava/lang/String;
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lpaReleaseLock = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5874
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    .line 5875
    .local v1, needSetWakeMode:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 5876
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {p1, v4, v3}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 5878
    :cond_0
    return-void

    .line 5874
    .end local v1           #needSetWakeMode:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 5996
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 5998
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->handleRecentPlayedSong()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$3300(Lcom/htc/music/MediaPlaybackService;)V

    .line 5999
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->printATSPlayMusicLog()V

    .line 6000
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 6003
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "MultiPlayer.stop()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6004
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 6005
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 6006
    return-void
.end method

.method public updateMediaPlayer()V
    .locals 4

    .prologue
    .line 6036
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 6037
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    .line 6038
    .local v0, tempMediaPlayer:Landroid/media/MediaPlayer;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    .line 6039
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 6040
    if-eqz v0, :cond_0

    .line 6041
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 6048
    .end local v0           #tempMediaPlayer:Landroid/media/MediaPlayer;
    :goto_0
    return-void

    .line 6043
    .restart local v0       #tempMediaPlayer:Landroid/media/MediaPlayer;
    :cond_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "updateMediaPlayer, tempMediaPlayer is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6046
    .end local v0           #tempMediaPlayer:Landroid/media/MediaPlayer;
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMediaPlayer, mCurrentMediaPlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNextMediaPlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
