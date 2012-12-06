.class Lcom/htc/music/MediaPlaybackService$8;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 1583
    const-string v2, "album_id"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1586
    .local v1, albumId:I
    if-gez v1, :cond_1

    .line 1587
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal Arguments - albumId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v3

    .line 1592
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$6800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1593
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v4, -0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService;->access$6802(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1594
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService;->access$6902(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 1595
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService;->access$7002(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 1596
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "<unknown>"

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService;->access$7102(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 1598
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1600
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1601
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1602
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "action_revert_current_album"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1603
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v4, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V
    invoke-static {v2, v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$7300(Lcom/htc/music/MediaPlaybackService;Landroid/widget/RemoteViews;Z)V

    .line 1604
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #calls: Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V
    invoke-static {v2, v3, v5}, Lcom/htc/music/MediaPlaybackService;->access$7300(Lcom/htc/music/MediaPlaybackService;Landroid/widget/RemoteViews;Z)V

    .line 1605
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1608
    :cond_3
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "action_complete_one_download"

    #calls: Lcom/htc/music/MediaPlaybackService;->updateRemoteControlClient(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1609
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->decodeNotificationAlbumartAsync()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7500(Lcom/htc/music/MediaPlaybackService;)V

    goto :goto_0

    .line 1598
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
