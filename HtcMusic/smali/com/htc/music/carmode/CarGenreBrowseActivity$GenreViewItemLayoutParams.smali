.class Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;
.super Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;
.source "CarGenreBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarGenreBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenreViewItemLayoutParams"
.end annotation


# instance fields
.field public child_background_bottom_margin:I

.field public child_padding_bottom:I

.field public child_padding_left:I

.field public child_padding_right:I

.field public child_padding_top:I

.field public child_view_offset_X:I

.field public cover_height_child:I

.field public cover_marginLeft_child:I

.field public cover_marginTop_child:I

.field public cover_width_child:I

.field public height_child:I

.field public horizontalSpacing_child:I

.field public indicator_offset:I

.field public textView_height_child:I

.field public textView_marginLeft_child:I

.field public textView_marginTop_child:I

.field public textView_width_child:I

.field public thumb_marginLeft_child:I

.field public thumb_marginTop_child:I

.field public verticalSpacing_child:I

.field public verticalSpacing_landscape_child:I

.field public width_child:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 94
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 96
    .local v2, res:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 97
    const v5, 0x205000e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 98
    .local v4, spacing_2:I
    const v5, 0x205000c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 99
    .local v3, spacing:I
    const v5, 0x2050006

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 100
    .local v0, margin_s_2:I
    const v5, 0x7f09006d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginLeft:I

    .line 101
    const v5, 0x7f09006e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginRight:I

    .line 103
    const v5, 0x7f09006f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 104
    .local v1, offset:I
    const v5, 0x7f090055

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    .line 105
    const v5, 0x7f090056

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    .line 106
    const v5, 0x7f090057

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    .line 107
    const v5, 0x7f090058

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    .line 110
    const v5, 0x7f090059

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    .line 111
    const v5, 0x7f09005a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    .line 114
    iget v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    .line 115
    iget v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    invoke-direct {p0, v5, p1}, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->getGridViewTextViewLayoutHeight(ILandroid/app/Activity;)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    .line 116
    const v5, 0x7f09005b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    .line 117
    const v5, 0x7f090022

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    .line 120
    iget v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    .line 121
    iget v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iget v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    .line 122
    const v5, 0x7f09005c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    .line 123
    const v5, 0x7f09005d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    .line 124
    iput v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    .line 126
    const v5, 0x7f09005e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->cover_width_child:I

    .line 127
    const v5, 0x7f09005f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->cover_height_child:I

    .line 128
    const v5, 0x7f090060

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->cover_marginLeft_child:I

    .line 129
    const v5, 0x7f090061

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->cover_marginTop_child:I

    .line 130
    const v5, 0x7f090062

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->thumb_marginLeft_child:I

    .line 131
    const v5, 0x7f090063

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->thumb_marginTop_child:I

    .line 132
    iget v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->cover_width_child:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->textView_width_child:I

    .line 133
    iget v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->textView_width_child:I

    invoke-direct {p0, v5, p1}, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->getGridViewChidlTextViewLayoutHeight(ILandroid/app/Activity;)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->textView_height_child:I

    .line 134
    const v5, 0x7f090064

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->textView_marginLeft_child:I

    .line 135
    const v5, 0x7f090065

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->textView_marginTop_child:I

    .line 137
    const v5, 0x7f090066

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->verticalSpacing_child:I

    .line 138
    const v5, 0x7f090067

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->verticalSpacing_landscape_child:I

    .line 139
    const v5, 0x7f090040

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->indicator_offset:I

    .line 140
    const v5, 0x7f090068

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->child_background_bottom_margin:I

    .line 141
    const v5, 0x205000b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->child_view_offset_X:I

    .line 142
    iget v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->cover_width_child:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->width_child:I

    .line 143
    iget v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->cover_height_child:I

    iget v6, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->textView_height_child:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->textView_marginTop_child:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->height_child:I

    .line 146
    mul-int/lit8 v5, v0, 0x2

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->child_padding_left:I

    .line 147
    mul-int/lit8 v5, v0, 0x2

    iput v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->child_padding_right:I

    .line 148
    iput v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->child_padding_top:I

    .line 149
    iput v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->child_padding_bottom:I

    .line 151
    iput v4, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->horizontalSpacing_child:I

    .line 153
    .end local v0           #margin_s_2:I
    .end local v1           #offset:I
    .end local v3           #spacing:I
    .end local v4           #spacing_2:I
    :cond_0
    return-void
.end method

.method private getGridViewChidlTextViewLayoutHeight(ILandroid/app/Activity;)I
    .locals 8
    .parameter "textViewWidth"
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 173
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 174
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f030010

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, container:Landroid/view/View;
    const v5, 0x7f070039

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 176
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 177
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 178
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 179
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const/high16 v5, 0x4000

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 182
    .local v3, measureW:I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 183
    .local v2, measureH:I
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    return v5
.end method

.method private getGridViewTextViewLayoutHeight(ILandroid/app/Activity;)I
    .locals 11
    .parameter "textViewWidth"
    .parameter "activity"

    .prologue
    const v10, 0x7f07003a

    const v9, 0x7f070039

    const/4 v8, 0x0

    .line 156
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 157
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v6, 0x7f030010

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, container:Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 160
    .local v1, folderNameTextView:Landroid/widget/TextView;
    invoke-virtual {v0, v9, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 161
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 162
    .local v3, itemNumberTextView:Landroid/widget/TextView;
    invoke-virtual {v0, v10, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 163
    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const/high16 v6, 0x4000

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 167
    .local v5, measureW:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 168
    .local v4, measureH:I
    invoke-virtual {v0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    return v6
.end method
