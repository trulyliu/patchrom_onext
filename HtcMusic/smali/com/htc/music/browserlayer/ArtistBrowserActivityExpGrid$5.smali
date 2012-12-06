.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$5;
.super Ljava/lang/Object;
.source "ArtistBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/sunnyCore/Preparator$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
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
    .line 620
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpired(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 639
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 633
    return-void
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$1900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 628
    return-void
.end method
