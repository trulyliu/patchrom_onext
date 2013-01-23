.class public Lcom/android/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraController$SupportedList;,
        Lcom/android/camera/CameraController$Settings;,
        Lcom/android/camera/CameraController$SettingInfo;
    }
.end annotation


# static fields
.field private static final INIT_BRIGHTNESS:I = 0x0

.field private static final INIT_CONTRAST:I = 0x5

.field private static final INIT_SATURATION:I = 0x5

.field private static final INIT_SHARPNESS:I = 0xf

.field public static final KEY_GPU_EFFECT:Ljava/lang/String; = "GPU-effect"

.field public static final KEY_GPU_EFFECT_PARAM_0:Ljava/lang/String; = "GE-param0"

.field public static final KEY_GPU_EFFECT_PARAM_1:Ljava/lang/String; = "GE-param1"

.field public static final KEY_GPU_EFFECT_PARAM_2:Ljava/lang/String; = "GE-param2"

.field public static final KEY_GPU_EFFECT_PARAM_3:Ljava/lang/String; = "GE-param3"

.field private static final KEY_QUERY_SMART_SCENE_DETECT_SUPPORTED:Ljava/lang/String; = "scene-detect-values"

.field private static final TAG:Ljava/lang/String; = "CameraController"

.field private static final TIMEOUT_GET_PARAMS:J = 0x1388L

.field public static final TIMEOUT_STANDARD:J = 0x1388L

.field private static final TIMEOUT_START_PREVIEW:J = 0x1388L

.field private static final TIMEOUT_STOP_PREVIEW:J = 0x1388L

.field private static final VALUE_SMART_SCENE_DETECT_SUPPORTED:Ljava/lang/String; = "off,on"


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mInjectParam0:I

.field private mInjectParam1:I

.field private final mIsSmartSceneDetectSupported:Z

.field private final mIsVideoStabilizationSupported:Z

.field private final mOperationTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Lcom/android/camera/debug/IOperationTimeoutController;)V
    .locals 5
    .parameter "c"
    .parameter "timeoutController"

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v4, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    .line 41
    iput v4, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 893
    new-instance v1, Lcom/android/camera/CameraController$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraController$1;-><init>(Lcom/android/camera/CameraController;)V

    iput-object v1, p0, Lcom/android/camera/CameraController;->mOperationTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    .line 56
    iput-object p2, p0, Lcom/android/camera/CameraController;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    .line 57
    iput-object p1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    .line 60
    const-string v1, "Get camera parameters"

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/android/camera/Handle;

    move-result-object v0

    .line 63
    .local v0, handle:Lcom/android/camera/Handle;
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    .line 76
    iput-boolean v4, p0, Lcom/android/camera/CameraController;->mIsSmartSceneDetectSupported:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/CameraController;->supportVideoStabilization()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CameraController;->mIsVideoStabilizationSupported:Z

    .line 83
    :goto_0
    return-void

    .line 67
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    throw v1

    .line 82
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/CameraController;->mIsVideoStabilizationSupported:Z

    goto :goto_0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 867
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startTimeoutTimer(Ljava/lang/String;J)Lcom/android/camera/Handle;
    .locals 7
    .parameter "name"
    .parameter "timeout"

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/camera/CameraController;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/camera/CameraController;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v0}, Lcom/android/camera/debug/IOperationTimeoutController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    .line 910
    .local v5, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v0, p0, Lcom/android/camera/CameraController;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v4, p0, Lcom/android/camera/CameraController;->mOperationTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v0

    .line 912
    .end local v5           #cameraActivity:Lcom/android/camera/HTCCamera;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopTimeoutTimer(Lcom/android/camera/Handle;)V
    .locals 1
    .parameter "handle"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/camera/CameraController;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/camera/CameraController;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v0, p1}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 922
    :cond_0
    return-void
.end method

.method public static supportFlashLight()Z
    .locals 1

    .prologue
    .line 852
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 853
    const/4 v0, 0x1

    .line 855
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportScene()Z
    .locals 1

    .prologue
    .line 860
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 861
    const/4 v0, 0x1

    .line 863
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doSetCameraParameters()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 88
    :try_start_0
    const-string v1, "CameraController"

    const-string v2, "doSetCameraParameters"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CameraController"

    const-string v2, "setParameters exception"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getAutoExposureLock()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAutoExposureLock()Z

    move-result v0

    return v0
