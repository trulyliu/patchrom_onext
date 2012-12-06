.class Lcom/htc/music/browserlayer/TrackBrowserActivity$10;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2167
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 2170
    new-array v1, v3, [I

    .line 2171
    .local v1, list:[I
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v1, v3

    .line 2174
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-static {v3, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracks(Landroid/content/Context;[I)V

    .line 2177
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2179
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v4

    const/4 v5, 0x0

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v3, v4, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$900(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 2183
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2184
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2185
    .local v2, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListView;->setDelPositionsList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2193
    .end local v2           #removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    return-void

    .line 2188
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
