.class Lcom/scalado/app/rewind/Geom;
.super Ljava/lang/Object;
.source "Geom.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;
    .locals 1
    .parameter "r"

    .prologue
    .line 33
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 34
    .local v0, dst:Lcom/scalado/base/Rect;
    invoke-static {p0, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 35
    return-object v0
.end method

.method public static getCanvas(Lcom/scalado/base/Size;Lcom/scalado/caps/screen/Screen;)Landroid/graphics/Rect;
    .locals 10
    .parameter "srcDims"
    .parameter "screen"

    .prologue
    const/4 v8, 0x0

    .line 98
    new-instance v1, Lcom/scalado/base/Point;

    invoke-direct {v1, v8, v8}, Lcom/scalado/base/Point;-><init>(II)V

    .line 99
    .local v1, pCur0:Lcom/scalado/base/Point;
    new-instance v2, Lcom/scalado/base/Point;

    invoke-virtual {p0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    invoke-direct {v2, v8, v9}, Lcom/scalado/base/Point;-><init>(II)V

    .line 100
    .local v2, pCur1:Lcom/scalado/base/Point;
    invoke-virtual {p1, v1}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v3

    .line 101
    .local v3, pScreen0:Lcom/scalado/base/Point;
    invoke-virtual {p1, v2}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v4

    .line 103
    .local v4, pScreen1:Lcom/scalado/base/Point;
    invoke-virtual {v3}, Lcom/scalado/base/Point;->getX()I

    move-result v6

    .line 104
    .local v6, x:I
    invoke-virtual {v3}, Lcom/scalado/base/Point;->getY()I

    move-result v7

    .line 105
    .local v7, y:I
    invoke-virtual {v4}, Lcom/scalado/base/Point;->getX()I

    move-result v8

    invoke-virtual {v3}, Lcom/scalado/base/Point;->getX()I

    move-result v9

    sub-int v5, v8, v9

    .line 106
    .local v5, w:I
    invoke-virtual {v4}, Lcom/scalado/base/Point;->getY()I

    move-result v8

    invoke-virtual {v3}, Lcom/scalado/base/Point;->getY()I

    move-result v9

    sub-int v0, v8, v9

    .line 107
    .local v0, h:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v7, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v8
.end method

.method public static final rectDist2(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float v0, v2, v3

    .line 67
    .local v0, dx:F
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float v1, v2, v3

    .line 68
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public static final rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 19
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setX(I)V

    .line 20
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setY(I)V

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 23
    return-void
.end method

.method public static final rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v1

    .line 14
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 15
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 12
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    return-void
.end method

.method public static final rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 4
    .parameter "r"

    .prologue
    .line 53
    const-string v0, "{(%d, %d), %dx%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 54
    iget v3, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 53
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;
    .locals 4
    .parameter "r"

    .prologue
    .line 46
    const-string v0, "{(%d, %d), %dx%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 48
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 49
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 46
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final setRect(IIIILcom/scalado/base/Rect;)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "dst"

    .prologue
    .line 26
    invoke-virtual {p4, p0}, Lcom/scalado/base/Rect;->setX(I)V

    .line 27
    invoke-virtual {p4, p1}, Lcom/scalado/base/Rect;->setY(I)V

    .line 28
    invoke-virtual {p4, p2}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 29
    invoke-virtual {p4, p3}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 30
    return-void
.end method

.method public static final setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setX(I)V

    .line 40
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setY(I)V

    .line 41
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 42
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 43
    return-void
.end method

.method public static transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 7
    .parameter "screen"
    .parameter "r"
    .parameter "dstRect"

    .prologue
    .line 73
    new-instance v2, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/scalado/base/Point;-><init>(II)V

    .line 74
    .local v2, pScr0:Lcom/scalado/base/Point;
    new-instance v3, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    .line 75
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 74
    invoke-direct {v3, v4, v5}, Lcom/scalado/base/Point;-><init>(II)V

    .line 76
    .local v3, pScr1:Lcom/scalado/base/Point;
    invoke-virtual {p0, v2}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v0

    .line 77
    .local v0, p0:Lcom/scalado/base/Point;
    invoke-virtual {p0, v3}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v1

    .line 78
    .local v1, p1:Lcom/scalado/base/Point;
    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setX(I)V

    .line 79
    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setY(I)V

    .line 80
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 81
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 82
    return-void
.end method

.method public static transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 7
    .parameter "screen"
    .parameter "r"
    .parameter "dstRect"

    .prologue
    .line 86
    new-instance v2, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/scalado/base/Point;-><init>(II)V

    .line 87
    .local v2, pScr0:Lcom/scalado/base/Point;
    new-instance v3, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    .line 88
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 87
    invoke-direct {v3, v4, v5}, Lcom/scalado/base/Point;-><init>(II)V

    .line 89
    .local v3, pScr1:Lcom/scalado/base/Point;
    invoke-virtual {p0, v2}, Lcom/scalado/caps/screen/Screen;->transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v0

    .line 90
    .local v0, p0:Lcom/scalado/base/Point;
    invoke-virtual {p0, v3}, Lcom/scalado/caps/screen/Screen;->transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v1

    .line 91
    .local v1, p1:Lcom/scalado/base/Point;
    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setX(I)V

    .line 92
    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setY(I)V

    .line 93
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 94
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 95
    return-void
.end method
