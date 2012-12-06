.class Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CarTrackBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;Lcom/htc/music/carmode/CarTrackBrowseActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 998
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 1001
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$700(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$700(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1004
    .local v0, count:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1010
    :goto_1
    if-lez v0, :cond_2

    .line 1011
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->hideEmptyErrorView()V

    .line 1015
    :goto_2
    return-void

    .line 1001
    .end local v0           #count:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1008
    .restart local v0       #count:I
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityMainTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setMainTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1013
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;

    move-result-object v1

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showEmptyView(I)V

    goto :goto_2
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 1021
    return-void
.end method
