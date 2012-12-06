.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "TrackBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2553
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2553
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 2556
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2559
    .local v0, count:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2560
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    .line 2567
    :goto_1
    if-lez v0, :cond_2

    .line 2568
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->hideEmptyErrorView()V

    .line 2572
    :goto_2
    return-void

    .line 2556
    .end local v0           #count:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2563
    .restart local v0       #count:I
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setMainTitle(Ljava/lang/String;)V

    .line 2564
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v2

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListSizeTitle(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivitySecondaryTitle:Ljava/lang/String;

    .line 2565
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivitySecondaryTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 2570
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showEmptyView(I)V

    goto :goto_2
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 2578
    return-void
.end method
