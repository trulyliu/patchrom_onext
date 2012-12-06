.class Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$8;
.super Ljava/lang/Object;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$8;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapseChildViewEndIRT()V
    .locals 4

    .prologue
    .line 621
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$8;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-boolean v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$8;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$8;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-nez v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$8;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    #calls: Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->resetExpandableParamsAfterCollapseChildIRT()V
    invoke-static {v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->access$300(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    .line 625
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$8;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 626
    .local v0, thread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$8;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mUpdateGridViewIRTEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 627
    :cond_2
    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

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

    .line 628
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$8;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    const/4 v2, 0x0

    #calls: Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->updateGridView(Z)V
    invoke-static {v1, v2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->access$400(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;Z)V

    goto :goto_0
.end method
