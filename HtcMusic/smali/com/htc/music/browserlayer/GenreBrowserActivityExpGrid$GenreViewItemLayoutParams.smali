.class Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;
.source "GenreBrowserActivityExpGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenreViewItemLayoutParams"
.end annotation


# instance fields
.field public bottom_padding_child:I

.field public child_view_offsetY:I

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
    .locals 5
    .parameter "activity"

    .prologue
    const v4, 0x205000e

    const v3, 0x205000d

    .line 106
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 109
    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    .line 110
    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    .line 111
    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    .line 112
    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    .line 113
    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    .line 114
    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    .line 115
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    .line 116
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    invoke-direct {p0, v1, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->getGridViewTextViewLayoutHeight(ILandroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    .line 117
    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    .line 118
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    .line 119
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    .line 120
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    .line 121
    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    .line 122
    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    .line 123
    const v1, 0x205000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    .line 125
    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_width_child:I

    .line 126
    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_height_child:I

    .line 127
    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_marginLeft_child:I

    .line 128
    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_marginTop_child:I

    .line 129
    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->thumb_marginLeft_child:I

    .line 130
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->thumb_marginTop_child:I

    .line 131
    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_width_child:I

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_width_child:I

    .line 132
    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_width_child:I

    invoke-direct {p0, v1, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->getGridViewChidlTextViewLayoutHeight(ILandroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_height_child:I

    .line 133
    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_marginLeft_child:I

    .line 134
    const v1, 0x2050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_marginTop_child:I

    .line 135
    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_width_child:I

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->width_child:I

    .line 136
    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->child_view_offsetY:I

    .line 137
    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_height_child:I

    iget v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_height_child:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_marginTop_child:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->height_child:I

    .line 139
    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->verticalSpacing_child:I

    .line 140
    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->verticalSpacing_landscape_child:I

    .line 141
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->horizontalSpacing_child:I

    .line 142
    const v1, 0x2050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->bottom_padding_child:I

    .line 143
    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->indicator_offset:I

    .line 145
    const/high16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    .line 147
    :cond_0
    return-void
.end method

.method private getGridViewChidlTextViewLayoutHeight(ILandroid/app/Activity;)I
    .locals 8
    .parameter "textViewWidth"
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 167
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 168
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f030025

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, container:Landroid/view/View;
    const v5, 0x7f070039

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 170
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 171
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 172
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 173
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const/high16 v5, 0x4000

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 176
    .local v3, measureW:I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 177
    .local v2, measureH:I
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 178
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

    .line 150
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 151
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v6, 0x7f030025

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, container:Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    .local v1, folderNameTextView:Landroid/widget/TextView;
    invoke-virtual {v0, v9, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 155
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 156
    .local v3, itemNumberTextView:Landroid/widget/TextView;
    invoke-virtual {v0, v10, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 157
    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const/high16 v6, 0x4000

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 161
    .local v5, measureW:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 162
    .local v4, measureH:I
    invoke-virtual {v0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    return v6
.end method
