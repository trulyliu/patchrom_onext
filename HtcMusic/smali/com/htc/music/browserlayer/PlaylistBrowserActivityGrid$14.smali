.class Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivityGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->onHtcContextItemSelected(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1470
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$2100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$2000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->deleteItems(ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .line 1471
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$2200(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)I

    move-result v2

    aput v2, v0, v1

    .line 1472
    .local v0, a:[I
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$2400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;
    invoke-static {v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$2300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startDataSetChangeAnimation([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 1474
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle()V

    .line 1475
    return-void
.end method
