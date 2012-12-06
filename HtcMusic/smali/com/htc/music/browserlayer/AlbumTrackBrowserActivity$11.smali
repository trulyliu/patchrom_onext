.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;
.super Landroid/content/BroadcastReceiver;
.source "AlbumTrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2166
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2170
    .local v6, action:Ljava/lang/String;
    const-string v0, "[AlbumTrackBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDlArtReceiver, onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2185
    :cond_0
    :goto_0
    return-void

    .line 2175
    :cond_1
    const-string v0, "album_id"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2176
    .local v1, albumId:I
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$3600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$3600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 2177
    const-string v0, "action_complete_one_download"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2178
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$3700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$3800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mResume:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$3900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v5

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->receiveDlArtDownloadComplete(Landroid/content/Intent;ILcom/htc/music/util/DlArtAsyncImageDecoder;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 2180
    :cond_2
    const-string v0, "action_revert_current_album"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$3700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$3800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mResume:Z
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$3900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->receiveDlArtRevert(ILjava/util/ArrayList;Ljava/util/ArrayList;ZLcom/htc/music/util/MemoryCacheBitmapByTime;)V

    .line 2182
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
