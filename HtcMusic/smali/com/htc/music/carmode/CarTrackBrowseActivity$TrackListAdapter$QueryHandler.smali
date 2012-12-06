.class Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$QueryHandler;
.super Lcom/htc/music/util/AlbumArtAsyncQueryHandler;
.source "CarTrackBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "res"

    .prologue
    .line 705
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    .line 706
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/htc/music/util/AlbumArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;Z)V

    .line 707
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

    .line 714
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->init(Landroid/database/Cursor;)V

    .line 715
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v0

    #setter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAsyncQuerying:Z
    invoke-static {v0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$102(Lcom/htc/music/carmode/CarTrackBrowseActivity;Z)Z

    .line 716
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showSpinner(Z)V

    .line 720
    :cond_0
    return-void
.end method
