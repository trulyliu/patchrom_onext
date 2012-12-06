.class Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$5;
.super Ljava/lang/Object;
.source "AlbumBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->initMusicGridViewUtil()V
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
    .line 449
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$5;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "xxxid"

    .prologue
    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoverInfo(Ljava/lang/String;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
    .locals 1
    .parameter "xxxid"

    .prologue
    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "xxxid"

    .prologue
    .line 453
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyAllDataChange()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$5;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->access$500(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$5;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->access$600(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$5;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->access$800(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$5;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->access$700(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    goto :goto_0
.end method

.method public notifyViewItemDataChange(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 469
    return-void
.end method
