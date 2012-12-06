.class Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;
.super Landroid/os/Handler;
.source "PlaylistBrowserActivityGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonUIHandler"
.end annotation


# static fields
.field private static final PLAY_ALL:I


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    .line 1712
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1713
    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1708
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->playAll(Z)V

    return-void
.end method

.method private playAll(Z)V
    .locals 4
    .parameter "forceShuffle"

    .prologue
    .line 1716
    const-string v2, "[PlaylistBrowserActivityGrid]"

    const-string v3, "[NonUIHandler][playAll] ."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 1718
    .local v1, obj:Ljava/lang/Boolean;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1719
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1720
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 1724
    iget v2, p1, Landroid/os/Message;->what:I

    .line 1725
    .local v2, what:I
    const-string v3, "[PlaylistBrowserActivityGrid]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NonUIHandler][handleMessage] msg.what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    if-nez v2, :cond_0

    .line 1727
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    sget-object v4, Lcom/htc/music/util/MusicUtils;->PLAY_PLAYLIST_COLS:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/music/util/ContentUtils;->getTracksForAllPlaylists(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1728
    .local v0, c:Landroid/database/Cursor;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1729
    .local v1, forceShuffle:Z
    const-string v3, "[PlaylistBrowserActivityGrid]"

    const-string v4, "[NonUIHandler][handleMessage][PLAY_ALL] Post to UI thread to play all."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler$1;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;Landroid/database/Cursor;Z)V

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1746
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #forceShuffle:Z
    :goto_0
    return-void

    .line 1745
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
