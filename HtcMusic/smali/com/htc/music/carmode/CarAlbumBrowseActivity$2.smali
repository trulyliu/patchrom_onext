.class Lcom/htc/music/carmode/CarAlbumBrowseActivity$2;
.super Ljava/lang/Object;
.source "CarAlbumBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarAlbumBrowseActivity;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarAlbumBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$2;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

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
    .line 333
    iget-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$2;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    return-object v0
.end method

.method public isGridViewInitFinish()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$2;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method public isUseExtraBackgroundImage(IILcom/htc/sunnyCore/IMediaData;)Z
    .locals 1
    .parameter "index"
    .parameter "subIndex"
    .parameter "mediaData"

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public isUseExtraThumbnailImage(IILcom/htc/sunnyCore/IMediaData;)Z
    .locals 1
    .parameter "index"
    .parameter "subIndex"
    .parameter "mediaData"

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method
