.class Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$2;
.super Ljava/lang/Object;
.source "FolderBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$2;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThumbnailImage(IILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;
    .locals 3
    .parameter "index"
    .parameter "subIndex"
    .parameter "mediaData"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$2;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    invoke-static {v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->access$200(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    return-object v0
.end method

.method public isGridViewInitFinish()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$2;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->access$300(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Z

    move-result v0

    return v0
.end method

.method public isUseExtraBackgroundImage(IILcom/htc/sunnyCore/IMediaData;)Z
    .locals 1
    .parameter "index"
    .parameter "subIndex"
    .parameter "mediaData"

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public isUseExtraThumbnailImage(IILcom/htc/sunnyCore/IMediaData;)Z
    .locals 1
    .parameter "index"
    .parameter "subIndex"
    .parameter "mediaData"

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method
