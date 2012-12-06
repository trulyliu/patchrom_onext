.class Lcom/htc/music/carmode/CarGenreBrowseActivity$1;
.super Ljava/lang/Object;
.source "CarGenreBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/IViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarGenreBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarGenreBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

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
    .line 357
    instance-of v7, p3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v7, :cond_1

    .line 358
    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object p2, v7, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mGenreTextView:Landroid/view/View;

    .line 363
    :goto_0
    if-nez p2, :cond_2

    .line 364
    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    invoke-virtual {v7}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 365
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v7, 0x7f030010

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 366
    const v7, 0x7f070039

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 367
    .local v1, folderNameTextView:Landroid/widget/TextView;
    const v7, 0x7f070039

    invoke-virtual {p2, v7, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 368
    const v7, 0x7f07003a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 369
    .local v3, itemNumberTextView:Landroid/widget/TextView;
    const v7, 0x7f07003a

    invoke-virtual {p2, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 377
    .end local v2           #inflator:Landroid/view/LayoutInflater;
    :goto_1
    instance-of v7, p3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v7, :cond_4

    .line 379
    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v7, p3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(Lcom/htc/sunnyCore/IMediaData;)I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_3

    .line 381
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->setTitleWithCount(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    .end local v0           #count:I
    :goto_2
    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object v6, v7, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mParentTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 387
    .local v6, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iput-object p2, v7, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mGenreTextView:Landroid/view/View;

    .line 397
    :goto_3
    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v7, :cond_0

    .line 398
    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v7, p3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getMediaDataName(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    :cond_0
    iget v7, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 401
    .local v5, measureW:I
    iget v7, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 402
    .local v4, measureH:I
    invoke-virtual {p2, v5, v4}, Landroid/view/View;->measure(II)V

    .line 403
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iget v10, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 405
    return-object p2

    .line 360
    .end local v1           #folderNameTextView:Landroid/widget/TextView;
    .end local v3           #itemNumberTextView:Landroid/widget/TextView;
    .end local v4           #measureH:I
    .end local v5           #measureW:I
    .end local v6           #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    :cond_1
    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object p2, v7, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAlbumTextView:Landroid/view/View;

    goto/16 :goto_0

    .line 371
    :cond_2
    const v7, 0x7f070039

    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 372
    .restart local v1       #folderNameTextView:Landroid/widget/TextView;
    const v7, 0x7f07003a

    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #itemNumberTextView:Landroid/widget/TextView;
    goto :goto_1

    .line 384
    :cond_3
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 389
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 390
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLines(I)V

    .line 391
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 392
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object v6, v7, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 394
    .restart local v6       #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iput-object p2, v7, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAlbumTextView:Landroid/view/View;

    goto :goto_3
.end method
