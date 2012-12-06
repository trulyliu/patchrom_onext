.class Lcom/htc/music/dlna/DmpMusicPlayer$2;
.super Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.source "DmpMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmpMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/dlna/DmpMusicPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/dlna/DmpMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-direct {p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    .line 479
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$$$ albumArtDownloadedNotify()...serverID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    move-result-object v2

    const/16 v3, 0x2afd

    invoke-virtual {v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 482
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 483
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "adn_server"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v2, "adn_content"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v2, "adn_filepath"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 487
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 488
    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v2, 0x1

    .line 356
    .local v2, direction:I
    cmp-long v4, p5, p3

    if-gez v4, :cond_0

    .line 357
    const/4 v2, -0x1

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1100(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1200(Lcom/htc/music/dlna/DmpMusicPlayer;)J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDirection:I
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1300(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 361
    const-string v4, "[DmpMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ contentAddedNotify()...containerID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v4, "[DmpMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ contentAddedNotify()...direction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", startIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mStartIdx = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J
    invoke-static {v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1200(Lcom/htc/music/dlna/DmpMusicPlayer;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mTimePointToUpdateQueue:J
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1400(Lcom/htc/music/dlna/DmpMusicPlayer;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 365
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mTimePointToUpdateQueue:J
    invoke-static {v4, v5, v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1402(Lcom/htc/music/dlna/DmpMusicPlayer;J)J

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 367
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 369
    .local v0, currentTime:J
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mTimePointToUpdateQueue:J
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1400(Lcom/htc/music/dlna/DmpMusicPlayer;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 371
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "## > 10 seconds, Updating it.... begin"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mTimePointToUpdateQueue:J
    invoke-static {v4, v5, v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1402(Lcom/htc/music/dlna/DmpMusicPlayer;J)J

    .line 375
    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    monitor-enter v5

    .line 376
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1500(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 377
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "dms_content_id"

    iget-object v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 378
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 379
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const/4 v6, 0x0

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->reloadQueue(Z)V
    invoke-static {v4, v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1600(Lcom/htc/music/dlna/DmpMusicPlayer;Z)V

    .line 380
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const-string v6, "com.htc.music.plugin.metachanged"

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1700(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)V

    .line 381
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "## > 10 seconds, Updating it.... end"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 384
    :cond_3
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "## update too fast, ignore this time..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 6
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .parameter "isComplete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x1

    .line 404
    .local v0, direction:I
    cmp-long v2, p5, p3

    if-gez v2, :cond_0

    .line 405
    const/4 v0, -0x1

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1100(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1200(Lcom/htc/music/dlna/DmpMusicPlayer;)J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDirection:I
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1300(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 408
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@ contentBrowsingDoneNotify()...serverID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", containerID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@ contentBrowsingDoneNotify()...direction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStartIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1200(Lcom/htc/music/dlna/DmpMusicPlayer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    monitor-enter v3

    .line 415
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1500(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 416
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dms_content_id"

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    const-string v2, "endIdx"

    invoke-interface {v1, v2, p5, p6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 418
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 419
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J
    invoke-static {v2, p5, p6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1802(Lcom/htc/music/dlna/DmpMusicPlayer;J)J

    .line 421
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const/4 v4, 0x1

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->reloadQueue(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1600(Lcom/htc/music/dlna/DmpMusicPlayer;Z)V

    .line 422
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const-string v4, "com.htc.music.plugin.metachanged"

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1700(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)V

    .line 423
    monitor-exit v3

    .line 425
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void

    .line 423
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 3
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryContentID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1900(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    :cond_0
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&& contentBrowsingErrorNotify()...serverID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", containerID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&& -------------..errorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$700(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    sget-object v1, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$802(Lcom/htc/music/dlna/DmpMusicPlayer;Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->stop(Z)V

    .line 453
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryContentID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1902(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mMediaPlayerHandler:Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->sendEmptyMessage(I)Z

    .line 456
    :cond_1
    return-void

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    sget-object v1, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$802(Lcom/htc/music/dlna/DmpMusicPlayer;Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    goto :goto_0
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "uniqueID"
    .parameter "filePath"

    .prologue
    .line 342
    return-void
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 0
    .parameter "containerID"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 465
    return-void
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 494
    return-void
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "resID"
    .parameter "resReason"

    .prologue
    .line 495
    return-void
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 7
    .parameter "serverID"
    .parameter "contentID"
    .parameter "details"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, done:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 509
    :goto_0
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### getContentItemDetailsNotify #### serverID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", contentID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### query all done ?? => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cur serverID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cur contentID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 515
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryContentID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1900(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryContentID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1900(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 517
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryContentID:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1902(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 518
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 520
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "length"

    iget-wide v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 521
    const-string v3, "filename"

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v3, "title"

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v3, "artist"

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v3, "album"

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v3, "genre"

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v3, "composer"

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v3, "location"

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1500(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "dms_file_path"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "#$###### Content Details Begin ###"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ mQueryPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryPosition:I
    invoke-static {v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2100(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ contentDuration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ contentArtist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ contentAlbum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ contentGenre = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ contentComposer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ contentTitle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "#$###### Content Details End ###"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryPosition:I
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2100(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v4

    const-string v5, "com.htc.music.dlna.DmpMusicPlayer"

    invoke-interface {v3, v4, v2, v5}, Lcom/htc/music/IPluginIPCNotify;->onTrackDetailsUpdated(ILandroid/content/ContentValues;Ljava/lang/String;)V

    .line 567
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .line 504
    :catch_0
    move-exception v1

    .line 506
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 541
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "###### Content Details Begin ###"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# mPlayPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I
    invoke-static {v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2300(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentDuration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentArtist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentAlbum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentDate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentGenre = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentComposer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentTitle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "###### Content Details End ###"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$400(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-wide v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    iput-wide v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentDuration:J

    .line 553
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$400(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentArtist:Ljava/lang/String;

    .line 554
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$400(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    .line 555
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$400(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentDate:Ljava/lang/String;

    .line 556
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$400(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentPath:Ljava/lang/String;

    .line 557
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$400(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->fileName:Ljava/lang/String;

    .line 558
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$400(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 559
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$400(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 560
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$400(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentTitle:Ljava/lang/String;

    .line 562
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const-string v4, "com.htc.music.plugin.metachanged"

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1700(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)V

    .line 564
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    sget-object v4, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    invoke-static {v3, v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$802(Lcom/htc/music/dlna/DmpMusicPlayer;Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    goto/16 :goto_1
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    .line 467
    return-void
.end method

.method public mirrorRendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 589
    return-void
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 0
    .parameter "rendererID"
    .parameter "totalCount"
    .parameter "currentIndex"

    .prologue
    .line 490
    return-void
.end method

.method public rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 574
    return-void
.end method

.method public rendererAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 337
    return-void
.end method

.method public rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererList"

    .prologue
    .line 339
    return-void
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 338
    return-void
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "filePath"

    .prologue
    .line 341
    return-void
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "serverName"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverAddedNotify...uniqueID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serverName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mServerID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverAddedNotify...mContentID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDLNAService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mRemovedServerID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$602(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$700(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    sget-object v1, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$802(Lcom/htc/music/dlna/DmpMusicPlayer;Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    sget-object v1, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$802(Lcom/htc/music/dlna/DmpMusicPlayer;Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    .line 295
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "serverAddedNotify...opencurrent()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->openCurrent()V
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$900(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    goto :goto_0
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 0
    .parameter "serverList"

    .prologue
    .line 335
    return-void
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverRemovedNotify----current Server is removed!!!!!! Wifi enabled ?? => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$700(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mRemovedServerID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$602(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$700(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    sget-object v1, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$802(Lcom/htc/music/dlna/DmpMusicPlayer;Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    .line 322
    :goto_0
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->stop(Z)V

    .line 324
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mMediaPlayerHandler:Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$1000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->sendEmptyMessage(I)Z

    .line 326
    :cond_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$2;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    sget-object v1, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$802(Lcom/htc/music/dlna/DmpMusicPlayer;Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    goto :goto_0
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "filePath"

    .prologue
    .line 340
    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 0
    .parameter "itemData"

    .prologue
    .line 492
    return-void
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "thumbnailPath"

    .prologue
    .line 493
    return-void
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 491
    return-void
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 582
    return-void
.end method
