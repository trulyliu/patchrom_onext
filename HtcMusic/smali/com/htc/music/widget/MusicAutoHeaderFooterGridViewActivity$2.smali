.class Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p4, p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setGridViewVisibleRange(III)V

    .line 143
    :cond_0
    return-void
.end method

.method public onScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 125
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->prevScrollState:I
    invoke-static {v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->access$000(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMediaType:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;
    invoke-static {v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->access$100(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/music/util/ProfilerPerformanceUtils;->profilerLibsScrolling(IILcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->prevScrollState:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->access$002(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;I)I

    .line 129
    :cond_0
    if-eqz p2, :cond_2

    .line 130
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-boolean v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->cancelAnimation()V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    .line 135
    :cond_2
    return-void
.end method
