.class Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;
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
    .line 391
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapseChildViewEndIRT()V
    .locals 4

    .prologue
    .line 394
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-boolean v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-nez v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    #calls: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->resetExpandableParamsAfterCollapseChildIRT()V
    invoke-static {v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->access$300(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    .line 398
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 399
    .local v0, thread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mUpdateGridViewIRTEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    :cond_2
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push update gridview event to render thread fail, thread = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    const/4 v2, 0x0

    #calls: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->updateGridView(Z)V
    invoke-static {v1, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->access$400(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Z)V

    goto :goto_0
.end method
