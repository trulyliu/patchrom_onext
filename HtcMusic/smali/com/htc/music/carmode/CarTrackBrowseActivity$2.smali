.class Lcom/htc/music/carmode/CarTrackBrowseActivity$2;
.super Landroid/os/Handler;
.source "CarTrackBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarTrackBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$2;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$2;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$300(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$2;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$2;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$300(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/htc/music/carmode/CarTrackBrowseActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$400(Lcom/htc/music/carmode/CarTrackBrowseActivity;Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 375
    :cond_0
    return-void
.end method
