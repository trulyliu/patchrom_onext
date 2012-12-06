.class Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 6080
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 11
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const-wide/16 v9, 0x7d0

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6082
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onError: "

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

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6083
    sparse-switch p2, :sswitch_data_0

    .line 6122
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v4, 0x7f060054

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v2, v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$9600(Lcom/htc/music/MediaPlaybackService;II)V

    .line 6123
    const-string v2, "[MediaPlaybackService]"

    const-string v4, "unhandled error"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v2, v3

    .line 6127
    :cond_0
    :goto_1
    return v2

    .line 6085
    :sswitch_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 6086
    .local v0, status:Landroid/app/Notification;
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v4, v2, v0}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 6088
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #setter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9502(Lcom/htc/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 6089
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v3

    .line 6091
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v5, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v4, v5}, Lcom/htc/music/MediaPlaybackService;->access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6093
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 6098
    .local v1, tempMediaPlayer:Landroid/media/MediaPlayer;
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4, v5}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9202(Lcom/htc/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 6099
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setWakeMode(Landroid/media/MediaPlayer;)V

    .line 6101
    if-eqz v1, :cond_1

    .line 6102
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 6105
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6106
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 6104
    :cond_1
    :try_start_1
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Server died, tempMediaPlayer is null!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6105
    .end local v1           #tempMediaPlayer:Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 6109
    .end local v0           #status:Landroid/app/Notification;
    :sswitch_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6110
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 6112
    :cond_2
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #setter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9502(Lcom/htc/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 6113
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 6114
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 6118
    :sswitch_2
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v5, 0x7f060050

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v4, v5, v2}, Lcom/htc/music/MediaPlaybackService;->access$9600(Lcom/htc/music/MediaPlaybackService;II)V

    goto/16 :goto_0

    .line 6083
    :sswitch_data_0
    .sparse-switch
        -0x26 -> :sswitch_1
        0x1 -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
