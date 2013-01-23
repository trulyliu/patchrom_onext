.class public final Lcom/scalado/caps/filter/photoart/Scribble;
.super Lcom/scalado/caps/Filter;
.source "Scribble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/photoart/Scribble$Shape;,
        Lcom/scalado/caps/filter/photoart/Scribble$Config;
    }
.end annotation


# instance fields
.field private config:Lcom/scalado/caps/filter/photoart/Scribble$Config;

.field private mAngle:F

.field private mColor:Lcom/scalado/base/Color;

.field private mPosition:Lcom/scalado/base/Point;

.field private mScale:F

.field private mSize:Lcom/scalado/base/Size;

.field private noMoreDrawing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 453
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 454
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeClassInit()V

    .line 455
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/filter/photoart/Scribble$Config;Lcom/scalado/base/Color;)V
    .locals 3
    .parameter "screen"
    .parameter "config"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1}, Lcom/scalado/caps/screen/Screen;->getSession()Lcom/scalado/caps/Session;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 75
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Point;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mPosition:Lcom/scalado/base/Point;

    .line 76
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mScale:F

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mAngle:F

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->config:Lcom/scalado/caps/filter/photoart/Scribble$Config;

    .line 80
    iput-boolean v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    .line 100
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 103
    :cond_1
    #getter for: Lcom/scalado/caps/filter/photoart/Scribble$Config;->colormode:I
    invoke-static {p2}, Lcom/scalado/caps/filter/photoart/Scribble$Config;->access$000(Lcom/scalado/caps/filter/photoart/Scribble$Config;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeCreate(Lcom/scalado/caps/screen/Screen;ILcom/scalado/base/Color;)V

    .line 104
    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/Scribble;->config:Lcom/scalado/caps/filter/photoart/Scribble$Config;

    .line 105
    iput-object p3, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mColor:Lcom/scalado/base/Color;

    .line 106
    invoke-virtual {p1}, Lcom/scalado/caps/screen/Screen;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mSize:Lcom/scalado/base/Size;

    .line 107
    new-instance v0, Lcom/scalado/base/Point;

    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Point;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mPosition:Lcom/scalado/base/Point;

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Scribble;->setHasActiveFilter(Z)V

    .line 110
    return-void
.end method

.method private native nativeApply(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Point;FF)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/caps/screen/Screen;ILcom/scalado/base/Color;)V
.end method

.method private native nativeEnd()V
.end method

.method private native nativeEraseBuffer()V
.end method

.method private native nativeRemoveDotInScribble(Lcom/scalado/base/Point;II)V
.end method

.method private native nativeSetColor(Lcom/scalado/base/Color;)V
.end method

.method private native nativeSetDotInScribble(Lcom/scalado/base/Point;II)V
.end method

.method private native nativeSetEllipse(Lcom/scalado/base/Point;Lcom/scalado/base/Size;IZ)V
.end method

.method private native nativeSetLine(Lcom/scalado/base/Point;Lcom/scalado/base/Point;II)V
.end method

.method private native nativeSetOrientation(Lcom/scalado/base/Point;FFLcom/scalado/base/Size;)V
.end method

.method private native nativeSetRectangle(Lcom/scalado/base/Point;Lcom/scalado/base/Size;IZ)V
.end method


# virtual methods
.method public addDot(Lcom/scalado/base/Point;ILcom/scalado/caps/filter/photoart/Scribble$Shape;)V
    .locals 2
    .parameter "coords"
    .parameter "radius"
    .parameter "shape"

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawing not allowed after setting position/scale/angle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v0

    if-gez v0, :cond_3

    .line 298
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_3
    iget v0, p3, Lcom/scalado/caps/filter/photoart/Scribble$Shape;->value:I

    invoke-direct {p0, p1, p2, v0}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetDotInScribble(Lcom/scalado/base/Point;II)V

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 302
    return-void
.end method

.method public addEllipse(Lcom/scalado/base/Point;Lcom/scalado/base/Size;IZ)V
    .locals 2
    .parameter "upperLeft"
    .parameter "dimensions"
    .parameter "brushRadius"
    .parameter "filled"

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    if-eqz v0, :cond_1

    .line 377
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawing not allowed after setting position/scale/angle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v0

    if-gez v0, :cond_3

    .line 381
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetEllipse(Lcom/scalado/base/Point;Lcom/scalado/base/Size;IZ)V

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 385
    return-void
