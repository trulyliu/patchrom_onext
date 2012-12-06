.class Lcom/htc/music/carmode/CarAlbumBrowseActivity$1;
.super Ljava/lang/Object;
.source "CarAlbumBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/IViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarAlbumBrowseActivity;
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
    .line 298
    iput-object p1, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(ILandroid/view/View;Lcom/htc/sunnyCore/IMediaData;)Landroid/view/View;
    .locals 8
    .parameter "index"
    .parameter "container"
    .parameter "mediaData"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 303
    if-nez p2, :cond_1

    .line 304
    iget-object v4, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    invoke-virtual {v4}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 305
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v4, 0x7f030010

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 306
    const v4, 0x7f070039

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 307
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 308
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 309
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 310
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 315
    .end local v0           #inflator:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v4, v4, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v4, :cond_0

    .line 316
    iget-object v4, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v4, v4, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v4, v4, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v4, v4, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 319
    .local v2, measureW:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v4, v4, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v4, v4, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 320
    .local v1, measureH:I
    invoke-virtual {p2, v2, v1}, Landroid/view/View;->measure(II)V

    .line 321
    iget-object v4, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v4, v4, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v4, v4, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iget-object v5, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-virtual {p2, v6, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 323
    return-object p2

    .line 312
    .end local v1           #measureH:I
    .end local v2           #measureW:I
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #textView:Landroid/widget/TextView;
    goto :goto_0
.end method
