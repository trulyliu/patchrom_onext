.class public Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;
.super Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;
.source "Ola_FaceDetectExternInfo.java"


# instance fields
.field private final MAX_FACE_NUM:I

.field public faceId:[I

.field public isSmile:[I

.field public leftBlink:[I

.field public leftEye:[Landroid/graphics/Point;

.field public rightBlink:[I

.field public rightEye:[Landroid/graphics/Point;

.field public score:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;-><init>()V

    .line 14
    iput v4, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->MAX_FACE_NUM:I

    .line 54
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->faceId:[I

    .line 55
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->isSmile:[I

    .line 56
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->score:[I

    .line 57
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    .line 58
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    .line 59
    new-array v1, v4, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftEye:[Landroid/graphics/Point;

    .line 60
    new-array v1, v4, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightEye:[Landroid/graphics/Point;

    .line 61
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 62
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->faceId:[I

    aput v3, v1, v0

    .line 63
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->isSmile:[I

    aput v3, v1, v0

    .line 64
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->score:[I

    aput v3, v1, v0

    .line 65
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    aput v3, v1, v0

    .line 66
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    aput v3, v1, v0

    .line 67
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftEye:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    .line 68
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightEye:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    .line 69
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftEye:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 70
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightEye:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-super {p0}, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->clear()V

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->faceId:[I

    aput v2, v1, v0

    .line 82
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->isSmile:[I

    aput v2, v1, v0

    .line 83
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->score:[I

    aput v2, v1, v0

    .line 84
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    aput v2, v1, v0

    .line 85
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    aput v2, v1, v0

    .line 86
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftEye:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 87
    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightEye:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method
