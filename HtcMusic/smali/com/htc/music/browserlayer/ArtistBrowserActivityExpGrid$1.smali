.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;
.super Ljava/lang/Object;
.source "ArtistBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/IViewBinder;


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
    .line 428
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

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
    .line 434
    instance-of v7, p3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v7, :cond_1

    .line 435
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iget-object p2, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mArtistTextView:Landroid/view/View;

    .line 440
    :goto_0
    if-nez p2, :cond_2

    .line 441
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 442
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v7, 0x7f030025

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 443
    const v7, 0x7f070039

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 444
    .local v1, folderName:Landroid/widget/TextView;
    const v7, 0x7f070039

    invoke-virtual {p2, v7, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 445
    const v7, 0x7f07003a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 446
    .local v3, itemNumber:Landroid/widget/TextView;
    const v7, 0x7f07003a

    invoke-virtual {p2, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 454
    .end local v2           #inflator:Landroid/view/LayoutInflater;
    :goto_1
    instance-of v7, p3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v7, :cond_4

    .line 456
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(Lcom/htc/sunnyCore/IMediaData;)I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_3

    .line 458
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    const/4 v8, 0x0

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setTitleWithCount(II)Ljava/lang/String;
    invoke-static {v7, v8, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    .end local v0           #count:I
    :goto_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iget-object v6, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mParentTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 464
    .local v6, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iput-object p2, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mArtistTextView:Landroid/view/View;

    .line 474
    :goto_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 475
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getMediaDataName(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    :cond_0
    iget v7, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 478
    .local v5, measureW:I
    iget v7, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 479
    .local v4, measureH:I
    invoke-virtual {p2, v5, v4}, Landroid/view/View;->measure(II)V

    .line 480
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iget v10, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 482
    return-object p2

    .line 437
    .end local v1           #folderName:Landroid/widget/TextView;
    .end local v3           #itemNumber:Landroid/widget/TextView;
    .end local v4           #measureH:I
    .end local v5           #measureW:I
    .end local v6           #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iget-object p2, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumTextView:Landroid/view/View;

    goto/16 :goto_0

    .line 448
    :cond_2
    const v7, 0x7f070039

    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 449
    .restart local v1       #folderName:Landroid/widget/TextView;
    const v7, 0x7f07003a

    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #itemNumber:Landroid/widget/TextView;
    goto :goto_1

    .line 461
    :cond_3
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 466
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 467
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLines(I)V

    .line 468
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 469
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iget-object v6, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 471
    .restart local v6       #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iput-object p2, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumTextView:Landroid/view/View;

    goto :goto_3
.end method
