.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$QueryHandler;
.super Lcom/htc/music/util/AlbumArtAsyncQueryHandler;
.source "TrackBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "res"

    .prologue
    .line 2157
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    .line 2158
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/htc/music/util/AlbumArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;Z)V

    .line 2159
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 2166
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->init(Landroid/database/Cursor;)V

    .line 2167
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAsyncQuerying:Z

    .line 2168
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showSpinner(Z)V

    .line 2172
    :cond_0
    return-void
.end method
