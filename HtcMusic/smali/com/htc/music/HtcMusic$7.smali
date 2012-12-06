.class Lcom/htc/music/HtcMusic$7;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 1128
    iput-object p1, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "arg0"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 1146
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDuration:J
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)J

    move-result-wide v1

    int-to-long v3, p2

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$1102(Lcom/htc/music/HtcMusic;J)J

    .line 1163
    iget-object v0, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v0, p2}, Lcom/htc/music/HtcMusic;->access$902(Lcom/htc/music/HtcMusic;I)I

    .line 1170
    iget-object v0, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    .line 1172
    iget-object v0, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    const-wide/16 v1, -0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$1102(Lcom/htc/music/HtcMusic;J)J

    .line 1175
    iget-object v0, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    #setter for: Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$802(Lcom/htc/music/HtcMusic;J)J

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$802(Lcom/htc/music/HtcMusic;J)J

    .line 1133
    iget-object v0, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, -0x1

    #setter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$902(Lcom/htc/music/HtcMusic;I)I

    .line 1137
    iget-object v0, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1141
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .parameter "bar"

    .prologue
    .line 1183
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 1184
    .local v1, progress:I
    iget-object v3, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_0

    .line 1185
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStopTrackingTouch()...mService is null, mProgressPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$900(Lcom/htc/music/HtcMusic;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    :goto_0
    return-void

    .line 1196
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDuration:J
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)J

    move-result-wide v4

    int-to-long v6, v1

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v3, v4, v5}, Lcom/htc/music/HtcMusic;->access$1102(Lcom/htc/music/HtcMusic;J)J

    .line 1197
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStopTrackingTouch seek to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$1100(Lcom/htc/music/HtcMusic;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v3, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1100(Lcom/htc/music/HtcMusic;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 1199
    iget-object v3, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "playing"

    :goto_1
    iget-object v5, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v5, v5, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v5

    invoke-static {v4, v3, v5, v6}, Lcom/htc/music/util/MusicUtils;->broadcastPlaybackStatus(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    :goto_2
    iget-object v3, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    const-wide/16 v4, -0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v3, v4, v5}, Lcom/htc/music/HtcMusic;->access$1102(Lcom/htc/music/HtcMusic;J)J

    .line 1211
    const/4 v2, 0x0

    .line 1212
    .local v2, repeatUpdate:Z
    iget-object v3, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_1

    .line 1214
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1218
    :cond_1
    :goto_3
    if-eqz v2, :cond_4

    .line 1219
    iget-object v3, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1220
    iget-object v3, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1199
    .end local v2           #repeatUpdate:Z
    :cond_2
    :try_start_2
    const-string v3, "paused"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1223
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #repeatUpdate:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    goto/16 :goto_0

    .line 1226
    :cond_4
    iget-object v3, p0, Lcom/htc/music/HtcMusic$7;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    goto/16 :goto_0

    .line 1215
    :catch_1
    move-exception v3

    goto :goto_3
.end method
