.class Lcom/android/camera/component/CaptureResolutionManager;
.super Lcom/android/camera/ICaptureResolutionManager;
.source "CaptureResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/CaptureResolutionManager$9;
    }
.end annotation


# static fields
.field private static final MIN_VIDEO_FILE_LIMIT:J = 0x61a8L

.field private static final MMS_RECORDING_DURATION:Lcom/android/camera/Duration; = null

.field private static final MMS_RECORDING_DURATION_2X:Lcom/android/camera/Duration; = null

.field static final NAME:Ljava/lang/String; = "Capture Resolution Manager"

.field private static final REASSIGN_VIDEO_FILE_LIMIT:J = 0xea60L


# instance fields
.field private m_PhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

.field private m_PhotoResolutionsHandle:Lcom/android/camera/Handle;

.field private m_VideoResolutionProvider:Lcom/android/camera/IVideoResolutionProvider;

.field private m_VideoResolutionsHandle:Lcom/android/camera/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x3c

    invoke-static {v0, v1}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/camera/component/CaptureResolutionManager;->MMS_RECORDING_DURATION:Lcom/android/camera/Duration;

    .line 35
    const-wide/16 v0, 0x78

    invoke-static {v0, v1}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/camera/component/CaptureResolutionManager;->MMS_RECORDING_DURATION_2X:Lcom/android/camera/Duration;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 7
    .parameter "cameraThread"

    .prologue
    const/4 v6, 0x4

    .line 51
    const-string v1, "Capture Resolution Manager"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ICaptureResolutionManager;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v6}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v6}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v6}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v6}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getDefaultPhotoResolutionProvider()Lcom/android/camera/IPhotoResolutionProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getDefaultVideoResolutionProvider()Lcom/android/camera/IVideoResolutionProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_VideoResolutionProvider:Lcom/android/camera/IVideoResolutionProvider;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/CaptureResolutionManager;Lcom/android/camera/Resolution;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureResolutionManager;->updateMaxVideoSize(Lcom/android/camera/Resolution;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/CaptureResolutionManager;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/CaptureResolutionManager;Lcom/android/camera/Handle;Lcom/android/camera/IPhotoResolutionProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/CaptureResolutionManager;->setPhotoResolutionProvider(Lcom/android/camera/Handle;Lcom/android/camera/IPhotoResolutionProvider;Z)V

    return-void
.end method

.method private setPhotoResolution(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)V
    .locals 4
    .parameter "cameraType"
    .parameter "resolution"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

    invoke-interface {v2, p1}, Lcom/android/camera/IPhotoResolutionProvider;->getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, key:Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 268
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/IPhotoResolutionProvider;->getPreviewSize(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)Lcom/android/camera/imaging/Size;

    move-result-object v1

    .line 271
    .local v1, previewSize:Lcom/android/camera/imaging/Size;
    iget-object v2, p0, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, p2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    iget-object v2, p0, Lcom/android/camera/ICaptureResolutionManager;->photoPreviewSize:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method private setPhotoResolutionProvider(Lcom/android/camera/Handle;Lcom/android/camera/IPhotoResolutionProvider;Z)V
    .locals 2
    .parameter "handle"
    .parameter "provider"
    .parameter "syncResolution"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setPhotoResolutionProvider() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setPhotoResolutionProvider() - Provider : "

    invoke-static {v0, v1, p2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

    if-ne v0, p2, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setPhotoResolutionProvider() - Change to same provider"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 320
    :cond_0
    iput-object p2, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

    .line 321
    iput-object p1, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionsHandle:Lcom/android/camera/Handle;

    .line 324
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p3, v0, v1}, Lcom/android/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V

    goto :goto_0
.end method

.method private setVideoResolution(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)V
    .locals 4
    .parameter "cameraType"
    .parameter "resolution"

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_VideoResolutionProvider:Lcom/android/camera/IVideoResolutionProvider;

    invoke-interface {v2, p1}, Lcom/android/camera/IVideoResolutionProvider;->getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, key:Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 416
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_VideoResolutionProvider:Lcom/android/camera/IVideoResolutionProvider;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/IVideoResolutionProvider;->getPreviewSize(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)Lcom/android/camera/imaging/Size;

    move-result-object v1

    .line 419
    .local v1, previewSize:Lcom/android/camera/imaging/Size;
    iget-object v2, p0, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, p2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 420
    iget-object v2, p0, Lcom/android/camera/ICaptureResolutionManager;->videoPreviewSize:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 425
    invoke-direct {p0, p2}, Lcom/android/camera/component/CaptureResolutionManager;->updateVideoBitRate(Lcom/android/camera/Resolution;)V

    .line 426
    invoke-direct {p0, p2}, Lcom/android/camera/component/CaptureResolutionManager;->updateMaxVideoSize(Lcom/android/camera/Resolution;)V

    .line 428
    :cond_1
    return-void
.end method

.method private updateMaxVideoSize(Lcom/android/camera/Resolution;)V
    .locals 9
    .parameter "resolution"

    .prologue
    const-wide/16 v7, 0x61a8

    .line 435
    const-wide v3, 0xff800000L

    .line 436
    .local v3, maxSize:J
    sget-object v2, Lcom/android/camera/Duration;->INFINITE:Lcom/android/camera/Duration;

    .line 438
    .local v2, maxDuration:Lcom/android/camera/Duration;
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 440
    if-eqz p1, :cond_c

    .line 442
    sget-object v5, Lcom/android/camera/component/CaptureResolutionManager$9;->$SwitchMap$com$android$camera$CameraStartMode:[I

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 466
    invoke-virtual {p1}, Lcom/android/camera/Resolution;->isMmsVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pref_key_mms_max_size"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 515
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 516
    iget-object v5, p0, Lcom/android/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v5, v6, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 517
    return-void

    .line 446
    :pswitch_0
    invoke-static {}, Lcom/android/camera/IntentManager;->getMMS_MaximumSize()I

    move-result v5

    int-to-long v3, v5

    .line 447
    cmp-long v5, v3, v7

    if-gez v5, :cond_1

    .line 448
    const-wide/32 v3, 0xea60

    .line 449
    :cond_1
    sget-object v5, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v6, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v5, v6, :cond_2

    .line 450
    sget-object v2, Lcom/android/camera/component/CaptureResolutionManager;->MMS_RECORDING_DURATION:Lcom/android/camera/Duration;

    goto :goto_0

    .line 451
    :cond_2
    sget-object v5, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v6, Lcom/android/camera/DisplayDevice$CustomMMS;->Sprint:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v5, v6, :cond_0

    .line 452
    sget-object v2, Lcom/android/camera/component/CaptureResolutionManager;->MMS_RECORDING_DURATION_2X:Lcom/android/camera/Duration;

    goto :goto_0

    .line 458
    :pswitch_1
    invoke-static {}, Lcom/android/camera/IntentManager;->getVideoMaximum_Size()J

    move-result-wide v3

    .line 459
    cmp-long v5, v3, v7

    if-gez v5, :cond_0

    .line 460
    const-wide/32 v3, 0xea60

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 474
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "updateMaxVideoSize() - Cannot get maximum MMS file size from settings"

    invoke-static {v5, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    sget-object v2, Lcom/android/camera/component/CaptureResolutionManager;->MMS_RECORDING_DURATION:Lcom/android/camera/Duration;

    .line 476
    goto :goto_0

    .line 478
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_3
    sget-object v5, Lcom/android/camera/Resolution;->Video_VGA_Online:Lcom/android/camera/Resolution;

    invoke-virtual {p1, v5}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {p1, v5}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/camera/Resolution;->Video_1080p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {p1, v5}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 482
    :cond_4
    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Lcom/android/camera/Duration;->fromMinutes(J)Lcom/android/camera/Duration;

    move-result-object v2

    goto :goto_0

    .line 486
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v5

    const-string v6, "pref_camera_recording_limit"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, limit:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 489
    const-string v5, "250kb"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 490
    const-wide/32 v3, 0x3d090

    goto :goto_0

    .line 491
    :cond_6
    const-string v5, "1mb"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 492
    const-wide/32 v3, 0xf4240

    goto/16 :goto_0

    .line 493
    :cond_7
    const-string v5, "2mb"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 494
    const-wide/32 v3, 0x1e8480

    goto/16 :goto_0

    .line 495
    :cond_8
    const-string v5, "10s"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 496
    const-wide/16 v3, 0xa

    goto/16 :goto_0

    .line 497
    :cond_9
    const-string v5, "30s"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 498
    const-wide/16 v3, 0x1e

    goto/16 :goto_0

    .line 499
    :cond_a
    const-string v5, "1min"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 500
    const-wide/16 v3, 0x3c

    goto/16 :goto_0

    .line 501
    :cond_b
    const-string v5, "3min"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 502
    const-wide/16 v3, 0xb4

    goto/16 :goto_0

    .line 511
    .end local v1           #limit:Ljava/lang/String;
    :cond_c
    const-wide/16 v3, 0x0

    .line 512
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v2

    goto/16 :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateResolutions(ZZZ)V
    .locals 12
    .parameter "syncPhotoResolution"
    .parameter "syncVideoResolution"
    .parameter "restartPreview"

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 530
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v6

    if-nez v6, :cond_1

    .line 532
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "updateResolutions() - Called from another thread"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v6, Lcom/android/camera/component/CaptureResolutionManager$8;

    invoke-direct {v6, p0}, Lcom/android/camera/component/CaptureResolutionManager$8;-><init>(Lcom/android/camera/component/CaptureResolutionManager;)V

    invoke-virtual {p0, v6}, Lcom/android/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "updateResolutions("

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, ")"

    invoke-static {v6, v8, v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 545
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "updateResolutions() - Sync photo resolution : "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 546
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "updateResolutions() - Sync video resolution : "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 549
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getState()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 555
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "updateResolutions() - Component is not running"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v1

    .line 563
    .local v1, cameraType:Lcom/android/camera/CameraType;
    iget-object v6, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

    invoke-interface {v6, v1}, Lcom/android/camera/IPhotoResolutionProvider;->getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;

    move-result-object v5

    .line 564
    .local v5, resolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    if-nez v5, :cond_2

    iget-object v6, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionsHandle:Lcom/android/camera/Handle;

    if-eqz v6, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getDefaultPhotoResolutionProvider()Lcom/android/camera/IPhotoResolutionProvider;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/android/camera/IPhotoResolutionProvider;->getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;

    move-result-object v5

    .line 567
    if-nez v5, :cond_2

    .line 568
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "updateResolutions() - No photo resolution list"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_2
    iget-object v6, p0, Lcom/android/camera/ICaptureResolutionManager;->photoResolutionList:Lcom/android/camera/property/Property;

    iget-object v8, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v6, v8, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 574
    if-eqz v5, :cond_b

    .line 576
    if-eqz p1, :cond_9

    iget-object v6, p0, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    move-object v2, v6

    .line 577
    .local v2, oldResolution:Lcom/android/camera/Resolution;
    :goto_1
    iget-object v6, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

    invoke-interface {v6, v1, v5, v2}, Lcom/android/camera/IPhotoResolutionProvider;->getResolution(Lcom/android/camera/CameraType;Ljava/util/List;Lcom/android/camera/Resolution;)Lcom/android/camera/Resolution;

    move-result-object v4

    .line 578
    .local v4, resolution:Lcom/android/camera/Resolution;
    if-nez v4, :cond_3

    .line 580
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 582
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "updateResolutions() - No photo resolution returned from provider, use maximum resolution"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #resolution:Lcom/android/camera/Resolution;
    check-cast v4, Lcom/android/camera/Resolution;

    .line 591
    .end local v2           #oldResolution:Lcom/android/camera/Resolution;
    .restart local v4       #resolution:Lcom/android/camera/Resolution;
    :cond_3
    :goto_2
    invoke-direct {p0, v1, v4}, Lcom/android/camera/component/CaptureResolutionManager;->setPhotoResolution(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)V

    .line 594
    iget-object v6, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_VideoResolutionProvider:Lcom/android/camera/IVideoResolutionProvider;

    invoke-interface {v6, v1}, Lcom/android/camera/IVideoResolutionProvider;->getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;

    move-result-object v5

    .line 595
    if-nez v5, :cond_4

    iget-object v6, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_VideoResolutionsHandle:Lcom/android/camera/Handle;

    if-eqz v6, :cond_4

    .line 597
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getDefaultVideoResolutionProvider()Lcom/android/camera/IVideoResolutionProvider;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/android/camera/IVideoResolutionProvider;->getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;

    move-result-object v5

    .line 598
    if-nez v5, :cond_4

    .line 599
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "updateResolutions() - No video resolution list"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_4
    iget-object v6, p0, Lcom/android/camera/ICaptureResolutionManager;->videoResolutionList:Lcom/android/camera/property/Property;

    iget-object v8, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v6, v8, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 604
    if-eqz v5, :cond_e

    .line 606
    if-eqz p1, :cond_c

    iget-object v6, p0, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    move-object v2, v6

    .line 607
    .restart local v2       #oldResolution:Lcom/android/camera/Resolution;
    :goto_3
    iget-object v6, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_VideoResolutionProvider:Lcom/android/camera/IVideoResolutionProvider;

    invoke-interface {v6, v1, v5, v2}, Lcom/android/camera/IVideoResolutionProvider;->getResolution(Lcom/android/camera/CameraType;Ljava/util/List;Lcom/android/camera/Resolution;)Lcom/android/camera/Resolution;

    move-result-object v4

    .line 608
    if-nez v4, :cond_5

    .line 610
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 612
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "updateResolutions() - No video resolution returned from provider, use maximum resolution"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #resolution:Lcom/android/camera/Resolution;
    check-cast v4, Lcom/android/camera/Resolution;

    .line 621
    .end local v2           #oldResolution:Lcom/android/camera/Resolution;
    .restart local v4       #resolution:Lcom/android/camera/Resolution;
    :cond_5
    :goto_4
    invoke-direct {p0, v1, v4}, Lcom/android/camera/component/CaptureResolutionManager;->setVideoResolution(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)V

    .line 624
    iget-object v6, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_VideoResolutionProvider:Lcom/android/camera/IVideoResolutionProvider;

    invoke-interface {v6, v1, v5}, Lcom/android/camera/IVideoResolutionProvider;->getSlowMotionResolution(Lcom/android/camera/CameraType;Ljava/util/List;)Lcom/android/camera/Resolution;

    move-result-object v4

    .line 625
    if-nez v4, :cond_6

    .line 626
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getDefaultVideoResolutionProvider()Lcom/android/camera/IVideoResolutionProvider;

    move-result-object v6

    invoke-interface {v6, v1, v5}, Lcom/android/camera/IVideoResolutionProvider;->getSlowMotionResolution(Lcom/android/camera/CameraType;Ljava/util/List;)Lcom/android/camera/Resolution;

    move-result-object v4

    .line 627
    :cond_6
    iget-object v6, p0, Lcom/android/camera/ICaptureResolutionManager;->slowMotionVideoResolution:Lcom/android/camera/property/Property;

    iget-object v8, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v6, v8, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 630
    iget-object v6, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_VideoResolutionProvider:Lcom/android/camera/IVideoResolutionProvider;

    invoke-interface {v6, v1, v4}, Lcom/android/camera/IVideoResolutionProvider;->getPreviewSize(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)Lcom/android/camera/imaging/Size;

    move-result-object v3

    .line 631
    .local v3, previewSize:Lcom/android/camera/imaging/Size;
    iget-object v6, p0, Lcom/android/camera/ICaptureResolutionManager;->slowMotionVideoPreviewSize:Lcom/android/camera/property/Property;

    iget-object v8, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v6, v8, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 634
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 635
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 637
    invoke-direct {p0, v4}, Lcom/android/camera/component/CaptureResolutionManager;->updateVideoBitRate(Lcom/android/camera/Resolution;)V

    .line 638
    invoke-direct {p0, v4}, Lcom/android/camera/component/CaptureResolutionManager;->updateMaxVideoSize(Lcom/android/camera/Resolution;)V

    .line 642
    :cond_7
    iget-object v6, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

    invoke-interface {v6, v1}, Lcom/android/camera/IPhotoResolutionProvider;->getContactPhotoResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v4

    .line 643
    if-nez v4, :cond_8

    .line 644
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getDefaultPhotoResolutionProvider()Lcom/android/camera/IPhotoResolutionProvider;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/android/camera/IPhotoResolutionProvider;->getContactPhotoResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v4

    .line 645
    :cond_8
    iget-object v6, p0, Lcom/android/camera/ICaptureResolutionManager;->contactPhotoResolution:Lcom/android/camera/property/Property;

    iget-object v8, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v6, v8, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 648
    if-eqz p3, :cond_0

    iget-object v6, v0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 650
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "updateResolutions() - Re-start preview to apply new resolutions"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0, v7}, Lcom/android/camera/CameraThread;->restartPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    goto/16 :goto_0

    .end local v0           #cameraThread:Lcom/android/camera/CameraThread;
    .end local v3           #previewSize:Lcom/android/camera/imaging/Size;
    .end local v4           #resolution:Lcom/android/camera/Resolution;
    :cond_9
    move-object v2, v7

    .line 576
    goto/16 :goto_1

    .line 586
    .restart local v2       #oldResolution:Lcom/android/camera/Resolution;
    .restart local v4       #resolution:Lcom/android/camera/Resolution;
    :cond_a
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "updateResolutions() - Empty photo resolution list"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 590
    .end local v2           #oldResolution:Lcom/android/camera/Resolution;
    .end local v4           #resolution:Lcom/android/camera/Resolution;
    :cond_b
    const/4 v4, 0x0

    .restart local v4       #resolution:Lcom/android/camera/Resolution;
    goto/16 :goto_2

    :cond_c
    move-object v2, v7

    .line 606
    goto/16 :goto_3

    .line 616
    .restart local v2       #oldResolution:Lcom/android/camera/Resolution;
    :cond_d
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "updateResolutions() - Empty video resolution list"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 620
    .end local v2           #oldResolution:Lcom/android/camera/Resolution;
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVideoBitRate(Lcom/android/camera/Resolution;)V
    .locals 5
    .parameter "resolution"

    .prologue
    .line 662
    if-eqz p1, :cond_0

    .line 663
    invoke-virtual {p1}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v1

    .line 666
    .local v1, videoWidth:I
    :goto_0
    const/16 v2, 0x780

    if-lt v1, v2, :cond_1

    .line 667
    const v0, 0x989680

    .line 710
    .local v0, bitRate:I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ICaptureResolutionManager;->videoBitRate:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 711
    return-void

    .line 665
    .end local v0           #bitRate:I
    .end local v1           #videoWidth:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #videoWidth:I
    goto :goto_0

    .line 668
    :cond_1
    const/16 v2, 0x500

    if-lt v1, v2, :cond_2

    .line 669
    const v0, 0x7a1200

    .restart local v0       #bitRate:I
    goto :goto_1

    .line 670
    .end local v0           #bitRate:I
    :cond_2
    const/16 v2, 0x3c0

    if-lt v1, v2, :cond_3

    .line 671
    const v0, 0x4c4b40

    .restart local v0       #bitRate:I
    goto :goto_1

    .line 672
    .end local v0           #bitRate:I
    :cond_3
    const/16 v2, 0x320

    if-lt v1, v2, :cond_4

    .line 673
    const v0, 0x2dc6c0

    .restart local v0       #bitRate:I
    goto :goto_1

    .line 674
    .end local v0           #bitRate:I
    :cond_4
    const/16 v2, 0x2d0

    if-lt v1, v2, :cond_5

    .line 675
    const v0, 0x2dc6c0

    .restart local v0       #bitRate:I
    goto :goto_1

    .line 676
    .end local v0           #bitRate:I
    :cond_5
    const/16 v2, 0x280

    if-lt v1, v2, :cond_6

    .line 677
    const v0, 0x186a00

    .restart local v0       #bitRate:I
    goto :goto_1

    .line 678
    .end local v0           #bitRate:I
    :cond_6
    const/16 v2, 0x1e0

    if-lt v1, v2, :cond_7

    .line 679
    const v0, 0xf4240

    .restart local v0       #bitRate:I
    goto :goto_1

    .line 680
    .end local v0           #bitRate:I
    :cond_7
    const/16 v2, 0x160

    if-lt v1, v2, :cond_8

    .line 681
    const v0, 0xc3500

    .restart local v0       #bitRate:I
    goto :goto_1

    .line 682
    .end local v0           #bitRate:I
    :cond_8
    const/16 v2, 0x140

    if-lt v1, v2, :cond_a

    .line 684
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    if-ne v2, v3, :cond_9

    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v2, v3, :cond_9

    .line 687
    const v0, 0x1f400

    .restart local v0       #bitRate:I
    goto :goto_1

    .line 690
    .end local v0           #bitRate:I
    :cond_9
    const v0, 0xc3500

    .restart local v0       #bitRate:I
    goto :goto_1

    .line 692
    .end local v0           #bitRate:I
    :cond_a
    const/16 v2, 0xb0

    if-lt v1, v2, :cond_e

    .line 694
    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v2, v3, :cond_b

    .line 695
    const v0, 0x1f400

    .restart local v0       #bitRate:I
    goto :goto_1

    .line 696
    .end local v0           #bitRate:I
    :cond_b
    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/android/camera/DisplayDevice$CustomMMS;->Sprint:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v2, v3, :cond_d

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x95

    if-eq v2, v3, :cond_c

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x97

    if-ne v2, v3, :cond_d

    .line 700
    :cond_c
    const v0, 0x1f400

    .restart local v0       #bitRate:I
    goto/16 :goto_1

    .line 703
    .end local v0           #bitRate:I
    :cond_d
    const v0, 0x13880

    .restart local v0       #bitRate:I
    goto/16 :goto_1

    .line 707
    .end local v0           #bitRate:I
    :cond_e
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateByteRate() - Unknown video resolution : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const v0, 0x11170

    .restart local v0       #bitRate:I
    goto/16 :goto_1
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/camera/ICaptureResolutionManager;->initializeOverride()V

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 75
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureResolutionManager$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureResolutionManager$1;-><init>(Lcom/android/camera/component/CaptureResolutionManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 83
    iget-object v1, v0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureResolutionManager$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureResolutionManager$2;-><init>(Lcom/android/camera/component/CaptureResolutionManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    new-instance v2, Lcom/android/camera/component/CaptureResolutionManager$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureResolutionManager$3;-><init>(Lcom/android/camera/component/CaptureResolutionManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 137
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->updateResolutions()V

    .line 138
    return-void
.end method

.method public restorePhotoResolutionProvider(Lcom/android/camera/Handle;Z)V
    .locals 2
    .parameter "handle"
    .parameter "syncResolution"

    .prologue
    .line 147
    if-nez p1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "restorePhotoResolutionProvider() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "restorePhotoResolutionProvider() - Called from another thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/android/camera/component/CaptureResolutionManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/component/CaptureResolutionManager$4;-><init>(Lcom/android/camera/component/CaptureResolutionManager;Lcom/android/camera/Handle;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "restorePhotoResolutionProvider() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionsHandle:Lcom/android/camera/Handle;

    if-ne v0, p1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getDefaultPhotoResolutionProvider()Lcom/android/camera/IPhotoResolutionProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager;->m_PhotoResolutionsHandle:Lcom/android/camera/Handle;

    .line 177
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V

    goto :goto_0
.end method

.method public restoreVideoResolutionProvider(Lcom/android/camera/Handle;Z)V
    .locals 2
    .parameter "handle"
    .parameter "syncResolution"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "restoreVideoResolutionProvider() - Not implemented"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public setPhotoResolution(Lcom/android/camera/Resolution;)V
    .locals 8
    .parameter "resolution"

    .prologue
    .line 196
    if-nez p1, :cond_1

    .line 198
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setPhotoResolution() - No resolution specified"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v5

    if-nez v5, :cond_2

    .line 205
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setPhotoResolution() - Called from another thread"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v5, Lcom/android/camera/component/CaptureResolutionManager$5;

    invoke-direct {v5, p0, p1}, Lcom/android/camera/component/CaptureResolutionManager$5;-><init>(Lcom/android/camera/component/CaptureResolutionManager;Lcom/android/camera/Resolution;)V

    invoke-virtual {p0, v5}, Lcom/android/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->isRunning()Z

    move-result v5

    if-nez v5, :cond_3

    .line 220
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setPhotoResolution() - Component is not running"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ICaptureResolutionManager;->photoResolutionList:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 226
    .local v4, resolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    if-nez v4, :cond_4

    .line 228
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setPhotoResolution() - No resolution list"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_4
    const/4 v3, 0x0

    .line 232
    .local v3, resolutionFound:Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Resolution;

    .line 234
    .local v1, candResolution:Lcom/android/camera/Resolution;
    invoke-virtual {v1, p1}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 236
    const/4 v3, 0x1

    .line 240
    .end local v1           #candResolution:Lcom/android/camera/Resolution;
    :cond_6
    if-nez v3, :cond_7

    .line 242
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPhotoResolution() - Resolution \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not in resolution list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/camera/component/CaptureResolutionManager;->setPhotoResolution(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 251
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v5, v0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setPhotoResolution() - Re-start preview to apply new resolutions"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraThread;->restartPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    goto/16 :goto_0
.end method

.method public setPhotoResolutionProvider(Lcom/android/camera/IPhotoResolutionProvider;Z)Lcom/android/camera/Handle;
    .locals 3
    .parameter "provider"
    .parameter "syncResolution"

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setPhotoResolutionProvider() - No provider specified"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x0

    .line 307
    :goto_0
    return-object v0

    .line 289
    :cond_0
    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "PhotoResolutionProvider"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, handle:Lcom/android/camera/SessionHandle;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setPhotoResolutionProvider() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setPhotoResolutionProvider() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v1, Lcom/android/camera/component/CaptureResolutionManager$6;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/camera/component/CaptureResolutionManager$6;-><init>(Lcom/android/camera/component/CaptureResolutionManager;Lcom/android/camera/SessionHandle;Lcom/android/camera/IPhotoResolutionProvider;Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 306
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/component/CaptureResolutionManager;->setPhotoResolutionProvider(Lcom/android/camera/Handle;Lcom/android/camera/IPhotoResolutionProvider;Z)V

    goto :goto_0
.end method

.method public setVideoResolution(Lcom/android/camera/Resolution;)V
    .locals 8
    .parameter "resolution"

    .prologue
    .line 344
    if-nez p1, :cond_1

    .line 346
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setVideoResolution() - No resolution specified"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v5

    if-nez v5, :cond_2

    .line 353
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setVideoResolution() - Called from another thread"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v5, Lcom/android/camera/component/CaptureResolutionManager$7;

    invoke-direct {v5, p0, p1}, Lcom/android/camera/component/CaptureResolutionManager$7;-><init>(Lcom/android/camera/component/CaptureResolutionManager;Lcom/android/camera/Resolution;)V

    invoke-virtual {p0, v5}, Lcom/android/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->isRunning()Z

    move-result v5

    if-nez v5, :cond_3

    .line 368
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setVideoResolution() - Component is not running"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ICaptureResolutionManager;->videoResolutionList:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 374
    .local v4, resolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    if-nez v4, :cond_4

    .line 376
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setVideoResolution() - No resolution list"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_4
    const/4 v3, 0x0

    .line 380
    .local v3, resolutionFound:Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Resolution;

    .line 382
    .local v1, candResolution:Lcom/android/camera/Resolution;
    invoke-virtual {v1, p1}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 384
    const/4 v3, 0x1

    .line 388
    .end local v1           #candResolution:Lcom/android/camera/Resolution;
    :cond_6
    if-nez v3, :cond_7

    .line 390
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setVideoResolution() - Resolution \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not in resolution list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/camera/component/CaptureResolutionManager;->setVideoResolution(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 399
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v5, v0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 401
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setVideoResolution() - Re-start preview to apply new resolutions"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraThread;->restartPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    goto/16 :goto_0
.end method

.method public setVideoResolutionProvider(Lcom/android/camera/IVideoResolutionProvider;Z)Lcom/android/camera/Handle;
    .locals 2
    .parameter "provider"
    .parameter "syncResolution"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setVideoResolutionProvider() - Not implemented"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateResolutions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 525
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/android/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V

    .line 526
    return-void
.end method
