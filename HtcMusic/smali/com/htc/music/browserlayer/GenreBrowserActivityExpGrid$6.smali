.class Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$6;
.super Ljava/lang/Object;
.source "GenreBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$6;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapseChildViewEndIRT()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$6;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    new-instance v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$6$1;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$6$1;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$6;)V

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 653
    return-void
.end method
