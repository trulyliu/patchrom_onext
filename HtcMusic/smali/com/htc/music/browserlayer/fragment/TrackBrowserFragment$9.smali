.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;
.super Landroid/os/Handler;
.source "TrackBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2802
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 2805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->preSearchTime:J
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x122

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 2806
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v3

    :goto_0
    iput-object v2, v4, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLowerSearchFilter:Ljava/lang/String;

    .line 2808
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2809
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 2810
    .local v0, c:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v2, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->init(Landroid/database/Cursor;)V

    .line 2812
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_0
    return-void

    .line 2806
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
