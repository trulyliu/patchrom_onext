.class Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2780
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;Lcom/htc/music/NowPlayingViewHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2780
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 2783
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$4000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v1

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$4000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v1

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2787
    .local v0, count:I
    :goto_0
    if-lez v0, :cond_1

    .line 2788
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$4000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->hideEmptyErrorView()V

    .line 2792
    :goto_1
    return-void

    .line 2783
    .end local v0           #count:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2790
    .restart local v0       #count:I
    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$4000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v1

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Lcom/htc/music/NowPlayingViewHelper;->showEmptyView(I)V

    goto :goto_1
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 2798
    return-void
.end method
