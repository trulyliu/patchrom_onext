.class public abstract Lcom/scalado/base/Iterator;
.super Lcom/scalado/jni/JniPeer;
.source "Iterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/base/Iterator$CommonIterator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 180
    invoke-static {}, Lcom/scalado/base/Iterator;->nativeClassInit()V

    .line 181
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 104
    return-void
.end method

.method private final complete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/scalado/base/Iterator;->done()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/scalado/base/Iterator;->step()F

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDummy()V
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract done()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public setGranularity(I)V
    .locals 1
    .parameter "ms"

    .prologue
    .line 68
    if-gez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :cond_0
    return-void
.end method

.method protected abstract step()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public step(I)F
    .locals 7
    .parameter "runTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f80

    .line 44
    if-nez p1, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/scalado/base/Iterator;->complete()V

    .line 58
    :cond_0
    :goto_0
    return v4

    .line 49
    :cond_1
    mul-int/lit16 v5, p1, 0x3e8

    int-to-long v0, v5

    .line 50
    .local v0, nanoRunTime:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 52
    .local v2, nanoStartTime:J
    :cond_2
    invoke-virtual {p0}, Lcom/scalado/base/Iterator;->done()Z

    move-result v5

    if-nez v5, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/scalado/base/Iterator;->step()F

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    cmp-long v5, v5, v0

    if-ltz v5, :cond_2

    .line 58
    const/4 v4, 0x0

    goto :goto_0
.end method
