.class public Lcom/scalado/caps/Session;
.super Lcom/scalado/jni/JniPeer;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/Session$RenderIterator;
    }
.end annotation


# instance fields
.field private decoder:Lcom/scalado/caps/Decoder;

.field private filters:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<",
            "Lcom/scalado/caps/Filter;",
            ">;"
        }
    .end annotation
.end field

.field hasActiveFilter:Z

.field private listeners:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<",
            "Lcom/scalado/caps/SessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsIncompleteImage:Z

.field private mSessionHandle:J

.field private properties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 501
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 502
    invoke-static {}, Lcom/scalado/caps/Session;->nativeClassInit()V

    .line 503
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Decoder;)V
    .locals 4
    .parameter "decoder"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 145
    iput-wide v2, p0, Lcom/scalado/caps/Session;->mSessionHandle:J

    .line 146
    iput-boolean v1, p0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    .line 150
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    .line 151
    iput-boolean v1, p0, Lcom/scalado/caps/Session;->mIsIncompleteImage:Z

    .line 160
    iput-wide v2, p0, Lcom/scalado/caps/Session;->mSessionHandle:J

    .line 161
    if-nez p1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    .line 167
    invoke-direct {p0}, Lcom/scalado/caps/Session;->nativeCreate()V

    .line 168
    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->nativeSetDecoder(Lcom/scalado/caps/Decoder;)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/scalado/caps/Session;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/scalado/caps/Session;->nativeIsIncompleteImage()V

    return-void
.end method

