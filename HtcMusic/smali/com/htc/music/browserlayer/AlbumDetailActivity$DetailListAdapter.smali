.class Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailListAdapter"
.end annotation


# static fields
.field private static final OFFSET_TRACKS:I = 0x1

.field private static final POSITION_HEADER:I


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mParentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/browserlayer/AlbumDetailActivity;",
            ">;"
        }
    .end annotation
.end field

.field private posMoreByArtistName:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 3
    .parameter "context"
    .parameter "parentActivity"

    .prologue
    .line 1595
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1586
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    .line 1590
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    .line 1596
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    .line 1598
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1599
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    .line 1601
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 1602
    .local v1, tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;
    if-eqz v1, :cond_0

    .line 1603
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1604
    .local v0, resources:Landroid/content/res/Resources;
    const v2, 0x7f020040

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1602(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1606
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1578
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    return v0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 1890
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    .line 1891
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1609
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 1610
    .local v1, tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;
    if-nez v1, :cond_1

    .line 1611
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():tempActivity == null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    :cond_0
    :goto_0
    return v0

    .line 1616
    :cond_1
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1617
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():stopping."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1621
    :cond_2
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1622
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():mShowError."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1626
    :cond_3
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 1627
    :cond_4
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():mTrackCursor == null || mTrackCursor.getCount() == 0."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1631
    :cond_5
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1634
    .local v0, retInt:I
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->isUnknownArtist(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2700(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1636
    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    .line 1637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1645
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1649
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1872
    if-nez p1, :cond_0

    .line 1873
    const/4 v0, 0x0

    .line 1881
    :goto_0
    return v0

    .line 1878
    :cond_0
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    if-ne p1, v0, :cond_1

    .line 1879
    const/4 v0, 0x3

    goto :goto_0

    .line 1881
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 33
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 1662
    .local v19, tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;
    if-nez v19, :cond_0

    .line 1663
    const-string v27, "[AlbumDetailActivity]"

    const-string v28, "DetailListAdapter.getView(int,View,ViewGroup):tempActivity == null."

    invoke-static/range {v27 .. v28}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, p2

    .line 1867
    :goto_0
    return-object v24

    .line 1667
    :cond_0
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1668
    const-string v27, "[AlbumDetailActivity]"

    const-string v28, "DetailListAdapter.getView(int,View,ViewGroup):stopping."

    invoke-static/range {v27 .. v28}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, p2

    .line 1669
    goto :goto_0

    .line 1672
    :cond_1
    if-nez p1, :cond_a

    .line 1674
    if-eqz p2, :cond_3

    .line 1675
    move-object/from16 v24, p2

    .line 1703
    .local v24, v:Landroid/view/View;
    :goto_1
    const v27, 0x7f07004c

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcRimImageButton;

    .line 1704
    .local v18, shareOn:Lcom/htc/widget/HtcRimImageButton;
    new-instance v27, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1711
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_5

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_5

    const/16 v27, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 1713
    const v27, 0x7f07004a

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1714
    .local v16, releaseYearTV:Landroid/widget/TextView;
    const/4 v15, 0x0

    .line 1715
    .local v15, releaseYear:Ljava/lang/String;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReleaseYear:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_6

    .line 1716
    const v27, 0x7f0600d6

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReleaseYear:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1717
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1718
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    :goto_3
    const v27, 0x7f07004b

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1725
    .local v10, genreType:Landroid/widget/TextView;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumGenre:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_7

    .line 1726
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1727
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumGenre:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1733
    :goto_4
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v27

    if-lez v27, :cond_2

    .line 1734
    const v27, 0x7f070049

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1735
    .local v23, trackNumberTV:Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 1736
    .local v13, numTracks:Ljava/lang/String;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 1737
    const v27, 0x7f0600d5

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1741
    :goto_5
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1744
    .end local v13           #numTracks:Ljava/lang/String;
    .end local v23           #trackNumberTV:Landroid/widget/TextView;
    :cond_2
    const v27, 0x7f070047

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1745
    .local v4, albumArtIV:Landroid/widget/ImageView;
    const v27, 0x7f070048

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 1746
    .local v25, view:Landroid/widget/ImageView;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v27

    if-eqz v27, :cond_9

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v27

    if-nez v27, :cond_9

    .line 1747
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1748
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1749
    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1677
    .end local v4           #albumArtIV:Landroid/widget/ImageView;
    .end local v10           #genreType:Landroid/widget/TextView;
    .end local v15           #releaseYear:Ljava/lang/String;
    .end local v16           #releaseYearTV:Landroid/widget/TextView;
    .end local v18           #shareOn:Lcom/htc/widget/HtcRimImageButton;
    .end local v24           #v:Landroid/view/View;
    .end local v25           #view:Landroid/widget/ImageView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v27, v0

    const v28, 0x7f030019

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, p3

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    .line 1679
    .restart local v24       #v:Landroid/view/View;
    const v27, 0x7f07004c

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcRimImageButton;

    .line 1680
    .restart local v18       #shareOn:Lcom/htc/widget/HtcRimImageButton;
    if-eqz v18, :cond_4

    .line 1681
    const-string v27, "common_b_circle_outer"

    const v28, 0x2080007

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v27

    const-string v28, "common_b_circle_pressed"

    const v29, 0x2080008

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v28

    const-string v29, "common_b_circle_rest"

    const v30, 0x2080009

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v29

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1685
    const v27, 0x7f020023

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1688
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1689
    .local v17, res:Landroid/content/res/Resources;
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1690
    .local v14, option:Landroid/graphics/BitmapFactory$Options;
    const/16 v27, 0x1

    move/from16 v0, v27

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1691
    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1692
    const v27, 0x7f020040

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1694
    const v27, 0x7f070048

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 1695
    .restart local v25       #view:Landroid/widget/ImageView;
    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v28

    add-int v27, v27, v28

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v28

    add-int v26, v27, v28

    .line 1696
    .local v26, width:I
    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v28

    add-int v27, v27, v28

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v28

    add-int v11, v27, v28

    .line 1697
    .local v11, height:I
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    move/from16 v0, v26

    move-object/from16 v1, v27

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1698
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 1711
    .end local v11           #height:I
    .end local v14           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #res:Landroid/content/res/Resources;
    .end local v25           #view:Landroid/widget/ImageView;
    .end local v26           #width:I
    :cond_5
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 1721
    .restart local v15       #releaseYear:Ljava/lang/String;
    .restart local v16       #releaseYearTV:Landroid/widget/TextView;
    :cond_6
    const/16 v27, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1729
    .restart local v10       #genreType:Landroid/widget/TextView;
    :cond_7
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1739
    .restart local v13       #numTracks:Ljava/lang/String;
    .restart local v23       #trackNumberTV:Landroid/widget/TextView;
    :cond_8
    const v27, 0x7f0600d4

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1755
    .end local v13           #numTracks:Ljava/lang/String;
    .end local v23           #trackNumberTV:Landroid/widget/TextView;
    .restart local v4       #albumArtIV:Landroid/widget/ImageView;
    .restart local v25       #view:Landroid/widget/ImageView;
    :cond_9
    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1776
    .end local v4           #albumArtIV:Landroid/widget/ImageView;
    .end local v10           #genreType:Landroid/widget/TextView;
    .end local v15           #releaseYear:Ljava/lang/String;
    .end local v16           #releaseYearTV:Landroid/widget/TextView;
    .end local v18           #shareOn:Lcom/htc/widget/HtcRimImageButton;
    .end local v24           #v:Landroid/view/View;
    .end local v25           #view:Landroid/widget/ImageView;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    move/from16 v27, v0

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 1778
    if-eqz p2, :cond_b

    .line 1779
    move-object/from16 v24, p2

    .line 1784
    .restart local v24       #v:Landroid/view/View;
    :goto_6
    const v27, 0x7f070044

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1785
    .local v20, textContent:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0600c7

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1786
    .local v5, artistPattern:Ljava/lang/String;
    const-string v27, "%s"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 1787
    const-string v27, "%s"

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1781
    .end local v5           #artistPattern:Ljava/lang/String;
    .end local v20           #textContent:Landroid/widget/TextView;
    .end local v24           #v:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v27, v0

    const v28, 0x7f030017

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, p3

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    .restart local v24       #v:Landroid/view/View;
    goto :goto_6

    .line 1789
    .restart local v5       #artistPattern:Ljava/lang/String;
    .restart local v20       #textContent:Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1795
    .end local v5           #artistPattern:Ljava/lang/String;
    .end local v20           #textContent:Landroid/widget/TextView;
    .end local v24           #v:Landroid/view/View;
    :cond_d
    add-int/lit8 p1, p1, -0x1

    .line 1797
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1798
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v27

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v28

    const-string v29, "title"

    invoke-interface/range {v28 .. v29}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1800
    .local v22, trackName:Ljava/lang/String;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v27

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v28

    const-string v29, "_id"

    invoke-interface/range {v28 .. v29}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1805
    .local v6, audioId:I
    if-eqz p2, :cond_e

    .line 1806
    move-object/from16 v24, p2

    .line 1807
    .restart local v24       #v:Landroid/view/View;
    const v27, 0x7f070046

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcRimImageButton;

    .line 1819
    .local v12, ib:Lcom/htc/widget/HtcRimImageButton;
    :goto_7
    const v27, 0x7f07002a

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/htc/widget/HtcListItem2LineText;

    .line 1821
    .local v21, textView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1822
    const/16 v27, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1827
    const v27, 0x7f070045

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemImageButton;

    .line 1829
    .local v7, badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;
    :try_start_0
    sget-object v27, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v27, :cond_f

    sget-object v27, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface/range {v27 .. v27}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v27

    move/from16 v0, v27

    if-ne v6, v0, :cond_f

    .line 1830
    sget-object v27, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItemImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1831
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1844
    :goto_8
    invoke-virtual {v12}, Lcom/htc/widget/HtcRimImageButton;->getTag()Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_10

    invoke-virtual {v12}, Lcom/htc/widget/HtcRimImageButton;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    move-object/from16 v8, v27

    .line 1845
    .local v8, data:Landroid/os/Bundle;
    :goto_9
    const-string v27, "audioid"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1846
    const-string v27, "position"

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1847
    const-string v27, "trackname"

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v12, v8}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 1849
    new-instance v27, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1859
    new-instance v27, Landroid/view/TouchDelegate;

    new-instance v28, Landroid/graphics/Rect;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenWidth:I
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v29

    const v30, 0x7f090070

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v30

    sub-int v29, v29, v30

    const/16 v30, 0x0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenWidth:I
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v31

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenHeight:I
    invoke-static/range {v19 .. v19}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v32

    invoke-direct/range {v28 .. v32}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_0

    .line 1809
    .end local v7           #badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;
    .end local v8           #data:Landroid/os/Bundle;
    .end local v12           #ib:Lcom/htc/widget/HtcRimImageButton;
    .end local v21           #textView:Lcom/htc/widget/HtcListItem2LineText;
    .end local v24           #v:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v27, v0

    const v28, 0x7f030018

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, p3

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    .line 1810
    .restart local v24       #v:Landroid/view/View;
    const v27, 0x7f070046

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcRimImageButton;

    .line 1811
    .restart local v12       #ib:Lcom/htc/widget/HtcRimImageButton;
    const-string v27, "common_circle_outer"

    const v28, 0x208001f

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v27

    const-string v28, "common_circle_pressed"

    const v29, 0x2080020

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v28

    const-string v29, "common_circle_rest"

    const v30, 0x2080021

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v12, v0, v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1815
    const v27, 0x7f020024

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1816
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    goto/16 :goto_7

    .line 1833
    .restart local v7       #badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;
    .restart local v21       #textView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_f
    const/16 v27, 0x8

    :try_start_1
    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 1835
    :catch_0
    move-exception v9

    .line 1836
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_8

    .line 1844
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_10
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_9
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1886
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 1654
    if-ge p1, v0, :cond_0

    .line 1655
    const/4 v0, 0x0

    .line 1657
    :cond_0
    return v0
.end method
