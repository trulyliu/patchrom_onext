.class Lcom/htc/music/NowPlayingViewHelper$15;
.super Landroid/os/Handler;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$900(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #calls: Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor()Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$1900(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    .line 1789
    :cond_0
    return-void
.end method
