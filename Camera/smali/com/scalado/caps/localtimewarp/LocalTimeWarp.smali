.class public Lcom/scalado/caps/localtimewarp/LocalTimeWarp;
.super Lcom/scalado/jni/JniPeer;
.source "LocalTimeWarp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;
    }
.end annotation


# instance fields
.field private sources:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<",
            "Lcom/scalado/caps/Decoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 183
    invoke-static {}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->nativeClassInit()V

    .line 184
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->sources:Ljava/util/AbstractList;

    .line 53
    invoke-direct {p0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->nativeCreate()V

    .line 54
    return-void
.end method

.method private native nativeAddSource(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCommit()V
.end method

.method private native nativeCreate()V
.end method

.method private native nativeDiscard()V
.end method

.method private native nativeSetBackgroundSource(I)V
.end method

.method private native nativeSetPriority(I)V
.end method

.method private native nativeSetReplaceArea(Lcom/scalado/base/Rect;II)V
.end method

.method private native nativeSetReplaceSource(I)V
.end method

.method private native nativeUpdate()V
.end method


# virtual methods
.method public addSource(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->nativeAddSource(Lcom/scalado/caps/Decoder;)V

    .line 65
    iget-object v0, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->sources:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public commit()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->nativeCommit()V

    .line 149
    return-void
.end method

.method public discard()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->nativeDiscard()V

    .line 156
    return-void
.end method

.method public getDecoder()Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-direct {v0, p0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;-><init>(Lcom/scalado/caps/localtimewarp/LocalTimeWarp;)V

    return-object v0
.end method

.method public getNumberOfSources()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->sources:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->size()I

    move-result v0

    return v0
.end method

.method public setBackgroundSource(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 83
    if-gez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->nativeSetBackgroundSource(I)V

    .line 87
    return-void
.end method

.method public setPriority(Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)V
    .locals 1
    .parameter "priority"

    .prologue
    .line 134
    #getter for: Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->intValue:I
    invoke-static {p1}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->access$000(Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->nativeSetPriority(I)V

    .line 135
    return-void
.end method

.method public setReplaceArea(Lcom/scalado/base/Rect;II)V
    .locals 2
    .parameter "innerRect"
    .parameter "feathering"
    .parameter "maxTranslation"

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "innerRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    if-gez p2, :cond_1

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feathering must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    if-gez p3, :cond_2

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxTranslation must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->nativeSetReplaceArea(Lcom/scalado/base/Rect;II)V

    .line 107
    return-void
.end method

.method public setReplaceSource(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 114
    if-gez p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->nativeSetReplaceSource(I)V

    .line 118
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->nativeUpdate()V

    .line 142
    return-void
.end method
