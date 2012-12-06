.class Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;
.super Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;
.source "CarAlbumBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarAlbumBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumViewItemLayoutParams"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 84
    const v3, 0x205000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 85
    .local v2, spacing_2:I
    const v3, 0x205000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 87
    .local v1, spacing:I
    const v3, 0x7f090069

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginLeft:I

    .line 88
    const v3, 0x7f09006a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginRight:I

    .line 90
    const v3, 0x7f090041

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    .line 91
    const v3, 0x7f090042

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    .line 92
    const v3, 0x7f090043

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    .line 93
    const v3, 0x7f090044

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    .line 94
    const v3, 0x7f090045

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    .line 95
    const v3, 0x7f090046

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    .line 96
    iget v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    .line 97
    iget v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    invoke-direct {p0, v3, p1}, Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;->getGridViewTextViewLayoutHeight(ILandroid/app/Activity;)I

    move-result v3

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    .line 98
    const v3, 0x7f090047

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    .line 99
    const v3, 0x7f090048

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    .line 100
    iget v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    .line 101
    iget v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iget v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    .line 102
    const v3, 0x7f090049

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    .line 103
    const v3, 0x7f09004a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    .line 104
    iput v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    .line 106
    .end local v1           #spacing:I
    .end local v2           #spacing_2:I
    :cond_0
    return-void
.end method

.method private getGridViewTextViewLayoutHeight(ILandroid/app/Activity;)I
    .locals 8
    .parameter "textViewWidth"
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 109
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 110
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f030010

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, container:Landroid/view/View;
    const v5, 0x7f070039

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 112
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 113
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 114
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/high16 v5, 0x4000

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 118
    .local v3, measureW:I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 119
    .local v2, measureH:I
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    return v5
.end method
