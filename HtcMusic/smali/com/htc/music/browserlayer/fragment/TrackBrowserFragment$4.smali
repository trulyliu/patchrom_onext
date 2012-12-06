.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$4;
.super Landroid/content/BroadcastReceiver;
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
    .line 835
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$4;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 838
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$4;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$4;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v2, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->init(Landroid/database/Cursor;)V

    .line 839
    return-void
.end method
