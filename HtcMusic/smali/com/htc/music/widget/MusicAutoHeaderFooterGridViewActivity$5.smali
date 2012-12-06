.class Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$5;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;


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
    .line 380
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$5;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapseChildViewEndIRT()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$5;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-boolean v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$5;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$5;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$5;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    #calls: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->resetExpandableParamsAfterCollapseChildIRT()V
    invoke-static {v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->access$300(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    .line 387
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$5;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0
.end method
