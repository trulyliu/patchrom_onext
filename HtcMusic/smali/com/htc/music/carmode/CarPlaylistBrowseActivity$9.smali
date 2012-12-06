.class Lcom/htc/music/carmode/CarPlaylistBrowseActivity$9;
.super Landroid/os/Handler;
.source "CarPlaylistBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarPlaylistBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$9;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 793
    const-string v0, "[CarPlaylistBrowserActivityGrid]"

    const-string v1, "Got delay finish message"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$9;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->menuOpened:Z

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$9;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$9;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->menuOpened:Z

    goto :goto_0
.end method
