.class public Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;
.super Ljava/lang/Object;
.source "Ola_FaceDetectorInfo.java"


# instance fields
.field private final MAX_FACE_NUM:I

.field public detectedFaces:[Landroid/graphics/Rect;

.field public numDetectedFaces:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v3, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->MAX_FACE_NUM:I

    .line 19
    const/4 v1, 0x0

    iput v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    .line 30
    new-array v1, v3, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    .line 31
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 32
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 33
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public flipHorizontal(I)I
    .locals 4
    .parameter "width"

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    if-ge v0, v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gt p1, v2, :cond_0

    .line 51
    const/4 v2, -0x1

    .line 58
    :goto_1
    return v2

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    if-ge v0, v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 55
    .local v1, org:I
    iget-object v2, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, p1, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 56
    iget-object v2, p0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    sub-int v3, p1, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 58
    .end local v1           #org:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
