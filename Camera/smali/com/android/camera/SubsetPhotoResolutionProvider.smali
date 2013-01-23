.class public abstract Lcom/android/camera/SubsetPhotoResolutionProvider;
.super Lcom/android/camera/DefaultPhotoResolutionProvider;
.source "SubsetPhotoResolutionProvider.java"


# direct methods
.method protected constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "cameraActivity"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/DefaultPhotoResolutionProvider;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 14
    return-void
.end method

.method private getMaxPixelCount(Lcom/android/camera/CameraType;)I
    .locals 3
    .parameter "cameraType"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMaxResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v0

    .line 26
    .local v0, resolution:Lcom/android/camera/Resolution;
    if-nez v0, :cond_0

    const v1, 0x7fffffff

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    goto :goto_0
.end method

.method private getMinPixelCount(Lcom/android/camera/CameraType;)I
    .locals 3
    .parameter "cameraType"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMinResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v0

    .line 39
    .local v0, resolution:Lcom/android/camera/Resolution;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected getMaxResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 1
    .parameter "cameraType"

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMinResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 1
    .parameter "cameraType"

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolution(Lcom/android/camera/CameraType;Ljava/util/List;Lcom/android/camera/Resolution;)Lcom/android/camera/Resolution;
    .locals 5
    .parameter "cameraType"
    .parameter
    .parameter "currentResolution"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;",
            "Lcom/android/camera/Resolution;",
            ")",
            "Lcom/android/camera/Resolution;"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, resolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    if-eqz p3, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMaxPixelCount(Lcom/android/camera/CameraType;)I

    move-result v0

    .line 52
    .local v0, maxPixelCount:I
    invoke-direct {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMinPixelCount(Lcom/android/camera/CameraType;)I

    move-result v1

    .line 53
    .local v1, minPixelCount:I
    invoke-virtual {p3}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v4

    mul-int v2, v3, v4

    .line 54
    .local v2, pixelCount:I
    if-le v2, v0, :cond_1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMaxResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object p3

    .line 61
    .end local v0           #maxPixelCount:I
    .end local v1           #minPixelCount:I
    .end local v2           #pixelCount:I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/DefaultPhotoResolutionProvider;->getResolution(Lcom/android/camera/CameraType;Ljava/util/List;Lcom/android/camera/Resolution;)Lcom/android/camera/Resolution;

    move-result-object v3

    return-object v3

    .line 56
    .restart local v0       #maxPixelCount:I
    .restart local v1       #minPixelCount:I
    .restart local v2       #pixelCount:I
    :cond_1
    if-ge v2, v1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMinResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object p3

    goto :goto_0
.end method

.method public getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;
    .locals 10
    .parameter "cameraType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;

    move-result-object v7

    .line 74
    .local v7, resolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMaxPixelCount(Lcom/android/camera/CameraType;)I

    move-result v2

    .line 75
    .local v2, maxPixelCount:I
    invoke-direct {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMinPixelCount(Lcom/android/camera/CameraType;)I

    move-result v3

    .line 76
    .local v3, minPixelCount:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v4, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/Resolution;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 79
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    .line 80
    .local v6, resolution:Lcom/android/camera/Resolution;
    invoke-virtual {v6}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v9

    mul-int v5, v8, v9

    .line 81
    .local v5, pixelCount:I
    if-gt v5, v2, :cond_0

    if-lt v5, v3, :cond_0

    .line 82
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v5           #pixelCount:I
    .end local v6           #resolution:Lcom/android/camera/Resolution;
    :cond_1
    return-object v4
.end method
