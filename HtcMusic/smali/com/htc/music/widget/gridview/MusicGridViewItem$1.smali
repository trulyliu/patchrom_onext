.class Lcom/htc/music/widget/gridview/MusicGridViewItem$1;
.super Ljava/lang/Object;
.source "MusicGridViewItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 624
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-boolean v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;
    invoke-static {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->access$600(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Lcom/htc/sunnyCore/RenderThreadHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 631
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iput-boolean v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 629
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setVisibility(Z)V

    .line 630
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;
    invoke-static {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->access$700(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Lcom/htc/sunnyCore/RenderThreadHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
