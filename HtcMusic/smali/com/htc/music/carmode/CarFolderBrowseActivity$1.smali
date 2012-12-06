.class Lcom/htc/music/carmode/CarFolderBrowseActivity$1;
.super Ljava/lang/Object;
.source "CarFolderBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/IViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarFolderBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarFolderBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;

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

    .line 213
    if-nez p2, :cond_1

    .line 214
    iget-object v5, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;

    invoke-virtual {v5}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 215
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f030011

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 216
    const v5, 0x7f070039

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 217
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 218
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 219
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 220
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    .end local v1           #inflator:Landroid/view/LayoutInflater;
    :goto_0
    const/4 v0, 0x0

    .line 227
    .local v0, folderName:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v5, :cond_0

    .line 228
    iget-object v5, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v5, p3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getMediaDataName(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v5, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 233
    .local v3, measureW:I
    iget-object v5, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 234
    .local v2, measureH:I
    invoke-virtual {p2, v3, v2}, Landroid/view/View;->measure(II)V

    .line 235
    iget-object v5, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iget-object v6, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarFolderBrowseActivity;

    iget-object v6, v6, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v6, v6, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-virtual {p2, v7, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 237
    return-object p2

    .line 223
    .end local v0           #folderName:Ljava/lang/String;
    .end local v2           #measureH:I
    .end local v3           #measureW:I
    .end local v4           #textView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .restart local v4       #textView:Landroid/widget/TextView;
    goto :goto_0
.end method
