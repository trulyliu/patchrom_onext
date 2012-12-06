.class Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler$1;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivityGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

.field final synthetic val$c:Landroid/database/Cursor;

.field final synthetic val$forceShuffle:Z


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler$1;->this$1:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    iput-object p2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler$1;->val$c:Landroid/database/Cursor;

    iput-boolean p3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler$1;->val$forceShuffle:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1732
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "[NonUIHandler][handleMessage][PLAY_ALL][run] Play all."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler$1;->this$1:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    iget-object v0, v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler$1;->val$c:Landroid/database/Cursor;

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler$1;->val$forceShuffle:Z

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Z)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler$1;->this$1:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    iget-object v0, v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->triggerPlayAllAction()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$3200(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler$1;->val$c:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1737
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1739
    :cond_1
    return-void
.end method
