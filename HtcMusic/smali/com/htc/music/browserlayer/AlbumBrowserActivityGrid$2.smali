.class Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;
.super Ljava/lang/Object;
.source "AlbumBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/IViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;
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
    .line 376
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

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

    .line 382
    if-nez p2, :cond_1

    .line 383
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 384
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v4, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 385
    const v4, 0x7f070039

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 386
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 387
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 388
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 389
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 394
    .end local v0           #inflator:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 395
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->access$100(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    iget-object v4, v4, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v4, v4, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 399
    .local v2, measureW:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    iget-object v4, v4, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v4, v4, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 400
    .local v1, measureH:I
    invoke-virtual {p2, v2, v1}, Landroid/view/View;->measure(II)V

    .line 401
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    iget-object v4, v4, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v4, v4, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    iget-object v5, v5, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-virtual {p2, v6, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 403
    return-object p2

    .line 391
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
