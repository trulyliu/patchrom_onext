.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CarLocalMusicSearchActivity.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/carmode/CarLocalMusicSearchActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mDebug:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mItemViewResId:I

.field private final mNoResultViewResId:I

.field private final mSubTitleViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1029
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1025
    const v0, 0x7f030029

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mSubTitleViewResId:I

    .line 1026
    const v0, 0x7f030008

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mItemViewResId:I

    .line 1027
    const v0, 0x7f030017

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mNoResultViewResId:I

    .line 1064
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    .line 1031
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1033
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 1036
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1038
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1039
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1040
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1042
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1043
    .local v8, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v8, :cond_1

    .line 1044
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v8}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Lcom/htc/music/util/DlArtAsyncImageDecoder;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v1, p1

    move-object v2, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/DlArtAsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v8, v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4402(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Lcom/htc/music/util/DlArtAsyncImageDecoder;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 1056
    :goto_0
    return-void

    .line 1049
    :cond_0
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "SearchListAdapter...mAsyncImageDecoder is not null, don\'t new it again..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1053
    :cond_1
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "SearchListAdapter, tempActivity is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 1287
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1288
    .local v0, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1289
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1294
    :goto_0
    return v1

    .line 1291
    :cond_0
    const-string v1, "[CarLocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getCount, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 1299
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1300
    .local v0, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1301
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1305
    :goto_0
    return-object v1

    .line 1303
    :cond_0
    const-string v1, "[CarLocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getItem, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1310
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 1315
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1316
    .local v0, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1317
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getItemViewType(I)I
    invoke-static {v0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    move-result v1

    .line 1322
    :goto_0
    return v1

    .line 1319
    :cond_0
    const-string v1, "[CarLocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getItemViewType, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1069
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    if-eqz v2, :cond_0

    .line 1070
    const-string v2, "[CarLocalMusicSearchActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "], getView +++++"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1073
    .local v20, startTime:J
    const/16 v16, 0x0

    .line 1074
    .local v16, itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1075
    .local v23, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v23, :cond_3

    .line 1076
    if-ltz p1, :cond_1

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-ge v0, v2, :cond_1

    .line 1077
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    check-cast v16, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 1083
    .restart local v16       #itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    :cond_1
    :goto_0
    if-nez v16, :cond_4

    move-object/from16 v25, p2

    .line 1282
    :cond_2
    :goto_1
    return-object v25

    .line 1080
    :cond_3
    const-string v2, "[CarLocalMusicSearchActivity]"

    const-string v3, "SearchListAdapter, getItem, tempActivity is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1088
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->getItemViewType(I)I

    move-result v26

    .line 1089
    .local v26, viewType:I
    const/16 v25, 0x0

    .line 1091
    .local v25, v:Landroid/view/View;
    const/4 v12, 0x0

    .line 1093
    .local v12, holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    const/4 v14, 0x1

    .line 1094
    .local v14, isNeedToReInflate:Z
    if-eqz p2, :cond_6

    .line 1095
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    check-cast v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .line 1101
    .restart local v12       #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    iget v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    move/from16 v0, v26

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    move/from16 v0, v26

    if-eq v2, v0, :cond_5

    const/4 v2, 0x2

    iget v3, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    if-eq v2, v3, :cond_5

    const/4 v2, 0x6

    move/from16 v0, v26

    if-eq v2, v0, :cond_5

    const/4 v2, 0x6

    iget v3, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    if-ne v2, v3, :cond_8

    .line 1104
    :cond_5
    const/4 v14, 0x1

    .line 1110
    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-eqz v14, :cond_10

    .line 1111
    :cond_7
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_9

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030029

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    .line 1113
    const v2, 0x7f07005e

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/htc/widget/HtcListItemSeparator;

    .line 1115
    .local v22, subTitle:Lcom/htc/widget/HtcListItemSeparator;
    const/4 v2, 0x0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 1117
    new-instance v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .end local v12           #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    invoke-direct {v12}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    .line 1118
    .restart local v12       #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    move/from16 v0, v26

    iput v0, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1119
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1121
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    if-eqz v2, :cond_2

    .line 1122
    const-string v2, "[CarLocalMusicSearchActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView ----- time cost: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v20

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1106
    .end local v22           #subTitle:Lcom/htc/widget/HtcListItemSeparator;
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    .line 1127
    :cond_9
    const/4 v2, 0x6

    move/from16 v0, v26

    if-ne v2, v0, :cond_c

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030017

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    .line 1129
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v2, :cond_b

    move-object/from16 v15, v25

    .line 1130
    check-cast v15, Lcom/htc/widget/HtcListItem;

    .line 1131
    .local v15, item:Lcom/htc/widget/HtcListItem;
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lcom/htc/widget/HtcListItem;->setAutoMotiveMode(Z)V

    .line 1132
    invoke-virtual {v15}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v11

    .line 1133
    .local v11, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    if-ge v13, v11, :cond_b

    .line 1134
    invoke-virtual {v15, v13}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1135
    .local v10, child:Landroid/view/View;
    instance-of v2, v10, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    if-eqz v2, :cond_a

    .line 1136
    check-cast v10, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    .end local v10           #child:Landroid/view/View;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Lcom/htc/widget/IHtcListItemAutoMotiveControl;->setAutoMotiveMode(Z)V

    .line 1133
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1140
    .end local v11           #count:I
    .end local v13           #i:I
    .end local v15           #item:Lcom/htc/widget/HtcListItem;
    :cond_b
    const v2, 0x7f070044

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1141
    .local v17, itemText:Landroid/widget/TextView;
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    new-instance v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .end local v12           #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    invoke-direct {v12}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    .line 1144
    .restart local v12       #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    move/from16 v0, v26

    iput v0, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1145
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1147
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    if-eqz v2, :cond_2

    .line 1148
    const-string v2, "[CarLocalMusicSearchActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView ----- time cost: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v20

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1154
    .end local v17           #itemText:Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030008

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    .line 1155
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v2, :cond_e

    move-object/from16 v15, v25

    .line 1156
    check-cast v15, Lcom/htc/widget/HtcListItem;

    .line 1157
    .restart local v15       #item:Lcom/htc/widget/HtcListItem;
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lcom/htc/widget/HtcListItem;->setAutoMotiveMode(Z)V

    .line 1158
    invoke-virtual {v15}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v11

    .line 1159
    .restart local v11       #count:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_4
    if-ge v13, v11, :cond_e

    .line 1160
    invoke-virtual {v15, v13}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1161
    .restart local v10       #child:Landroid/view/View;
    instance-of v2, v10, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    if-eqz v2, :cond_d

    .line 1162
    check-cast v10, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    .end local v10           #child:Landroid/view/View;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Lcom/htc/widget/IHtcListItemAutoMotiveControl;->setAutoMotiveMode(Z)V

    .line 1159
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1167
    .end local v11           #count:I
    .end local v13           #i:I
    .end local v15           #item:Lcom/htc/widget/HtcListItem;
    :cond_e
    new-instance v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .end local v12           #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    invoke-direct {v12}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    .line 1168
    .restart local v12       #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    const v2, 0x7f07001f

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1170
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v2, :cond_f

    .line 1171
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setDarkMode(Z)V

    .line 1173
    :cond_f
    const v2, 0x7f070020

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 1175
    move/from16 v0, v26

    iput v0, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1176
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1208
    :goto_5
    if-nez v12, :cond_13

    .line 1209
    const-string v2, "[CarLocalMusicSearchActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "], getView, holder is null!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1179
    :cond_10
    move-object/from16 v25, p2

    .line 1181
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_11

    .line 1182
    const v2, 0x7f07005e

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/htc/widget/HtcListItemSeparator;

    .line 1184
    .restart local v22       #subTitle:Lcom/htc/widget/HtcListItemSeparator;
    const/4 v2, 0x0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 1186
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    if-eqz v2, :cond_2

    .line 1187
    const-string v2, "[CarLocalMusicSearchActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView ----- time cost: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v20

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1192
    .end local v22           #subTitle:Lcom/htc/widget/HtcListItemSeparator;
    :cond_11
    const/4 v2, 0x6

    move/from16 v0, v26

    if-ne v2, v0, :cond_12

    .line 1193
    const v2, 0x7f070044

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1194
    .restart local v17       #itemText:Landroid/widget/TextView;
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    if-eqz v2, :cond_2

    .line 1197
    const-string v2, "[CarLocalMusicSearchActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView ----- time cost: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v20

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1203
    .end local v17           #itemText:Landroid/widget/TextView;
    :cond_12
    move/from16 v0, v26

    iput v0, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1204
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1217
    :cond_13
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_16

    .line 1218
    const/4 v2, 0x3

    move/from16 v0, v26

    if-eq v2, v0, :cond_14

    const/4 v2, 0x4

    move/from16 v0, v26

    if-ne v2, v0, :cond_19

    .line 1219
    :cond_14
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 1220
    .local v18, key:Ljava/lang/String;
    if-eqz v18, :cond_15

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1221
    :cond_15
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1227
    :goto_6
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1248
    .end local v18           #key:Ljava/lang/String;
    :cond_16
    :goto_7
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v2, :cond_17

    .line 1249
    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v2, v0, :cond_1c

    .line 1250
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1280
    :cond_17
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    if-eqz v2, :cond_2

    .line 1281
    const-string v2, "[CarLocalMusicSearchActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView ----- time cost: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v20

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1223
    .restart local v18       #key:Ljava/lang/String;
    :cond_18
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1225
    .local v19, markedString:Ljava/lang/CharSequence;
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1230
    .end local v18           #key:Ljava/lang/String;
    .end local v19           #markedString:Ljava/lang/CharSequence;
    :cond_19
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 1231
    .restart local v18       #key:Ljava/lang/String;
    if-eqz v18, :cond_1a

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1232
    :cond_1a
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1239
    :goto_9
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1240
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_7

    .line 1234
    :cond_1b
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1236
    .restart local v19       #markedString:Ljava/lang/CharSequence;
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1252
    .end local v18           #key:Ljava/lang/String;
    .end local v19           #markedString:Ljava/lang/CharSequence;
    :cond_1c
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1254
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 1257
    .local v9, cacheBmp:Landroid/graphics/Bitmap;
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 1259
    if-eqz v9, :cond_1d

    .line 1261
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    .line 1264
    :cond_1d
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1265
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getArtPath()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v4

    .line 1266
    .local v4, albumArtpath:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getAlbum()Ljava/lang/String;

    move-result-object v7

    .line 1267
    .local v7, name:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getAlbumKey()Ljava/lang/String;

    move-result-object v8

    .line 1268
    .local v8, albumKey:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "<unknown>"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1e
    const/16 v24, 0x1

    .line 1270
    .local v24, unknown:Z
    :goto_a
    if-nez v24, :cond_1f

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1271
    iget-object v2, v12, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 1268
    .end local v24           #unknown:Z
    :cond_20
    const/16 v24, 0x0

    goto :goto_a

    .line 1273
    .restart local v24       #unknown:Z
    :cond_21
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v5, p1

    move/from16 v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 1327
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1328
    .local v0, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v0, :cond_1

    .line 1329
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getItemViewType(I)I
    invoke-static {v0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    move-result v1

    .line 1330
    .local v1, viewType:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1331
    :cond_0
    const/4 v2, 0x0

    .line 1335
    .end local v1           #viewType:I
    :goto_0
    return v2

    .line 1333
    :cond_1
    const-string v2, "[CarLocalMusicSearchActivity]"

    const-string v3, "SearchListAdapter, getItemViewType, tempActivity is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v2

    goto :goto_0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 10
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 1340
    if-nez p2, :cond_1

    .line 1341
    const-string v7, "[CarLocalMusicSearchActivity]"

    const-string v8, "onImageDecoded: bitmap is null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    const-string v7, "[CarLocalMusicSearchActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#### onImageDecoded ,pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bitmap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v7, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1347
    .local v6, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v6, :cond_3

    .line 1348
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 1349
    .local v2, childCount:I
    if-lez v2, :cond_0

    .line 1353
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 1354
    .local v0, addedToCache:Z
    if-eqz v0, :cond_0

    .line 1355
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 1356
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1358
    .local v5, ll:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1359
    const v7, 0x7f07001f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1361
    .local v1, albumArt:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1362
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1364
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 1365
    const-string v7, "[CarLocalMusicSearchActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#### onImageDecoded ,pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Set album art!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .end local v1           #albumArt:Landroid/view/View;
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1355
    .end local v4           #integer:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1375
    .end local v0           #addedToCache:Z
    .end local v2           #childCount:I
    .end local v3           #i:I
    .end local v5           #ll:Landroid/view/View;
    :cond_3
    const-string v7, "[CarLocalMusicSearchActivity]"

    const-string v8, "SearchListAdapter, onImageDecoded, tempActivity is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setActivity(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V
    .locals 1
    .parameter "newactivity"

    .prologue
    .line 1381
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 1382
    return-void
.end method
