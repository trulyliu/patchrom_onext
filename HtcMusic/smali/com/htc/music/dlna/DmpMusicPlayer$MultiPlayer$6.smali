.class Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;
.super Ljava/lang/Object;
.source "DmpMusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 2007
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 12
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v2, 0xa

    const/4 v11, 0x3

    const-wide/16 v9, 0x7d0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2009
    const-string v4, "[DmpMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<< Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    sparse-switch p2, :sswitch_data_0

    .line 2102
    const-string v4, "[DmpMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MultiPlayer...unhandled error....what = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v4, v7}, Lcom/htc/music/dlna/DmpMusicPlayer;->stop(Z)V

    .line 2104
    :cond_0
    :goto_0
    return v7

    .line 2013
    :sswitch_0
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "MultiPlayer...MEDIA_ERROR_SERVER_DIED...."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z
    invoke-static {v4, v8}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3202(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;Z)Z

    .line 2015
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3800(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2016
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "case MediaPlayer.MEDIA_ERROR_SERVER_DIED: call mMediaPlayer.release()..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3800(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 2018
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    const/4 v5, 0x0

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4, v5}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3802(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2025
    :cond_1
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$800(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    move-result-object v4

    sget-object v5, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    if-ne v4, v5, :cond_0

    .line 2026
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3100(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3100(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2044
    :sswitch_1
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z
    invoke-static {v4, v8}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3202(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;Z)Z

    .line 2045
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3800(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2046
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "case 1: call mMediaPlayer.release()..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3800(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 2048
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    const/4 v5, 0x0

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4, v5}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3802(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2051
    :cond_2
    const-string v4, "[DmpMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "errorListener...mCurrentState => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v6, v6, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    invoke-static {v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$800(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$800(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    move-result-object v4

    sget-object v5, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    if-ne v4, v5, :cond_0

    .line 2055
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3100(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2056
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3100(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2057
    .local v3, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2058
    .local v0, data:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$700(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2059
    .local v1, errorReason:Ljava/lang/String;
    const-string v4, "error"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2061
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3100(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2064
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #errorReason:Ljava/lang/String;
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2065
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3900(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v4

    if-le v2, v4, :cond_4

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3900(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v2

    .line 2066
    .local v2, maxTimes:I
    :cond_4
    const-string v4, "[DmpMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxTimes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPlayListLen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v6, v6, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I
    invoke-static {v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3900(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4008(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    .line 2069
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3900(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v4

    if-le v4, v7, :cond_5

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayerErrorCount:I
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4000(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v4

    if-ge v4, v2, :cond_5

    .line 2071
    const-string v4, "[DmpMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try to go to next song....mPlayerErrorCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v6, v6, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayerErrorCount:I
    invoke-static {v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4000(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    move-result-object v4

    const/16 v5, 0x2b00

    invoke-virtual {v4, v5, v9, v10}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2075
    :cond_5
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "errorListener...maxTimes is up..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v4, v7}, Lcom/htc/music/dlna/DmpMusicPlayer;->stop(Z)V

    goto/16 :goto_0

    .line 2080
    .end local v2           #maxTimes:I
    :cond_6
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "errorListener...fail to prepare currnet song and current state is pause. Do nothing!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2096
    :sswitch_2
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mIsInitialized:Z
    invoke-static {v4, v8}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3202(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;Z)Z

    .line 2097
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3800(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 2098
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3100(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3100(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$6;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$3100(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2011
    nop

    :sswitch_data_0
    .sparse-switch
        -0x26 -> :sswitch_2
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
