.class public Lcom/scalado/base/RawThumbnailInfo;
.super Ljava/lang/Object;
.source "RawThumbnailInfo.java"


# instance fields
.field private bitsPerSample:I

.field private photometricInterpretation:I

.field private samplesPerPixel:I

.field private size:Lcom/scalado/base/Size;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/base/RawThumbnailInfo;->size:Lcom/scalado/base/Size;

    .line 10
    iput v1, p0, Lcom/scalado/base/RawThumbnailInfo;->bitsPerSample:I

    .line 12
    iput v1, p0, Lcom/scalado/base/RawThumbnailInfo;->photometricInterpretation:I

    .line 14
    iput v1, p0, Lcom/scalado/base/RawThumbnailInfo;->samplesPerPixel:I

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Size;III)V
    .locals 2
    .parameter "size"
    .parameter "bitsPerSample"
    .parameter "photometricInterpretation"
    .parameter "samplesPerPixel"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/base/RawThumbnailInfo;->size:Lcom/scalado/base/Size;

    .line 10
    iput v1, p0, Lcom/scalado/base/RawThumbnailInfo;->bitsPerSample:I

    .line 12
    iput v1, p0, Lcom/scalado/base/RawThumbnailInfo;->photometricInterpretation:I

    .line 14
    iput v1, p0, Lcom/scalado/base/RawThumbnailInfo;->samplesPerPixel:I

    .line 34
    iput-object p1, p0, Lcom/scalado/base/RawThumbnailInfo;->size:Lcom/scalado/base/Size;

    .line 35
    iput p2, p0, Lcom/scalado/base/RawThumbnailInfo;->bitsPerSample:I

    .line 36
    iput p3, p0, Lcom/scalado/base/RawThumbnailInfo;->photometricInterpretation:I

    .line 37
    iput p4, p0, Lcom/scalado/base/RawThumbnailInfo;->samplesPerPixel:I

    .line 38
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/RawThumbnailInfo;
    .locals 5

    .prologue
    .line 120
    new-instance v0, Lcom/scalado/base/RawThumbnailInfo;

    iget-object v1, p0, Lcom/scalado/base/RawThumbnailInfo;->size:Lcom/scalado/base/Size;

    iget v2, p0, Lcom/scalado/base/RawThumbnailInfo;->bitsPerSample:I

    iget v3, p0, Lcom/scalado/base/RawThumbnailInfo;->photometricInterpretation:I

    iget v4, p0, Lcom/scalado/base/RawThumbnailInfo;->samplesPerPixel:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scalado/base/RawThumbnailInfo;-><init>(Lcom/scalado/base/Size;III)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/scalado/base/RawThumbnailInfo;->clone()Lcom/scalado/base/RawThumbnailInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getBitsPerSample()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/scalado/base/RawThumbnailInfo;->bitsPerSample:I

    return v0
.end method

.method public final getPhotometricInterpretation()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/scalado/base/RawThumbnailInfo;->photometricInterpretation:I

    return v0
.end method

.method public final getSamplesPerPixel()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/scalado/base/RawThumbnailInfo;->samplesPerPixel:I

    return v0
.end method

.method public final getSize()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/scalado/base/RawThumbnailInfo;->size:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method

.method public setBitsPerSample(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 76
    iput p1, p0, Lcom/scalado/base/RawThumbnailInfo;->bitsPerSample:I

    .line 77
    return-void
.end method

.method public setPhotometricInterpretation(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 96
    iput p1, p0, Lcom/scalado/base/RawThumbnailInfo;->photometricInterpretation:I

    .line 97
    return-void
.end method

.method public setSamplesPerPixel(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 116
    iput p1, p0, Lcom/scalado/base/RawThumbnailInfo;->samplesPerPixel:I

    .line 117
    return-void
.end method

.method public setSize(Lcom/scalado/base/Size;)V
    .locals 1
    .parameter "newSize"

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/base/RawThumbnailInfo;->size:Lcom/scalado/base/Size;

    .line 57
    return-void
.end method
