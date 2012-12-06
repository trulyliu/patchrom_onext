.class public Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
.super Ljava/lang/Object;
.source "MusicGridViewItemParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    }
.end annotation


# static fields
.field public static final BACKGROUND:I = 0x1

.field public static final ITEM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "[MusicGridViewItemParams]"

.field public static final TEXTLAYOUT:I = 0x4

.field public static final THUMBNAIL:I = 0x3


# instance fields
.field private itemH:I

.field private itemW:I

.field private mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mContext:Landroid/content/Context;

.field private mSelector:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private numFolderImage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemW:I

    .line 40
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemH:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->numFolderImage:I

    .line 51
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private setViewItemBoundary(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v3, -0x1

    .line 235
    iget v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    if-gtz v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 239
    const-string v2, "[MusicGridViewItemParams]"

    const-string v3, "mContext is null while trying to getBitmapBoundary"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_2
    iget v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    if-eq v2, v3, :cond_3

    iget v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    if-ne v2, v3, :cond_0

    .line 243
    :cond_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 245
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 246
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 247
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 248
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[MusicGridViewItemParams]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable get bitmap boundary from file, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v2, 0x0

    iput v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iput v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 194
    .local v0, itemParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->cloneViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 196
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->cloneViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 197
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->cloneViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 199
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemH:I

    iput v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemH:I

    .line 200
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemW:I

    iput v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemW:I

    .line 201
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->numFolderImage:I

    iput v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->numFolderImage:I

    .line 202
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->clone()Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    move-result-object v0

    return-object v0
.end method

.method public cloneViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    .locals 3
    .parameter "type"

    .prologue
    .line 71
    packed-switch p1, :pswitch_data_0

    .line 85
    :pswitch_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 73
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 87
    .local v1, oldParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    :goto_1
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 88
    .local v0, newParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    iput v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 89
    iget v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    iput v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 90
    iget v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iput v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 91
    iget v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    iput v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 92
    iget v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    iput v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 93
    iget v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    iput v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    goto :goto_0

    .line 79
    .end local v0           #newParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    .end local v1           #oldParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    :pswitch_2
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 80
    .restart local v1       #oldParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    goto :goto_1

    .line 82
    .end local v1           #oldParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    :pswitch_3
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 83
    .restart local v1       #oldParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getHeight(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 143
    packed-switch p1, :pswitch_data_0

    .line 153
    :pswitch_0
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemH:I

    :goto_0
    return v0

    .line 145
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    goto :goto_0

    .line 151
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMarginTop(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 183
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 175
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    goto :goto_0

    .line 181
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNumFolderImage()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->numFolderImage:I

    return v0
.end method

.method public getResId(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 168
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    goto :goto_0

    .line 166
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    .locals 1
    .parameter "type"

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 65
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    goto :goto_0

    .line 63
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getWidth(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 138
    :pswitch_0
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemW:I

    :goto_0
    return v0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    goto :goto_0

    .line 136
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setItemHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 206
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemH:I

    .line 207
    return-void
.end method

.method public setItemWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 210
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemW:I

    .line 211
    return-void
.end method

.method public setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V
    .locals 0
    .parameter "params"
    .parameter "type"

    .prologue
    .line 214
    packed-switch p2, :pswitch_data_0

    .line 232
    :goto_0
    :pswitch_0
    return-void

    .line 216
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemBoundary(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;)V

    .line 217
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    goto :goto_0

    .line 224
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemBoundary(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;)V

    .line 225
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    goto :goto_0

    .line 229
    :pswitch_3
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
