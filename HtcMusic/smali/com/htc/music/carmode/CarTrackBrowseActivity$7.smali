.class Lcom/htc/music/carmode/CarTrackBrowseActivity$7;
.super Landroid/os/Handler;
.source "CarTrackBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarTrackBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 1160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->preSearchTime:J
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$1300(Lcom/htc/music/carmode/CarTrackBrowseActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x122

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 1161
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$1400(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, v2, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 1163
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v4, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$1400(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/music/carmode/CarTrackBrowseActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v3, v1, v4}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$400(Lcom/htc/music/carmode/CarTrackBrowseActivity;Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    #calls: Lcom/htc/music/carmode/CarTrackBrowseActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$1500(Lcom/htc/music/carmode/CarTrackBrowseActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->init(Landroid/database/Cursor;)V

    .line 1165
    :cond_0
    return-void

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$1400(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