.method static synthetic access$100(Lcom/scalado/caps/Session;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/scalado/caps/Session;->mIsIncompleteImage:Z

    return v0
.end method

.method static synthetic access$200(Lcom/scalado/caps/Session;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/scalado/caps/Session;->sendIncompleteImage()V

    return-void
.end method

.method private applyFilters(Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "decoder"

    .prologue
    .line 458
    invoke-virtual {p1}, Lcom/scalado/caps/Decoder;->removeAllFilters()V

    .line 460
    iget-object v2, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/Filter;

    .line 462
    .local v0, filter:Lcom/scalado/caps/Filter;
    invoke-virtual {v0, p1}, Lcom/scalado/caps/Filter;->apply(Lcom/scalado/caps/Decoder;)V

    goto :goto_0

    .line 464
    .end local v0           #filter:Lcom/scalado/caps/Filter;
    :cond_0
    return-void
.end method

.method private applyProperties(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "BackgroundColor"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "BackgroundColor"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/base/Color;

    invoke-virtual {p1, v0}, Lcom/scalado/caps/Decoder;->setBackgroundColor(Lcom/scalado/base/Color;)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "SamplingMode"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "SamplingMode"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/SamplingMode;

    invoke-virtual {p1, v0}, Lcom/scalado/caps/Decoder;->setSamplingMode(Lcom/scalado/caps/SamplingMode;)V

    .line 456
    :cond_1
    return-void
.end method

.method private native nativeAddAppData(Lcom/scalado/base/Buffer;)V
.end method

.method private native nativeAddXmpData(Lcom/scalado/base/Buffer;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate()V
.end method

.method private native nativeDeleteAppData()V
.end method

.method private native nativeDeleteXmpData()V
.end method

.method private native nativeGetCurrentImageSize(Lcom/scalado/base/Size;)V
.end method

.method private native nativeIsIncompleteImage()V
.end method

.method private native nativeSendEventSourceDataChange()V
.end method

.method private native nativeSetDecoder(Lcom/scalado/caps/Decoder;)V
.end method

.method private sendIncompleteImage()V
    .locals 3

    .prologue
    .line 467
    iget-object v2, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/SessionListener;

    .line 469
    .local v1, listener:Lcom/scalado/caps/SessionListener;
    invoke-virtual {v1}, Lcom/scalado/caps/SessionListener;->onIncompleteImage()V

    goto :goto_0

    .line 471
    .end local v1           #listener:Lcom/scalado/caps/SessionListener;
    :cond_0
    return-void
.end method

.method private sendSourceChange(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "oldDecoder"
    .parameter "newDecoder"

    .prologue
    .line 474
    iget-object v2, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/SessionListener;

    .line 476
    .local v1, listener:Lcom/scalado/caps/SessionListener;
    invoke-virtual {v1, p1, p2}, Lcom/scalado/caps/SessionListener;->onSourceChange(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    goto :goto_0

    .line 478
    .end local v1           #listener:Lcom/scalado/caps/SessionListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addAppData(Lcom/scalado/base/Buffer;)V
    .locals 0
    .parameter "appData"

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/scalado/caps/Session;->nativeDeleteAppData()V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->nativeAddAppData(Lcom/scalado/base/Buffer;)V

    goto :goto_0
.end method

.method public final addListener(Lcom/scalado/caps/SessionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_1
    return-void
.end method

.method public addXmpData(Lcom/scalado/base/Buffer;)V
    .locals 0
    .parameter "xmpData"

    .prologue
    .line 396
    if-nez p1, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/scalado/caps/Session;->nativeDeleteXmpData()V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->nativeAddXmpData(Lcom/scalado/base/Buffer;)V

    goto :goto_0
.end method

.method public getDecoder()Lcom/scalado/caps/Decoder;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    return-object v0
.end method

.method public getHandle()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 376
    iget-wide v0, p0, Lcom/scalado/caps/Session;->mSessionHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "The session must be correctly initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    iget-wide v0, p0, Lcom/scalado/caps/Session;->mSessionHandle:J

    return-wide v0
.end method

.method public getViewport()Lcom/scalado/base/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 319
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, v4, v4}, Lcom/scalado/base/Size;-><init>(II)V

    .line 320
    .local v0, size:Lcom/scalado/base/Size;
    invoke-direct {p0, v0}, Lcom/scalado/caps/Session;->nativeGetCurrentImageSize(Lcom/scalado/base/Size;)V

    .line 321
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/scalado/base/Rect;-><init>(IIII)V

    return-object v1
.end method

.method pushFilter(Lcom/scalado/caps/Filter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->markChanged()V

    .line 446
    return-void
.end method

.method public removeAllFilters()V
    .locals 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot undo while filter open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->clear()V

    .line 279
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->removeAllFilters()V

    goto :goto_0
.end method

.method public removeLastFilter()V
    .locals 2

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot undo while filter open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    iget-object v1, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->removeLastFilter()V

    goto :goto_0
.end method

.method public final removeListener(Lcom/scalado/caps/SessionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;
    .locals 1
    .parameter "encoder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Lcom/scalado/caps/Session$RenderIterator;

    invoke-direct {v0, p0, p0, p1}, Lcom/scalado/caps/Session$RenderIterator;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;Lcom/scalado/caps/Encoder;)V

    return-object v0
.end method

.method public sendEventSourceDataChange()V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/scalado/caps/Session;->nativeSendEventSourceDataChange()V

    .line 436
    return-void
.end method

.method public setBackgroundColor(Lcom/scalado/base/Color;)V
    .locals 2
    .parameter "color"

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "BackgroundColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/Decoder;->setBackgroundColor(Lcom/scalado/base/Color;)V

    .line 343
    return-void
.end method

.method public setDecoder(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 230
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    if-ne p1, v1, :cond_1

    .line 234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    .line 239
    .local v0, oldDecoder:Lcom/scalado/caps/Decoder;
    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->applyProperties(Lcom/scalado/caps/Decoder;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->applyFilters(Lcom/scalado/caps/Decoder;)V

    .line 241
    iput-object p1, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    .line 243
    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->nativeSetDecoder(Lcom/scalado/caps/Decoder;)V

    .line 245
    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/Session;->sendSourceChange(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    .line 246
    return-void
.end method

.method public setSamplingMode(Lcom/scalado/caps/SamplingMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "SamplingMode"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/Decoder;->setSamplingMode(Lcom/scalado/caps/SamplingMode;)V

    .line 358
    return-void
.end method
