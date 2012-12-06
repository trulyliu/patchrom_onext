.class public Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;
.super Lcom/htc/music/util/MemoryCacheBase;
.source "MemoryCacheDecodeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/music/util/MemoryCacheBase",
        "<TK;",
        "Lcom/htc/music/widget/gridview/DecodeTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MemoryCacheDecodeTask]"


# instance fields
.field protected mCount:I

.field protected mRefCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "count"

    .prologue
    .local p0, this:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;,"Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask<TK;>;"
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Lcom/htc/music/util/MemoryCacheBase;-><init>()V

    .line 8
    iput v0, p0, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->mRefCount:I

    .line 12
    iput p1, p0, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->mCount:I

    .line 13
    iput v0, p0, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->mRefCount:I

    .line 14
    return-void
.end method


# virtual methods
.method public checkCapacity()Z
    .locals 2

    .prologue
    .line 38
    .local p0, this:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;,"Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask<TK;>;"
    iget-object v0, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->mCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 47
    .local p0, this:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;,"Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask<TK;>;"
    iget-object v5, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 48
    .local v4, taskArray:[Ljava/lang/Object;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 49
    .local v3, task:Ljava/lang/Object;
    check-cast v3, Lcom/htc/music/widget/gridview/DecodeTask;

    .end local v3           #task:Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/DecodeTask;->releaseResources()V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iget-object v5, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 52
    return-void
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;,"Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask<TK;>;"
    iget v0, p0, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->mCount:I

    return v0
.end method

.method public releaseItemBitmap(Lcom/htc/music/widget/gridview/DecodeTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 26
    .local p0, this:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;,"Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask<TK;>;"
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/htc/music/widget/gridview/DecodeTask;->releaseBitmap()V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    const-string v0, "[MemoryCacheDecodeTask]"

    const-string v1, "releaseItemBitmap : task = null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected releaseItemResource(Lcom/htc/music/widget/gridview/DecodeTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 18
    .local p0, this:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;,"Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask<TK;>;"
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/htc/music/widget/gridview/DecodeTask;->releaseResources()V

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    const-string v0, "[MemoryCacheDecodeTask]"

    const-string v1, "releaseItemResource : task = null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic releaseItemResource(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    .local p0, this:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;,"Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask<TK;>;"
    check-cast p1, Lcom/htc/music/widget/gridview/DecodeTask;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->releaseItemResource(Lcom/htc/music/widget/gridview/DecodeTask;)V

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 42
    .local p0, this:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;,"Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask<TK;>;"
    iget-object v0, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    goto :goto_0
.end method
