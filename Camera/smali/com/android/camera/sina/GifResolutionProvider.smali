.class public Lcom/android/camera/sina/GifResolutionProvider;
.super Lcom/android/camera/SubsetPhotoResolutionProvider;
.source "GifResolutionProvider.java"


# static fields
.field public static GIF_MODE_RESOLUTION:Lcom/android/camera/Resolution; = null

.field public static final PREF_GIF_RESOLUTION:Ljava/lang/String; = "pref_gif_resolution"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/android/camera/Resolution;

    .line 20
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_1

    .line 21
    sget-object v0, Lcom/android/camera/Resolution;->SINA_CAMERA_GIF_QVGA_16_9:Lcom/android/camera/Resolution;

    sput-object v0, Lcom/android/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/android/camera/Resolution;

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_2

    .line 23
    sget-object v0, Lcom/android/camera/Resolution;->SINA_CAMERA_GIF_QVGA_5_3:Lcom/android/camera/Resolution;

    sput-object v0, Lcom/android/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/android/camera/Resolution;

    goto :goto_0

    .line 24
    :cond_2
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_3_2:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_0

    .line 25
    sget-object v0, Lcom/android/camera/Resolution;->SINA_CAMERA_GIF_QVGA_3_2:Lcom/android/camera/Resolution;

    sput-object v0, Lcom/android/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/android/camera/Resolution;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "cameraActivity"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getMaxResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 1
    .parameter "cameraType"

    .prologue
    .line 43
    sget-object v0, Lcom/android/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/android/camera/Resolution;

    return-object v0
.end method

.method protected getMinResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 1
    .parameter "cameraType"

    .prologue
    .line 52
    sget-object v0, Lcom/android/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/android/camera/Resolution;

    return-object v0
.end method

.method public getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;
    .locals 4
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
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, resolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    new-instance v1, Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/android/camera/Resolution;

    sget-object v3, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-object v0
.end method

.method public getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;
    .locals 1
    .parameter "cameraType"

    .prologue
    .line 60
    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne p1, v0, :cond_0

    .line 61
    const-string v0, "pref_panorama_resolution"

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
