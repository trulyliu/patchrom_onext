.class Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$6;
.super Ljava/lang/Object;
.source "AlbumBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/sunnyCore/Preparator$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$6;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpired(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 506
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$6;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->access$1000(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 500
    return-void
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$6;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->access$900(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 494
    return-void
.end method
