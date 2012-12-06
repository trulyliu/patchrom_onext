.class Lcom/htc/music/carmode/CarArtistBrowseActivity$1;
.super Ljava/lang/Object;
.source "CarArtistBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/IViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarArtistBrowseActivity;
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
    .line 382
    iput-object p1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(ILandroid/view/View;Lcom/htc/sunnyCore/IMediaData;)Landroid/view/View;
    .locals 11
    .parameter "index"
    .parameter "container"
    .parameter "mediaData"

    .prologue
    .line 388
    instance-of v7, p3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v7, :cond_1

    .line 389
    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object p2, v7, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mArtistTextView:Landroid/view/View;

    .line 394
    :goto_0
    if-nez p2, :cond_2

    .line 395
    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    invoke-virtual {v7}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 396
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v7, 0x7f030010

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 397
    const v7, 0x7f070039

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 398
    .local v1, folderNameTextView:Landroid/widget/TextView;
    const v7, 0x7f070039

    invoke-virtual {p2, v7, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 399
    const v7, 0x7f07003a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 400
    .local v3, itemNumberTextView:Landroid/widget/TextView;
    const v7, 0x7f07003a

    invoke-virtual {p2, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 408
    .end local v2           #inflator:Landroid/view/LayoutInflater;
    :goto_1
    instance-of v7, p3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v7, :cond_4

    .line 410
    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v7, p3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(Lcom/htc/sunnyCore/IMediaData;)I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_3

    .line 412
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setTitleWithCount(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    .end local v0           #count:I
    :goto_2
    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v6, v7, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mParentTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 418
    .local v6, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iput-object p2, v7, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mArtistTextView:Landroid/view/View;

    .line 428
    :goto_3
    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v7, :cond_0

    .line 429
    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v7, p3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getMediaDataName(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :cond_0
    iget v7, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 432
    .local v5, measureW:I
    iget v7, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 433
    .local v4, measureH:I
    invoke-virtual {p2, v5, v4}, Landroid/view/View;->measure(II)V

    .line 434
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iget v10, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 436
    return-object p2

    .line 391
    .end local v1           #folderNameTextView:Landroid/widget/TextView;
    .end local v3           #itemNumberTextView:Landroid/widget/TextView;
    .end local v4           #measureH:I
    .end local v5           #measureW:I
    .end local v6           #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    :cond_1
    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object p2, v7, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumTextView:Landroid/view/View;

    goto/16 :goto_0

    .line 402
    :cond_2
    const v7, 0x7f070039

    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 403
    .restart local v1       #folderNameTextView:Landroid/widget/TextView;
    const v7, 0x7f07003a

    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #itemNumberTextView:Landroid/widget/TextView;
    goto :goto_1

    .line 415
    :cond_3
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 420
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 421
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLines(I)V

    .line 422
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 423
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v6, v7, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 425
    .restart local v6       #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iput-object p2, v7, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumTextView:Landroid/view/View;

    goto :goto_3
.end method
