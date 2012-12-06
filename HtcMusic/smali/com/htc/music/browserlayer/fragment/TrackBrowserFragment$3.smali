.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;
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
    .line 822
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 831
    :cond_0
    return-void
.end method
