.class Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;
.super Landroid/os/Handler;
.source "PlaylistBrowserActivityGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 953
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "Got delay finish message"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->menuOpened:Z

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->menuOpened:Z

    goto :goto_0
.end method
