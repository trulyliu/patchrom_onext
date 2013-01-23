.class public Lcom/scalado/caps/filter/imagefusion/Imagefusion;
.super Lcom/scalado/caps/Filter;
.source "Imagefusion.java"


# instance fields
.field private frame:Lcom/scalado/base/Image;

.field private frameStream:Lcom/scalado/stream/Stream;

.field private invertAlpha:Z

.field private mask:Lcom/scalado/base/Image;

.field private maskStream:Lcom/scalado/stream/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 181
    invoke-static {}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->nativeClassInit()V

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 22
    iput-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frameStream:Lcom/scalado/stream/Stream;

    .line 23
    iput-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->maskStream:Lcom/scalado/stream/Stream;

    .line 24
    iput-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frame:Lcom/scalado/base/Image;

    .line 25
    iput-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->mask:Lcom/scalado/base/Image;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->invertAlpha:Z

    .line 39
    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->setHasActiveFilter(Z)V

    .line 40
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeInsertFrameMask(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;Z)V
.end method

.method private native nativeInsertImageFromRawMask(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;Lcom/scalado/base/Image;Z)V
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "decoder"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frameStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->maskStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frameStream:Lcom/scalado/stream/Stream;

    iget-object v1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->maskStream:Lcom/scalado/stream/Stream;

    iget-boolean v2, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->invertAlpha:Z

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->nativeInsertFrameMask(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;Z)V

    .line 166
    :cond_0
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public setFrameMask(Lcom/scalado/base/Image;Lcom/scalado/base/Image;Z)V
    .locals 2
    .parameter "frame"
    .parameter "mask"
    .parameter "invertAlpha"

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    if-nez p1, :cond_1

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Frame image stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    if-nez p2, :cond_2

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Mask image stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frame:Lcom/scalado/base/Image;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->mask:Lcom/scalado/base/Image;

    if-eqz v0, :cond_4

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    .line 150
    iput-object v1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frame:Lcom/scalado/base/Image;

    .line 151
    iput-object v1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->mask:Lcom/scalado/base/Image;

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->nativeInsertImageFromRawMask(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;Lcom/scalado/base/Image;Z)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 155
    iput-object p1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frame:Lcom/scalado/base/Image;

    .line 156
    iput-object p2, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->mask:Lcom/scalado/base/Image;

    .line 157
    iput-boolean p3, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->invertAlpha:Z

    .line 158
    return-void
.end method

.method public setFrameMask(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;Z)V
    .locals 2
    .parameter "frameStream"
    .parameter "maskStream"
    .parameter "invertAlpha"

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    if-nez p1, :cond_1

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Frame image stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    if-nez p2, :cond_2

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Mask image stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frameStream:Lcom/scalado/stream/Stream;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->maskStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_4

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    .line 95
    iput-object v1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frameStream:Lcom/scalado/stream/Stream;

    .line 96
    iput-object v1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->maskStream:Lcom/scalado/stream/Stream;

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->nativeInsertFrameMask(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;Z)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 101
    iput-object p1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frameStream:Lcom/scalado/stream/Stream;

    .line 102
    iput-object p2, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->maskStream:Lcom/scalado/stream/Stream;

    .line 103
    iput-boolean p3, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->invertAlpha:Z

    .line 104
    return-void
.end method
