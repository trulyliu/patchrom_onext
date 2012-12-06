.class public Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
.super Lcom/htc/music/util/MemoryCache3DBitmap;
.source "MemoryCache3DBitmapByPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/music/util/MemoryCache3DBitmap",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MemoryCache3DBitmapByPosition]"


# instance fields
.field private mMaxDistance:I

.field private mPosition:I

.field private mQueueLen:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/htc/music/util/MemoryCache3DBitmap;-><init>(I)V

    .line 11
    iput v0, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    .line 12
    iput v0, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    .line 13
    iput v0, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mMaxDistance:I

    .line 17
    iput v0, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    .line 18
    return-void
.end method


# virtual methods
.method protected removeTheLowestPriorityItem(Ljava/lang/Integer;)Z
    .locals 13
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 34
    iget-object v10, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v8

    .line 35
    :cond_1
    if-nez p1, :cond_2

    move v8, v9

    goto :goto_0

    .line 37
    :cond_2
    iget-object v10, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 38
    .local v5, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 39
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 40
    .local v7, lowestPriorityKey:Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 41
    .local v2, compareKey:Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 42
    .local v6, lowestDisparity:I
    const/4 v1, 0x0

    .line 43
    .local v1, compareDisparity:I
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #lowestPriorityKey:Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .line 45
    .restart local v7       #lowestPriorityKey:Ljava/lang/Integer;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #compareKey:Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 47
    .restart local v2       #compareKey:Ljava/lang/Integer;
    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    .line 48
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 49
    iget v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mCount:I

    if-le v10, v11, :cond_4

    iget v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mMaxDistance:I

    if-le v6, v10, :cond_4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    if-ge v10, v11, :cond_4

    .line 51
    iget v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget v12, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v6, v10, v11

    .line 55
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 56
    iget v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mCount:I

    if-le v10, v11, :cond_5

    iget v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mMaxDistance:I

    if-le v1, v10, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    if-ge v10, v11, :cond_5

    .line 58
    iget v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget v12, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v1, v10, v11

    .line 62
    :cond_5
    if-le v1, v6, :cond_3

    .line 63
    move-object v7, v2

    goto :goto_1

    .line 69
    :cond_6
    if-nez v7, :cond_7

    move v8, v9

    .line 70
    goto/16 :goto_0

    .line 74
    :cond_7
    const-string v10, "[MemoryCache3DBitmapByPosition]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "selected position = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, keyDisparity:I
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 77
    iget v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mCount:I

    if-le v10, v11, :cond_8

    iget v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mMaxDistance:I

    if-le v6, v10, :cond_8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    if-ge v10, v11, :cond_8

    .line 79
    iget v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget v12, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v6, v10, v11

    .line 83
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 84
    iget v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mCount:I

    if-le v10, v11, :cond_9

    iget v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mMaxDistance:I

    if-le v4, v10, :cond_9

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    if-ge v10, v11, :cond_9

    .line 86
    iget v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget v12, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v4, v10, v11

    .line 90
    :cond_9
    if-le v4, v6, :cond_a

    move v8, v9

    .line 91
    goto/16 :goto_0

    .line 94
    :cond_a
    iget-object v9, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/SBitmap;

    .line 95
    .local v0, bmp:Lcom/htc/sunnyCore/SBitmap;
    const-string v9, "[MemoryCache3DBitmapByPosition]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "release item: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->releaseItemResource(Lcom/htc/sunnyCore/SBitmap;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic removeTheLowestPriorityItem(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->removeTheLowestPriorityItem(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 21
    if-gez p1, :cond_0

    .line 22
    const/4 p1, 0x0

    .line 24
    :cond_0
    iput p1, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    .line 25
    return-void
.end method

.method public setQueueLength(I)V
    .locals 2
    .parameter "queueLen"

    .prologue
    .line 28
    iput p1, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    .line 29
    iget v0, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mQueueLen:I

    iget v1, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mCount:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mMaxDistance:I

    .line 30
    return-void
.end method
