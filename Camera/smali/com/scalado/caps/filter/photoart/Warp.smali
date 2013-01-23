.class public final Lcom/scalado/caps/filter/photoart/Warp;
.super Lcom/scalado/caps/Filter;
.source "Warp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;
    }
.end annotation


# instance fields
.field activeRegions:[Lcom/scalado/base/Rect;

.field strength:F

.field warpEffect:Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;

.field warptableBuffer:Lcom/scalado/base/Buffer;

.field warptableFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 191
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Warp;->nativeClassInit()V

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 18
    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    .line 20
    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->activeRegions:[Lcom/scalado/base/Rect;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->strength:F

    .line 56
    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Warp;->setHasActiveFilter(Z)V

    .line 57
    return-void
.end method

.method private native nativeApplyWarpFromBuffer(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Buffer;)V
.end method

.method private native nativeApplyWarpFromFile(Lcom/scalado/caps/Decoder;Ljava/lang/String;)V
.end method

.method private native nativeBeginAndSetWarpIndex(Lcom/scalado/caps/Decoder;[Lcom/scalado/base/Rect;IF)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEndWarpIndex(Lcom/scalado/caps/Decoder;)V
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "decoder"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarpFromFile(Lcom/scalado/caps/Decoder;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarpFromBuffer(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Buffer;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->activeRegions:[Lcom/scalado/base/Rect;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->activeRegions:[Lcom/scalado/base/Rect;

    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warpEffect:Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;

    #getter for: Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;->value:I
    invoke-static {v1}, Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;->access$000(Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;)I

    move-result v1

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Warp;->strength:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/scalado/caps/filter/photoart/Warp;->nativeBeginAndSetWarpIndex(Lcom/scalado/caps/Decoder;[Lcom/scalado/base/Rect;IF)V

    .line 160
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Warp;->nativeEndWarpIndex(Lcom/scalado/caps/Decoder;)V

    goto :goto_0

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Neither filename, buffer nor regions set in Warp filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->activeRegions:[Lcom/scalado/base/Rect;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Warp;->nativeEndWarpIndex(Lcom/scalado/caps/Decoder;)V

    .line 174
    :cond_0
    return-void
.end method

.method public set(Lcom/scalado/stream/BufferStream;)V
    .locals 2
    .parameter "warpTable"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Warp;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarpFromBuffer(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Buffer;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 83
    invoke-virtual {p1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public set(Lcom/scalado/stream/FileStream;)V
    .locals 2
    .parameter "warpTable"

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Warp;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarpFromFile(Lcom/scalado/caps/Decoder;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    .line 112
    invoke-virtual {p1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public set([Lcom/scalado/base/Rect;Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;F)V
    .locals 3
    .parameter "activeRegions"
    .parameter "warpEffect"
    .parameter "strength"

    .prologue
    const/4 v2, 0x0

    .line 131
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_2

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    #getter for: Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;->value:I
    invoke-static {p2}, Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;->access$000(Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;)I

    move-result v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/scalado/caps/filter/photoart/Warp;->nativeBeginAndSetWarpIndex(Lcom/scalado/caps/Decoder;[Lcom/scalado/base/Rect;IF)V

    .line 139
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Warp;->activeRegions:[Lcom/scalado/base/Rect;

    .line 140
    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/Warp;->warpEffect:Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;

    .line 141
    iput p3, p0, Lcom/scalado/caps/filter/photoart/Warp;->strength:F

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 143
    iput-object v2, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    .line 144
    iput-object v2, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    .line 145
    return-void
.end method
