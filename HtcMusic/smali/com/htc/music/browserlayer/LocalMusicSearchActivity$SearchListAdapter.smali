.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocalMusicSearchActivity.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/browserlayer/LocalMusicSearchActivity;",
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
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 963
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 959
    const v0, 0x7f03002a

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mSubTitleViewResId:I

    .line 960
    const v0, 0x7f030008

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mItemViewResId:I

    .line 961
    const v0, 0x7f030017

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mNoResultViewResId:I

    .line 999
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    .line 965
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 967
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 970
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 972
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 973
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 974
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 976
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    .line 977
    .local v8, tempActivity:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
    if-eqz v8, :cond_1

    .line 978
    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v8}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 980
    new-instance v0, Lcom/htc/music/util/DlArtAsyncImageDecoder;

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v1, p1

    move-object v2, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/DlArtAsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v8, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4102(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Lcom/htc/music/util/DlArtAsyncImageDecoder;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 991
    :goto_0
    return-void

    .line 984
    :cond_0
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "SearchListAdapter...mAsyncImageDecoder is not null, don\'t new it again..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 988
    :cond_1
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "SearchListAdapter, tempActivity is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 1195
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    .line 1196
    .local v0, tempActivity:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1197
    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1203
    :goto_0
    return v1

    .line 1200
    :cond_0
    const-string v1, "[LocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getCount, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 1208
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    .line 1209
    .local v0, tempActivity:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1210
    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1215
    :goto_0
    return-object v1

    .line 1213
    :cond_0
    const-string v1, "[LocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getItem, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1220
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 1225
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    .line 1226
    .local v0, tempActivity:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1227
    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getItemViewType(I)I
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    move-result v1

    .line 1233
    :goto_0
    return v1

    .line 1230
    :cond_0
    const-string v1, "[LocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getItemViewType, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1004
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "[LocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], getView +++++"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1007
    .local v15, startTime:J
    const/4 v11, 0x0

    .line 1008
    .local v11, itemInfo:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    .line 1009
    .local v18, tempActivity:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
    if-eqz v18, :cond_3

    .line 1010
    if-ltz p1, :cond_1

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p1

    if-ge v0, v1, :cond_1

    .line 1011
    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #itemInfo:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    check-cast v11, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    .line 1018
    .restart local v11       #itemInfo:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    :cond_1
    :goto_0
    if-nez v11, :cond_4

    move-object/from16 v20, p2

    .line 1190
    :cond_2
    :goto_1
    return-object v20

    .line 1015
    :cond_3
    const-string v1, "[LocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getItem, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1023
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->getItemViewType(I)I

    move-result v21

    .line 1024
    .local v21, viewType:I
    const/16 v20, 0x0

    .line 1026
    .local v20, v:Landroid/view/View;
    const/4 v9, 0x0

    .line 1028
    .local v9, holder:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    const/4 v10, 0x1

    .line 1029
    .local v10, isNeedToReInflate:Z
    if-eqz p2, :cond_6

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #holder:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    check-cast v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .line 1036
    .restart local v9       #holder:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    iget v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    move/from16 v0, v21

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    move/from16 v0, v21

    if-eq v1, v0, :cond_5

    const/4 v1, 0x2

    iget v2, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    if-eq v1, v2, :cond_5

    const/4 v1, 0x6

    move/from16 v0, v21

    if-eq v1, v0, :cond_5

    const/4 v1, 0x6

    iget v2, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    if-ne v1, v2, :cond_8

    .line 1041
    :cond_5
    const/4 v10, 0x1

    .line 1048
    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-eqz v10, :cond_b

    .line 1049
    :cond_7
    const/4 v1, 0x2

    move/from16 v0, v21

    if-ne v0, v1, :cond_9

    .line 1050
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002a

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 1051
    const v1, 0x7f07005e

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/htc/widget/HtcListItemSeparator;

    .line 1052
    .local v17, subTitle:Lcom/htc/widget/HtcListItemSeparator;
    const/4 v1, 0x0

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 1053
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 1055
    new-instance v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .end local v9           #holder:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    invoke-direct {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    .line 1056
    .restart local v9       #holder:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    move/from16 v0, v21

    iput v0, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1057
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1059
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "[LocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView ----- time cost: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v15

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1044
    .end local v17           #subTitle:Lcom/htc/widget/HtcListItemSeparator;
    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .line 1063
    :cond_9
    const/4 v1, 0x6

    move/from16 v0, v21

    if-ne v1, v0, :cond_a

    .line 1064
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030017

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 1065
    const v1, 0x7f070044

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1066
    .local v12, itemText:Landroid/widget/TextView;
    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    new-instance v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .end local v9           #holder:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    invoke-direct {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    .line 1069
    .restart local v9       #holder:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    move/from16 v0, v21

    iput v0, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1070
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1072
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "[LocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView ----- time cost: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v15

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1077
    .end local v12           #itemText:Landroid/widget/TextView;
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030008

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 1078
    new-instance v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .end local v9           #holder:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    invoke-direct {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    .line 1079
    .restart local v9       #holder:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    const v1, 0x7f07001f

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1080
    const v1, 0x7f070020

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 1081
    move/from16 v0, v21

    iput v0, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1082
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1110
    :goto_3
    if-nez v9, :cond_e

    .line 1111
    const-string v1, "[LocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], getView, holder is null!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1085
    :cond_b
    move-object/from16 v20, p2

    .line 1087
    const/4 v1, 0x2

    move/from16 v0, v21

    if-ne v0, v1, :cond_c

    .line 1088
    const v1, 0x7f07005e

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/htc/widget/HtcListItemSeparator;

    .line 1089
    .restart local v17       #subTitle:Lcom/htc/widget/HtcListItemSeparator;
    const/4 v1, 0x0

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 1090
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 1092
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "[LocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView ----- time cost: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v15

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1096
    .end local v17           #subTitle:Lcom/htc/widget/HtcListItemSeparator;
    :cond_c
    const/4 v1, 0x6

    move/from16 v0, v21

    if-ne v1, v0, :cond_d

    .line 1097
    const v1, 0x7f070044

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1098
    .restart local v12       #itemText:Landroid/widget/TextView;
    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "[LocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView ----- time cost: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v15

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1105
    .end local v12           #itemText:Landroid/widget/TextView;
    :cond_d
    move/from16 v0, v21

    iput v0, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1106
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1118
    :cond_e
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v1, :cond_f

    .line 1119
    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v1, v0, :cond_12

    .line 1120
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1121
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1154
    :cond_f
    :goto_4
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v1, :cond_11

    .line 1155
    const/4 v1, 0x1

    move/from16 v0, v21

    if-eq v1, v0, :cond_10

    const/4 v1, 0x3

    move/from16 v0, v21

    if-ne v1, v0, :cond_19

    .line 1157
    :cond_10
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1189
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "[LocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView ----- time cost: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v15

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1123
    :cond_12
    const/4 v1, 0x3

    move/from16 v0, v21

    if-eq v1, v0, :cond_13

    const/4 v1, 0x4

    move/from16 v0, v21

    if-ne v1, v0, :cond_16

    .line 1124
    :cond_13
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1125
    .local v13, key:Ljava/lang/String;
    if-eqz v13, :cond_14

    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1126
    :cond_14
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1132
    :goto_6
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_4

    .line 1129
    :cond_15
    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v0, v1, v13}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1130
    .local v14, markedString:Ljava/lang/CharSequence;
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1136
    .end local v13           #key:Ljava/lang/String;
    .end local v14           #markedString:Ljava/lang/CharSequence;
    :cond_16
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1137
    .restart local v13       #key:Ljava/lang/String;
    if-eqz v13, :cond_17

    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1138
    :cond_17
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1145
    :goto_7
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1146
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1141
    :cond_18
    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v0, v1, v13}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1142
    .restart local v14       #markedString:Ljava/lang/CharSequence;
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1160
    .end local v13           #key:Ljava/lang/String;
    .end local v14           #markedString:Ljava/lang/CharSequence;
    :cond_19
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1162
    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 1165
    .local v8, cacheBmp:Landroid/graphics/Bitmap;
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 1167
    if-eqz v8, :cond_1a

    .line 1169
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 1173
    :cond_1a
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1174
    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getArtPath()Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v3

    .line 1175
    .local v3, albumArtpath:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getAlbum()Ljava/lang/String;

    move-result-object v6

    .line 1176
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getAlbumKey()Ljava/lang/String;

    move-result-object v7

    .line 1177
    .local v7, albumKey:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "<unknown>"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1b
    const/16 v19, 0x1

    .line 1179
    .local v19, unknown:Z
    :goto_8
    if-nez v19, :cond_1c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1180
    iget-object v1, v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 1177
    .end local v19           #unknown:Z
    :cond_1d
    const/16 v19, 0x0

    goto :goto_8

    .line 1182
    .restart local v19       #unknown:Z
    :cond_1e
    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v4, p1

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 1238
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    .line 1239
    .local v0, tempActivity:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
    if-eqz v0, :cond_1

    .line 1240
    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getItemViewType(I)I
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    move-result v1

    .line 1241
    .local v1, viewType:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1242
    :cond_0
    const/4 v2, 0x0

    .line 1247
    .end local v1           #viewType:I
    :goto_0
    return v2

    .line 1245
    :cond_1
    const-string v2, "[LocalMusicSearchActivity]"

    const-string v3, "SearchListAdapter, getItemViewType, tempActivity is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
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
    .line 1253
    if-nez p2, :cond_1

    .line 1254
    const-string v7, "[LocalMusicSearchActivity]"

    const-string v8, "onImageDecoded: bitmap is null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    const-string v7, "[LocalMusicSearchActivity]"

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

    .line 1259
    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    .line 1260
    .local v6, tempActivity:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
    if-eqz v6, :cond_3

    .line 1261
    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 1262
    .local v2, childCount:I
    if-lez v2, :cond_0

    .line 1266
    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 1267
    .local v0, addedToCache:Z
    if-eqz v0, :cond_0

    .line 1268
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 1269
    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1271
    .local v5, ll:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1272
    const v7, 0x7f07001f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1274
    .local v1, albumArt:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1275
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1277
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 1278
    const-string v7, "[LocalMusicSearchActivity]"

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

    .line 1279
    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .end local v1           #albumArt:Landroid/view/View;
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1268
    .end local v4           #integer:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1288
    .end local v0           #addedToCache:Z
    .end local v2           #childCount:I
    .end local v3           #i:I
    .end local v5           #ll:Landroid/view/View;
    :cond_3
    const-string v7, "[LocalMusicSearchActivity]"

    const-string v8, "SearchListAdapter, onImageDecoded, tempActivity is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V
    .locals 1
    .parameter "newactivity"

    .prologue
    .line 1294
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 1295
    return-void
.end method
