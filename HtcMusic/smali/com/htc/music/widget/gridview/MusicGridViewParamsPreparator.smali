.class public Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
.super Ljava/lang/Object;
.source "MusicGridViewParamsPreparator.java"

# interfaces
.implements Lcom/htc/sunnyCore/IParamsPreparator;


# static fields
.field static final MAX_DIMENSION:I = 0x200

.field static final MIN_DIMENSION:I = 0x20

.field static final TAG:Ljava/lang/String; = "MusicGridViewParamsPreparator"


# instance fields
.field private mCacheSize:I

.field mDimension:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .parameter "dim"
    .parameter "cacheSize"

    .prologue
    const/16 v0, 0x200

    const/4 v1, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->mDimension:I

    .line 14
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->mCacheSize:I

    .line 18
    if-ltz p1, :cond_0

    .line 27
    if-le v0, p1, :cond_2

    :goto_0
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->mDimension:I

    .line 29
    :cond_0
    if-gtz p2, :cond_1

    const/16 p2, 0x3c

    .end local p2
    :cond_1
    iput p2, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->mCacheSize:I

    .line 30
    const-string v0, "MusicGridViewParamsPreparator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input dimension = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", the best fit dimension = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->mDimension:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void

    .restart local p2
    :cond_2
    move v0, p1

    .line 27
    goto :goto_0
.end method


# virtual methods
.method public enableBorder()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public enableFileCache()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheSet()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->mDimension:I

    return v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileCacheSize()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTextureCount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->mCacheSize:I

    return v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getSpecialMode()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableBorder()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableFileCache()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableViewBackgroundDecode()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public setCacheSet(I)V
    .locals 0
    .parameter "nCacheSet"

    .prologue
    .line 55
    return-void
.end method

.method public setDimension(I)V
    .locals 0
    .parameter "nDimension"

    .prologue
    .line 47
    if-ltz p1, :cond_0

    .line 48
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->mDimension:I

    .line 50
    :cond_0
    return-void
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 113
    return-void
.end method
