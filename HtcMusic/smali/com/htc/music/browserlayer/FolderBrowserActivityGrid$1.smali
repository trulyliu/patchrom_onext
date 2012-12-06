.class Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$1;
.super Ljava/lang/Object;
.source "FolderBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/IViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;
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
    .line 283
    iput-object p1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$1;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(ILandroid/view/View;Lcom/htc/sunnyCore/IMediaData;)Landroid/view/View;
    .locals 9
    .parameter "index"
    .parameter "container"
    .parameter "mediaData"

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 288
    if-nez p2, :cond_1

    .line 289
    iget-object v5, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$1;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 290
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f030025

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 291
    const v5, 0x7f070039

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 292
    .local v1, folderNameTextView:Landroid/widget/TextView;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 293
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 294
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 295
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 301
    .end local v2           #inflator:Landroid/view/LayoutInflater;
    :goto_0
    const/4 v0, 0x0

    .line 302
    .local v0, folderName:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$1;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v5}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->access$000(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 303
    iget-object v5, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$1;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v5}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->access$100(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getMediaDataName(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v5, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$1;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    iget-object v5, v5, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 308
    .local v4, measureW:I
    iget-object v5, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$1;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    iget-object v5, v5, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 309
    .local v3, measureH:I
    invoke-virtual {p2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 310
    iget-object v5, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$1;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    iget-object v5, v5, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iget-object v6, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$1;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    iget-object v6, v6, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v6, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-virtual {p2, v7, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 312
    return-object p2

    .line 298
    .end local v0           #folderName:Ljava/lang/String;
    .end local v1           #folderNameTextView:Landroid/widget/TextView;
    .end local v3           #measureH:I
    .end local v4           #measureW:I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #folderNameTextView:Landroid/widget/TextView;
    goto :goto_0
.end method