.end method

.method public final getAutoWhiteBalanceLock()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAutoWhiteBalanceLock()Z

    move-result v0

    return v0
.end method

.method public final getIntCameraParameter(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getMaxExposureCompensation()I
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    return v0
.end method

.method public final getMinExposureCompensation()I
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getPictureSizeParameter()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSizeParameter()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;
    .locals 10
    .parameter "setting"

    .prologue
    .line 559
    new-instance v2, Lcom/android/camera/CameraController$SettingInfo;

    invoke-direct {v2}, Lcom/android/camera/CameraController$SettingInfo;-><init>()V

    .line 561
    .local v2, info:Lcom/android/camera/CameraController$SettingInfo;
    const-string v7, "exposure-compensation"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 563
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 564
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    .line 565
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 566
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 567
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    return-object v2

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "CameraController"

    const-string v8, "exposure-compensation: set value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 572
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v7, "saturation"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 574
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "saturation-min"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 575
    .local v5, min:I
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "saturation-max"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 576
    .local v4, max:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saturation-min:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",saturation-max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v2, v5}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 578
    invoke-virtual {v2, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 585
    .end local v4           #max:I
    .end local v5           #min:I
    :goto_1
    const/high16 v7, 0x40a0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 587
    :try_start_2
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "saturation-def"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 588
    .local v6, val:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saturation-def:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 596
    .end local v6           #val:I
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "saturation"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 597
    .restart local v6       #val:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current saturation:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 599
    .end local v6           #val:I
    :catch_1
    move-exception v1

    .line 600
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    .line 601
    const-string v7, "CameraController"

    const-string v8, "saturation: set current value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 579
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 580
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 581
    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    .line 582
    const-string v7, "CameraController"

    const-string v8, "saturation: set min, max value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 590
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 591
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 592
    const-string v7, "CameraController"

    const-string v8, "saturation: set default value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 604
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v7, "contrast"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 606
    :try_start_4
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "contrast-min"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 607
    .restart local v5       #min:I
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "contrast-max"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 608
    .restart local v4       #max:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contrast-min:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",contrast-max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {v2, v5}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 610
    invoke-virtual {v2, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 617
    .end local v4           #max:I
    .end local v5           #min:I
    :goto_3
    const/high16 v7, 0x40a0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 619
    :try_start_5
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "contrast-def"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, defVal:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 621
    .local v3, intVal:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contrast-def int: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 629
    .end local v0           #defVal:Ljava/lang/String;
    .end local v3           #intVal:I
    :goto_4
    :try_start_6
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "contrast"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 630
    .restart local v6       #val:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current contrast:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 632
    .end local v6           #val:I
    :catch_4
    move-exception v1

    .line 633
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    .line 634
    const-string v7, "CameraController"

    const-string v8, "contrast: set current value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 611
    .end local v1           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 612
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 613
    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    .line 614
    const-string v7, "CameraController"

    const-string v8, "contrast: set min, max value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 623
    .end local v1           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 624
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 625
    const-string v7, "CameraController"

    const-string v8, "contrast: set default value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 637
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v7, "sharpness"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 639
    :try_start_7
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "sharpness-min"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 640
    .restart local v5       #min:I
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "sharpness-max"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 641
    .restart local v4       #max:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sharpness-min:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",sharpness-max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual {v2, v5}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 643
    invoke-virtual {v2, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 650
    .end local v4           #max:I
    .end local v5           #min:I
    :goto_5
    const/high16 v7, 0x40a0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 652
    :try_start_8
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "sharpness-def"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 653
    .restart local v6       #val:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sharpness-def:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 661
    .end local v6           #val:I
    :goto_6
    :try_start_9
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "sharpness"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 662
    .restart local v6       #val:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current sharpness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    .line 664
    .end local v6           #val:I
    :catch_7
    move-exception v1

    .line 665
    .restart local v1       #e:Ljava/lang/Exception;
    const/16 v7, 0xf

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    .line 666
    const-string v7, "CameraController"

    const-string v8, "sharpness: set current value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 644
    .end local v1           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v1

    .line 645
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 646
    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    .line 647
    const-string v7, "CameraController"

    const-string v8, "sharpness: set min, max value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 655
    .end local v1           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v1

    .line 656
    .restart local v1       #e:Ljava/lang/Exception;
    const/16 v7, 0xf

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 657
    const-string v7, "CameraController"

    const-string v8, "sharpness: set default value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 669
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v7, "taking-picture-zoom"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 671
    const/4 v7, 0x0

    :try_start_a
    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 672
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 678
    :goto_7
    const/high16 v7, 0x3f80

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 679
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 681
    :try_start_b
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "taking-picture-zoom"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    .line 682
    :catch_a
    move-exception v1

    .line 683
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    goto/16 :goto_0

    .line 673
    .end local v1           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v1

    .line 674
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 675
    const/16 v7, 0x1e

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    goto :goto_7

    .line 686
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public final getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public injectGEParam()Z
    .locals 3

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 445
    const-string v1, "CameraController"

    const-string v2, "injectGEParam"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    const/4 v1, 0x1

    .line 454
    :goto_1
    return v1

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CameraController"

    const-string v2, "setParameters exception"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 454
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSmartSceneDetectSupported()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/camera/CameraController;->mIsSmartSceneDetectSupported:Z

    return v0
.end method

.method public isVideoStabilizationSupported()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/CameraController;->mIsVideoStabilizationSupported:Z

    return v0
.end method

.method public removeCameraParameter(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 461
    :cond_0
    if-eqz p1, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 463
    :cond_1
    return-void
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 292
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    if-nez v0, :cond_1

    .line 293
    const-string v0, "CameraController"

    const-string v1, "not support Antibanding !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 296
    :cond_2
    const-string p1, "auto"

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public final setAutoExposureLock(Z)Z
    .locals 3
    .parameter "isLocked"

    .prologue
    .line 316
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoExposureLock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 323
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAutoWhiteBalanceLock(Z)Z
    .locals 3
    .parameter "isLocked"

    .prologue
    .line 330
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoWhiteBalanceLock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 337
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCameraParameter(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 369
    :cond_0
    if-eqz p1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 371
    :cond_1
    return-void
.end method

.method public setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 361
    :cond_0
    if-eqz p1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_1
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 278
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    if-nez v0, :cond_1

    .line 279
    const-string v0, "CameraController"

    const-string v1, "not support Effects !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    :cond_2
    const-string p1, "none"

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 348
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 250
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    if-nez v0, :cond_1

    .line 251
    const-string v0, "CameraController"

    const-string v1, "not support FlashMode !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 254
    :cond_2
    const-string p1, "auto"

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public final setFocusAreas(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, areas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 140
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 155
    :cond_0
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusMode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setGEParam(Ljava/lang/String;IIIIZ)Z
    .locals 5
    .parameter "param"
    .parameter "n0"
    .parameter "n1"
    .parameter "n2"
    .parameter "n3"
    .parameter "bEnable"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 415
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 419
    :cond_0
    const-string v2, "GE-param0"

    if-eq p1, v2, :cond_1

    const-string v2, "GE-param1"

    if-eq p1, v2, :cond_1

    .line 439
    :goto_0
    return v0

    .line 422
    :cond_1
    const-string v2, "GE-param0"

    if-ne p1, v2, :cond_4

    .line 424
    if-ne p6, v1, :cond_3

    iput v1, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    .line 436
    :cond_2
    :goto_1
    const-string v0, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGEParam ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "GE-param3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 439
    goto/16 :goto_0

    .line 425
    :cond_3
    iput v0, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    goto/16 :goto_1

    .line 427
    :cond_4
    const-string v2, "GE-param1"

    if-ne p1, v2, :cond_2

    .line 429
    if-ne p6, v1, :cond_5

    iput v1, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    goto/16 :goto_1

    .line 430
    :cond_5
    iput v0, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    goto/16 :goto_1
.end method

.method public setGpuEffectType(Ljava/lang/String;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "GPU-effect"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public setJpegQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 172
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 11
    .parameter "loc"

    .prologue
    const-wide/16 v9, 0x0

    .line 184
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v7, :cond_0

    .line 185
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 189
    :cond_0
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 196
    if-eqz p1, :cond_6

    .line 197
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 198
    .local v1, lat:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 199
    .local v3, lon:D
    cmpl-double v7, v1, v9

    if-nez v7, :cond_1

    cmpl-double v7, v3, v9

    if-eqz v7, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 201
    .local v0, hasLatLon:Z
    :goto_0
    if-eqz v0, :cond_5

    .line 202
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 203
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 204
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 206
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 213
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 216
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Location.getTime():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9

    .line 218
    .local v5, utcTimeSeconds:J
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "utcTimeSeconds:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 221
    .end local v5           #utcTimeSeconds:J
    :cond_2
    const-string v7, "CameraController"

    const-string v8, "add gps location on photo"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    :goto_2
    return-void

    .line 199
    .restart local v1       #lat:D
    .restart local v3       #lon:D
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    .restart local v0       #hasLatLon:Z
    :cond_4
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 223
    :cond_5
    const-string v7, "CameraController"

    const-string v8, "not add gps location on photo - hasLatLon = false"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 226
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    :cond_6
    const-string v7, "CameraController"

    const-string v8, "not add gps location on photo - loc = null"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, areas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 147
    return-void
.end method

.method public setPictureSizeParameter(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 164
    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 3
    .parameter "min"
    .parameter "max"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 129
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CameraController"

    const-string v2, "setPreviewFpsRange exception"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPreviewSizeParameter(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 122
    return-void
.end method

.method public final setRecordingHint(Z)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 355
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 180
    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 264
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    if-nez v0, :cond_1

    .line 265
    const-string v0, "CameraController"

    const-string v1, "not support SceneMode !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 268
    :cond_2
    const-string p1, "auto"

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public setSupportedList()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 827
    const-string v0, "CameraController"

    const-string v1, "setSupportedList() - mCameraParameters = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    .line 831
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    if-nez v0, :cond_2

    .line 832
    const-string v0, "CameraController"

    const-string v1, "SupportedList.FlashMode == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->FocusModes:Ljava/util/List;

    .line 834
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FocusModes:Ljava/util/List;

    if-nez v0, :cond_3

    .line 835
    const-string v0, "CameraController"

    const-string v1, "SupportedList.FocusModes == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    .line 837
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    if-nez v0, :cond_4

    .line 838
    const-string v0, "CameraController"

    const-string v1, "SupportedList.WhiteBalance == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    .line 840
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    if-nez v0, :cond_5

    .line 841
    const-string v0, "CameraController"

    const-string v1, "SupportedList.Effects == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    .line 843
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    if-nez v0, :cond_6

    .line 844
    const-string v0, "CameraController"

    const-string v1, "SupportedList.Antibanding == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :cond_6
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    .line 847
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    if-nez v0, :cond_0

    .line 848
    const-string v0, "CameraController"

    const-string v1, "SupportedList.SceneMode == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoStabilization(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraController;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-stabilization"

    if-eqz p1, :cond_2

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, "CameraController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoStabilization ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v0, "true"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_1
    return-void

    .line 394
    :cond_2
    const-string v0, "false"

    goto :goto_0

    .line 396
    :cond_3
    const-string v0, "false"

    goto :goto_1
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 236
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    if-nez v0, :cond_1

    .line 237
    const-string v0, "CameraController"

    const-string v1, "not support WhiteBalance !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    :cond_2
    const-string p1, "auto"

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public final setZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 405
    return-void
.end method

.method public showParameters()V
    .locals 3

    .prologue
    .line 474
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public final startPreview()V
    .locals 4

    .prologue
    .line 929
    const-string v1, "Start preview"

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/android/camera/Handle;

    move-result-object v0

    .line 932
    .local v0, handle:Lcom/android/camera/Handle;
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    .line 938
    return-void

    .line 936
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    throw v1
.end method

.method public final stopPreview()V
    .locals 4

    .prologue
    .line 945
    const-string v1, "Stop preview"

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/android/camera/Handle;

    move-result-object v0

    .line 948
    .local v0, handle:Lcom/android/camera/Handle;
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    .line 954
    return-void

    .line 952
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    throw v1
.end method

.method public supportVideoStabilization()Z
    .locals 3

    .prologue
    .line 804
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-stabilization-supported"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, vstabSupported:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    const/4 v1, 0x1

    .line 820
    :goto_0
    return v1

    .line 819
    :cond_1
    const-string v1, "CameraController"

    const-string v2, "Video Stabilization is not supported."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateCameraParameters()V
    .locals 4

    .prologue
    .line 106
    const-string v1, "Get camera parameters"

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/android/camera/Handle;

    move-result-object v0

    .line 109
    .local v0, handle:Lcom/android/camera/Handle;
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    throw v1
.end method
