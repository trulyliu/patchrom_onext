.class public Lcom/htc/music/widget/gridview/TextureMap;
.super Lcom/htc/sunnyCore/common/TextureMap;
.source "TextureMap.java"


# static fields
.field private static final DIRECTION_NODIRECTION:I = 0x0

.field private static final DIRECTION_SCROLL_TO_BOTTOM:I = 0x1

.field private static final DIRECTION_SCROLL_TO_TOP:I = -0x1


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "contentListItemsCount"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    .line 11
    return-void
.end method


# virtual methods
.method public findAValidIndexNotInRange(II)I
    .locals 7
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/TextureMap;->getMinValidIndex()I

    move-result v5

    .line 71
    .local v5, mMinValidIndex:I
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/TextureMap;->getMaxValidIndex()I

    move-result v4

    .line 73
    .local v4, mMaxValidIndex:I
    sub-int v6, p1, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 74
    .local v1, diffTop:I
    sub-int v6, p2, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 79
    .local v0, diffBottom:I
    if-le v1, v0, :cond_3

    .line 81
    if-ltz p1, :cond_2

    if-lt p1, v5, :cond_2

    .line 82
    move v2, v5

    .line 83
    .local v2, i:I
    move v3, p1

    .line 84
    .local v3, limit:I
    :goto_0
    if-gt v2, v3, :cond_2

    iget-object v6, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 85
    iget-object v6, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v6, v6, v2

    if-eqz v6, :cond_1

    .line 123
    .end local v2           #i:I
    .end local v3           #limit:I
    :cond_0
    :goto_1
    return v2

    .line 84
    .restart local v2       #i:I
    .restart local v3       #limit:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v2           #i:I
    .end local v3           #limit:I
    :cond_2
    iget-object v6, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v6, v6

    if-ge p2, v6, :cond_5

    if-lt v4, p2, :cond_5

    .line 91
    move v2, v4

    .line 92
    .restart local v2       #i:I
    move v3, p2

    .line 93
    .restart local v3       #limit:I
    :goto_2
    if-lt v2, v3, :cond_5

    iget-object v6, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_5

    .line 94
    iget-object v6, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v6, v6, v2

    if-nez v6, :cond_0

    .line 93
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 100
    .end local v2           #i:I
    .end local v3           #limit:I
    :cond_3
    iget-object v6, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v6, v6

    if-ge p2, v6, :cond_4

    if-lt v4, p2, :cond_4

    .line 101
    move v2, v4

    .line 102
    .restart local v2       #i:I
    move v3, p2

    .line 103
    .restart local v3       #limit:I
    :goto_3
    if-lt v2, v3, :cond_4

    iget-object v6, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 104
    iget-object v6, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v6, v6, v2

    if-nez v6, :cond_0

    .line 103
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 110
    .end local v2           #i:I
    .end local v3           #limit:I
    :cond_4
    if-ltz p1, :cond_5

    if-lt p1, v5, :cond_5

    .line 111
    move v2, v5

    .line 112
    .restart local v2       #i:I
    move v3, p1

    .line 113
    .restart local v3       #limit:I
    :goto_4
    if-gt v2, v3, :cond_5

    iget-object v6, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_5

    .line 114
    iget-object v6, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v6, v6, v2

    if-nez v6, :cond_0

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 123
    .end local v2           #i:I
    .end local v3           #limit:I
    :cond_5
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public findAValidIndexNotInRange(III)I
    .locals 5
    .parameter "begin"
    .parameter "end"
    .parameter "direction"

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/TextureMap;->getMinValidIndex()I

    move-result v3

    .line 16
    .local v3, mMinValidIndex:I
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/TextureMap;->getMaxValidIndex()I

    move-result v2

    .line 19
    .local v2, mMaxValidIndex:I
    packed-switch p3, :pswitch_data_0

    .line 65
    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    .line 21
    :pswitch_0
    if-ltz p1, :cond_2

    if-lt p1, v3, :cond_2

    .line 22
    move v0, v3

    .line 23
    .local v0, i:I
    move v1, p1

    .line 24
    .local v1, limit:I
    :goto_1
    if-gt v0, v1, :cond_2

    iget-object v4, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 25
    iget-object v4, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v4, v4, v0

    if-nez v4, :cond_1

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    .end local v0           #i:I
    .end local v1           #limit:I
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v4, v4

    if-ge p2, v4, :cond_0

    if-lt v2, p2, :cond_0

    .line 31
    move v0, v2

    .line 32
    .restart local v0       #i:I
    move v1, p2

    .line 33
    .restart local v1       #limit:I
    :goto_2
    if-lt v0, v1, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 34
    iget-object v4, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v4, v4, v0

    if-nez v4, :cond_1

    .line 33
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 41
    .end local v0           #i:I
    .end local v1           #limit:I
    :pswitch_1
    iget-object v4, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v4, v4

    if-ge p2, v4, :cond_3

    if-lt v2, p2, :cond_3

    .line 42
    move v0, v2

    .line 43
    .restart local v0       #i:I
    move v1, p2

    .line 44
    .restart local v1       #limit:I
    :goto_3
    if-lt v0, v1, :cond_3

    iget-object v4, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 45
    iget-object v4, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v4, v4, v0

    if-nez v4, :cond_1

    .line 44
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 51
    .end local v0           #i:I
    .end local v1           #limit:I
    :cond_3
    if-ltz p1, :cond_0

    if-lt p1, v3, :cond_0

    .line 52
    move v0, v3

    .line 53
    .restart local v0       #i:I
    move v1, p1

    .line 54
    .restart local v1       #limit:I
    :goto_4
    if-gt v0, v1, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/htc/music/widget/gridview/TextureMap;->mTextures:[Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;

    aget-object v4, v4, v0

    if-nez v4, :cond_1

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 62
    .end local v0           #i:I
    .end local v1           #limit:I
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/widget/gridview/TextureMap;->findAValidIndexNotInRange(II)I

    move-result v0

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
