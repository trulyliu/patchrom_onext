.class Lcom/htc/music/carmode/CarArtistBrowseActivity$3;
.super Ljava/lang/Object;
.source "CarArtistBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarArtistBrowseActivity;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextViewImage(IILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;
    .locals 3
    .parameter "index"
    .parameter "subIndex"
    .parameter "mediaData"

    .prologue
    .line 477
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 478
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "viewTexture"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 479
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    return-object v1
.end method