.end method

.method public addLine(Lcom/scalado/base/Point;Lcom/scalado/base/Point;ILcom/scalado/caps/filter/photoart/Scribble$Shape;)V
    .locals 2
    .parameter "srcCoords"
    .parameter "dstCoords"
    .parameter "brushRadius"
    .parameter "shape"

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    if-eqz v0, :cond_1

    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawing not allowed after setting position/scale/angle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getY()I

    move-result v0

    if-gez v0, :cond_3

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_3
    iget v0, p4, Lcom/scalado/caps/filter/photoart/Scribble$Shape;->value:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetLine(Lcom/scalado/base/Point;Lcom/scalado/base/Point;II)V

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 337
    return-void
.end method

.method public addRectangle(Lcom/scalado/base/Point;Lcom/scalado/base/Size;IZ)V
    .locals 2
    .parameter "upperLeft"
    .parameter "dimensions"
    .parameter "brushRadius"
    .parameter "filled"

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    if-eqz v0, :cond_1

    .line 353
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawing not allowed after setting position/scale/angle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v0

    if-gez v0, :cond_3

    .line 357
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetRectangle(Lcom/scalado/base/Point;Lcom/scalado/base/Size;IZ)V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 361
    return-void
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mAngle:F

    return v0
.end method

.method public getColor()Lcom/scalado/base/Color;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mColor:Lcom/scalado/base/Color;

    return-object v0
.end method

.method public getDimensions()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mSize:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public getPosition()Lcom/scalado/base/Point;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mPosition:Lcom/scalado/base/Point;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mScale:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "decoder"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mPosition:Lcom/scalado/base/Point;

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mScale:F

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mAngle:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeApply(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Point;FF)V

    .line 115
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeEnd()V

    .line 121
    return-void
.end method

.method public removeDot(Lcom/scalado/base/Point;ILcom/scalado/caps/filter/photoart/Scribble$Shape;)V
    .locals 2
    .parameter "coords"
    .parameter "radius"
    .parameter "shape"

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    if-eqz v0, :cond_1

    .line 408
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawing not allowed after setting position/scale/angle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v0

    if-gez v0, :cond_3

    .line 412
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_3
    iget v0, p3, Lcom/scalado/caps/filter/photoart/Scribble$Shape;->value:I

    invoke-direct {p0, p1, p2, v0}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeRemoveDotInScribble(Lcom/scalado/base/Point;II)V

    .line 415
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeEraseBuffer()V

    .line 424
    return-void
.end method

.method public setAngle(F)V
    .locals 3
    .parameter "angle"

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nothing drawn yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x43b4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    .line 197
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mPosition:Lcom/scalado/base/Point;

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mScale:F

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mSize:Lcom/scalado/base/Size;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetOrientation(Lcom/scalado/base/Point;FFLcom/scalado/base/Size;)V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    .line 201
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mAngle:F

    .line 202
    return-void
.end method

.method public setColor(Lcom/scalado/base/Color;)V
    .locals 2
    .parameter "color"

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    if-eqz v0, :cond_1

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawing not allowed after setting position/scale/angle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetColor(Lcom/scalado/base/Color;)V

    .line 270
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mColor:Lcom/scalado/base/Color;

    .line 271
    return-void
.end method

.method public setPosition(Lcom/scalado/base/Point;)V
    .locals 3
    .parameter "position"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nothing drawn yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mScale:F

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mAngle:F

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mSize:Lcom/scalado/base/Size;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetOrientation(Lcom/scalado/base/Point;FFLcom/scalado/base/Size;)V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    .line 145
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mPosition:Lcom/scalado/base/Point;

    .line 146
    return-void
.end method

.method public setScale(F)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nothing drawn yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    const v0, 0x3a83126f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mPosition:Lcom/scalado/base/Point;

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mAngle:F

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mSize:Lcom/scalado/base/Size;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetOrientation(Lcom/scalado/base/Point;FFLcom/scalado/base/Size;)V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    .line 173
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->mScale:F

    .line 174
    return-void
.end method
