.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;
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
    .line 776
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 779
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 780
    .local v6, action:Ljava/lang/String;
    const-string v0, "[TrackBrowserFragment]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    const-string v0, "album_id"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 786
    .local v1, albumId:I
    const-string v0, "action_complete_one_download"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v0

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDecodeList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRevertList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mResume:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z

    move-result v5

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->receiveDlArtDownloadComplete(Landroid/content/Intent;ILcom/htc/music/util/DlArtAsyncImageDecoder;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 789
    :cond_2
    const-string v0, "action_revert_current_album"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDecodeList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRevertList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mResume:Z
    invoke-static {v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z

    move-result v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->receiveDlArtRevert(ILjava/util/ArrayList;Ljava/util/ArrayList;ZLcom/htc/music/util/MemoryCacheBitmapByTime;)V

    .line 791
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
