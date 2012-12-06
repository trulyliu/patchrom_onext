.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;
.source "ArtistBrowserActivityExpGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistViewItemLayoutParams"
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

    .line 132
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 135
    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    .line 136
    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    .line 137
    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    .line 138
    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    .line 139
    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    .line 140
    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    .line 141
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    .line 142
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    invoke-direct {p0, v1, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->getGridViewTextViewLayoutHeight(ILandroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    .line 143
    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    .line 144
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    .line 145
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    .line 146
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    .line 147
    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    .line 148
    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    .line 149
    const v1, 0x205000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    .line 151
    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_width_child:I

    .line 152
    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_height_child:I

    .line 153
    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_marginLeft_child:I

    .line 154
    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_marginTop_child:I

    .line 155
    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->thumb_marginLeft_child:I

    .line 156
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->thumb_marginTop_child:I

    .line 157
    iget v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_width_child:I

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_width_child:I

    .line 158
    iget v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_width_child:I

    invoke-direct {p0, v1, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->getGridViewChidlTextViewLayoutHeight(ILandroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_height_child:I

    .line 159
    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_marginLeft_child:I

    .line 160
    const v1, 0x2050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_marginTop_child:I

    .line 161
    iget v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_width_child:I

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->width_child:I

    .line 162
    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->child_view_offsetY:I

    .line 164
    iget v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_height_child:I

    iget v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_height_child:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_marginTop_child:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->height_child:I

    .line 165
    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->verticalSpacing_child:I

    .line 166
    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->verticalSpacing_landscape_child:I

    .line 167
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->horizontalSpacing_child:I

    .line 168
    const v1, 0x2050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->bottom_padding_child:I

    .line 169
    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->indicator_offset:I

    .line 171
    const/high16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    .line 173
    :cond_0
    return-void
.end method

.method private getGridViewChidlTextViewLayoutHeight(ILandroid/app/Activity;)I
    .locals 8
    .parameter "textViewWidth"
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 193
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 194
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f030025

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, container:Landroid/view/View;
    const v5, 0x7f070039

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 196
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 197
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 198
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 199
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const/high16 v5, 0x4000

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 202
    .local v3, measureW:I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 203
    .local v2, measureH:I
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 204
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

    .line 176
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 177
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v6, 0x7f030025

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, container:Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 180
    .local v1, folderNameTextView:Landroid/widget/TextView;
    invoke-virtual {v0, v9, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 181
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 182
    .local v3, itemNumberTextView:Landroid/widget/TextView;
    invoke-virtual {v0, v10, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 183
    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const/high16 v6, 0x4000

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 187
    .local v5, measureW:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 188
    .local v4, measureH:I
    invoke-virtual {v0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    return v6
.end method
