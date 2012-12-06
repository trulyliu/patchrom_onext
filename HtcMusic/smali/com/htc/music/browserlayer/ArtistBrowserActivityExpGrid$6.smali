.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;
.super Ljava/lang/Object;
.source "ArtistBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapseChildViewEndIRT()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    new-instance v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6$1;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6$1;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;)V

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 705
    return-void
.end method
