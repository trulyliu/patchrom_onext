.class public final Lcom/android/camera/sina/GifModeController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "GifModeController.java"

# interfaces
.implements Lcom/android/camera/IPhotoCaptureHandler;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/sina/GifModeController$3;,
        Lcom/android/camera/sina/GifModeController$SaveGifImageTask;,
        Lcom/android/camera/sina/GifModeController$CaptureState;
    }
.end annotation


# static fields
.field private static final BYTE_RATE:I = 0x400

.field private static final EXTRA_TEMP_FILE_PATH:Ljava/lang/String; = "/com.android.camera/cache"

.field private static final GIF_TEMP_STORAGE_MAX_SIZE:I = 0x500000

.field private static final JPEG_CALLBACK_CANCEL:I = 0x4

.field private static final JPEG_CALLBACK_FROM_DRIVER:I = 0x1

.field private static final JPEG_CALLBACK_IS_TIMEOUT:I = 0x2

.field private static final JPEG_CALLBACK_NONE:I = 0x0

.field private static final MAX_PICTURE_COUNT:I = 0x12

.field static final MSG_ENTER:I = 0x2710

.field static final MSG_EXIT:I = 0x2711

.field private static final MSG_GIF_ENCODE_COMPLETED:I = 0x2717

.field private static final MSG_IMAGE_SAVE_FAILED:I = 0x271d

.field private static final MSG_JPEG_CALLBACK_TIMEOUT:I = 0x271b

.field static final MSG_SET_PICTURE_COUNT:I = 0x2714

.field private static final MSG_THUMBNAIL_IMAGE_CREATED:I = 0x2718

.field static final NAME:Ljava/lang/String; = "Gif Mode Controller"

.field private static final SINA_CAMERA_MAX_TOTAL_INTERVAL:J = 0x1770L

.field private static final SINA_CAMERA_MIN_INTERVAL:J = 0x14dL

.field private static final SIZE_RATIO_DROP_CONSECUTIVE:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "GifModeController"

.field private static m_FirstPicturePortrait:Z


# instance fields
.field private m_CaptureHandle:Lcom/android/camera/CaptureHandle;

.field private m_CaptureInterval:I

.field private m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

.field private m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

.field private m_IsCaptureModeChanged:Z

.field private m_IsEncodingStartMsgSent:Z

.field private m_IsEntered:Z

.field private m_IsFirstPicture:Z

.field private final m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private m_JpegIndex:I

.field private final m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

.field private m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

.field private m_SavedPicturePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_StartCaptureTime:J

.field private m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

.field private m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

.field private m_TotalCaptureInterval:J

.field private m_UI:Lcom/android/camera/sina/GifModeUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/sina/GifModeController;->m_FirstPicturePortrait:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 430
    const-string v0, "Gif Mode Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 90
    sget-object v0, Lcom/android/camera/sina/GifModeController$CaptureState;->Unavailable:Lcom/android/camera/sina/GifModeController$CaptureState;

    iput-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_SavedPicturePathList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Lcom/android/camera/sina/GifModeController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/sina/GifModeController$1;-><init>(Lcom/android/camera/sina/GifModeController;)V

    iput-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    .line 431
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/sina/GifModeController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/sina/GifModeController;->onJpegCallbackTimeout(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/sina/GifModeController;)Lcom/android/camera/sina/GifModeUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/component/Component;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 52
    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 52
    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/component/Component;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/camera/sina/GifModeController;->m_FirstPicturePortrait:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 52
    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/CameraController;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/sina/GifModeController;->setupParamsBeforeTakingPicture(Lcom/android/camera/CameraController;)Z

    move-result v0

    return v0
.end method

.method private static getAvailableExternalStorageSize(Ljava/lang/String;)J
    .locals 7
    .parameter "externalStoragePath"

    .prologue
    .line 1570
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1571
    .local v4, sf:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 1572
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 1573
    .local v0, availCount:J
    mul-long v5, v0, v2

    return-wide v5
.end method

.method private static getAvailableFileSystemSize()J
    .locals 8

    .prologue
    .line 1562
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    .line 1563
    .local v4, root:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1564
    .local v5, sf:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 1565
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 1566
    .local v0, availCount:J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getTempFileSavingPath(Lcom/android/camera/HTCCamera;)Ljava/lang/String;
    .locals 6
    .parameter "cameraActivity"

    .prologue
    const-wide/32 v4, 0x500000

    .line 1535
    const/4 v1, 0x0

    .line 1536
    .local v1, path:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 1537
    const-string v2, "GifModeController"

    const-string v3, "getTempFileSavingPath cameraActivity == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const/4 v2, 0x0

    .line 1558
    :goto_0
    return-object v2

    .line 1540
    :cond_0
    invoke-static {}, Lcom/android/camera/sina/GifModeController;->getAvailableFileSystemSize()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1541
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1542
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 1543
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .end local v0           #file:Ljava/io/File;
    :goto_1
    move-object v2, v1

    .line 1558
    goto :goto_0

    .line 1545
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    const-string v2, "GifModeController"

    const-string v3, "getTempFileSavingPath cameraActivity.getCacheDir() == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1548
    .end local v0           #file:Ljava/io/File;
    :cond_2
    sget-object v2, Lcom/android/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

    iget-object v2, v2, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/sina/GifModeController;->getAvailableExternalStorageSize(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 1550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

    iget-object v3, v3, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/com.android.camera/cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1551
    :cond_3
    sget-object v2, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    iget-object v2, v2, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/sina/GifModeController;->getAvailableExternalStorageSize(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 1553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    iget-object v3, v3, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/com.android.camera/cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1555
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 2
    .parameter "cameraActivity"

    .prologue
    const/4 v0, 0x0

    .line 566
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v0

    .line 568
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isGifModeBySetOneShotPreviewCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToUI()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 578
    iget-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;

    if-eqz v1, :cond_0

    .line 582
    :goto_0
    return v2

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 581
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v1

    const-string v3, "Gif Mode UI"

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/sina/GifModeUI;

    :goto_1
    iput-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;

    .line 582
    iget-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_0

    .line 581
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 582
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private onEntered()V
    .locals 2

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/android/camera/sina/GifModeController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/sina/GifModeController;->m_IsEntered:Z

    .line 596
    sget-object v0, Lcom/android/camera/sina/GifModeController$CaptureState;->Ready:Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/sina/GifModeController;->setCaptureState(Lcom/android/camera/sina/GifModeController$CaptureState;)V

    .line 599
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeController;->linkToUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    const-string v0, "GifModeController"

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExited()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 609
    iget-boolean v1, p0, Lcom/android/camera/sina/GifModeController;->m_IsEntered:Z

    if-nez v1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/sina/GifModeController;->m_IsEntered:Z

    .line 615
    sget-object v1, Lcom/android/camera/sina/GifModeController$CaptureState;->Unavailable:Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v1}, Lcom/android/camera/sina/GifModeController;->setCaptureState(Lcom/android/camera/sina/GifModeController$CaptureState;)V

    .line 618
    iget-boolean v1, p0, Lcom/android/camera/sina/GifModeController;->m_IsCaptureModeChanged:Z

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 621
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_3

    .line 623
    const-string v1, "GifModeController"

    const-string v2, "onExited() - Set capture mode to normal"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v1, "GifModeController"

    const-string v2, "onExited() - Enable time-consuming post-processing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    const-string v1, "capture-mode"

    const-string v2, "zsl"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :goto_1
    const-string v1, "time-cons-post-processing"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 634
    :goto_2
    iput-boolean v3, p0, Lcom/android/camera/sina/GifModeController;->m_IsCaptureModeChanged:Z

    goto :goto_0

    .line 628
    :cond_2
    const-string v1, "capture-mode"

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 633
    :cond_3
    const-string v1, "GifModeController"

    const-string v2, "onExited() - No camera controller to reset capture mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onGifSaveFailed(ILcom/android/camera/io/Path;)V
    .locals 3
    .parameter "index"
    .parameter "filePath"

    .prologue
    .line 1517
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageSaveFailed() - Index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

    sget-object v1, Lcom/android/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/android/camera/sina/GifModeController$CaptureState;

    if-eq v0, v1, :cond_0

    .line 1522
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageSaveFailed() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/sina/GifModeController;->m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :goto_0
    return-void

    .line 1527
    :cond_0
    const-string v0, "GifModeController"

    const-string v1, "onImageSaveFailed() - Stop capture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    sget-object v0, Lcom/android/camera/sina/GifModeController$CaptureState;->Stopping:Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/sina/GifModeController;->setCaptureState(Lcom/android/camera/sina/GifModeController$CaptureState;)V

    goto :goto_0
.end method

.method private onGifSaved(Lcom/android/camera/io/SaveImageTask;Lcom/android/camera/io/Path;)V
    .locals 11
    .parameter "saveTask"
    .parameter "filePath"

    .prologue
    const/4 v4, 0x0

    .line 1466
    const-string v1, "GifModeController"

    const-string v2, "onImageSaved(\'"

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "\')"

    invoke-static {v1, v2, v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1469
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    iget-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/IThumbnailImageManager;->enableAutoUpdate(Lcom/android/camera/Handle;)V

    .line 1472
    iput-object v4, p0, Lcom/android/camera/sina/GifModeController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    .line 1476
    :cond_0
    const-class v0, Lcom/android/camera/io/IMediaFileWriter;

    invoke-virtual {p0, v0}, Lcom/android/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/io/IMediaFileWriter;

    .line 1477
    .local v7, mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    if-eqz v7, :cond_1

    .line 1478
    iget-object v0, v7, Lcom/android/camera/io/IMediaFileWriter;->mediaFileSavedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/io/MediaSaveEventArgs;

    invoke-direct {v1, v4, p1}, Lcom/android/camera/io/MediaSaveEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1480
    :cond_1
    iget-object v10, p0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    check-cast v10, Lcom/android/camera/component/ThumbnailController;

    .line 1481
    .local v10, thumbnailController:Lcom/android/camera/component/ThumbnailController;
    if-eqz v10, :cond_2

    .line 1482
    invoke-virtual {p1}, Lcom/android/camera/io/SaveImageTask;->getSavedMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/camera/component/ThumbnailController;->setMediaInformationCache(Lcom/android/camera/MediaInfo;)V

    .line 1484
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/io/MediaSaveEventArgs;

    invoke-direct {v1, v4, p1}, Lcom/android/camera/io/MediaSaveEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1487
    if-nez p2, :cond_4

    .line 1510
    :goto_1
    return-void

    .line 1466
    .end local v7           #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    .end local v10           #thumbnailController:Lcom/android/camera/component/ThumbnailController;
    :cond_3
    const-string v0, "null"

    goto :goto_0

    .line 1494
    .restart local v7       #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    .restart local v10       #thumbnailController:Lcom/android/camera/component/ThumbnailController;
    :cond_4
    :try_start_0
    invoke-virtual {p2}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/FileFormat;->Gif:Lcom/android/camera/io/FileFormat;

    iget-object v1, v1, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1497
    .local v9, thumb:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_5

    .line 1499
    new-instance v8, Lcom/android/camera/MediaInfo;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/camera/io/FileFormat;->Gif:Lcom/android/camera/io/FileFormat;

    iget-object v1, v1, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v0, p2, v1}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Ljava/lang/String;)V

    .line 1500
    .local v8, mediaInfo:Lcom/android/camera/MediaInfo;
    const/16 v2, 0x2718

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v8, v5, v0

    const/4 v0, 0x1

    aput-object v9, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1505
    .end local v8           #mediaInfo:Lcom/android/camera/MediaInfo;
    .end local v9           #thumb:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 1507
    .local v6, ex:Ljava/lang/Throwable;
    const-string v0, "GifModeController"

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1503
    .end local v6           #ex:Ljava/lang/Throwable;
    .restart local v9       #thumb:Landroid/graphics/Bitmap;
    :cond_5
    :try_start_1
    const-string v0, "GifModeController"

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private onJpegCallbackTimeout(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 643
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegCallbackTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

    sget-object v1, Lcom/android/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/android/camera/sina/GifModeController$CaptureState;

    if-eq v0, v1, :cond_1

    .line 647
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegCallbackTimeout() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/sina/GifModeController;->m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    sget-object v0, Lcom/android/camera/sina/GifModeController$CaptureState;->Stopping:Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/sina/GifModeController;->setCaptureState(Lcom/android/camera/sina/GifModeController$CaptureState;)V

    .line 654
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isGifModeBySetOneShotPreviewCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/sina/GifModeController;->onPictureTaken(I[BLandroid/hardware/Camera;I)V

    goto :goto_0
.end method

.method private onPictureTaken(I[BLandroid/hardware/Camera;I)V
    .locals 30
    .parameter "index"
    .parameter "jpegRawData"
    .parameter "camera"
    .parameter "flags"

    .prologue
    .line 694
    const-string v3, "GifModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JPEG call-back ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_1b

    const/16 v21, 0x1

    .line 699
    .local v21, isTimeout:Z
    :goto_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/sina/GifModeController;->m_StartCaptureTime:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/sina/GifModeController;->m_CaptureInterval:I

    .line 702
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/sina/GifModeController;->m_CaptureInterval:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    .line 703
    const-string v3, "GifModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Average capture interval = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    add-int/lit8 v8, p1, 0x1

    int-to-long v8, v8

    div-long/2addr v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/sina/GifModeController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v14

    .line 709
    .local v14, cameraThread:Lcom/android/camera/CameraThread;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

    sget-object v4, Lcom/android/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/android/camera/sina/GifModeController$CaptureState;

    if-ne v3, v4, :cond_1d

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;

    invoke-virtual {v3}, Lcom/android/camera/sina/GifModeUI;->canCapture()Z

    move-result v20

    .line 715
    .local v20, isCapturing:Z
    :goto_1
    if-eqz v20, :cond_1f

    .line 716
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_1e

    .line 718
    :cond_1
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - No memory for JPEG RAW data, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const/16 v20, 0x0

    .line 731
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/sina/GifModeController;->m_IsFirstPicture:Z

    if-eqz v3, :cond_5

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/sina/GifModeController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/camera/rotate/UIRotation;

    .line 733
    .local v25, rotation:Lcom/android/camera/rotate/UIRotation;
    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    sput-boolean v3, Lcom/android/camera/sina/GifModeController;->m_FirstPicturePortrait:Z

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/sina/GifModeController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 736
    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 737
    .local v23, orgBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    move/from16 v18, v0

    .line 738
    .local v18, degree:I
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_21

    .line 739
    const/16 v18, 0x10e

    .line 743
    :cond_3
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/android/camera/imaging/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 744
    .local v24, reviewImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 745
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->recycle()V

    .line 746
    :cond_4
    const/16 v23, 0x0

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;

    const/16 v4, 0x2716

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v24, v7, v8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 752
    .end local v18           #degree:I
    .end local v23           #orgBitmap:Landroid/graphics/Bitmap;
    .end local v24           #reviewImage:Landroid/graphics/Bitmap;
    .end local v25           #rotation:Lcom/android/camera/rotate/UIRotation;
    :cond_5
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - Disable GC"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 755
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/sina/GifModeController;->m_IsFirstPicture:Z

    .line 759
    if-eqz p2, :cond_23

    .line 761
    const-string v3, "GifModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - m_GifModeImageCounter :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    if-eqz v20, :cond_6

    const/16 v3, 0x11

    move/from16 v0, p1

    if-eq v0, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;

    invoke-virtual {v3}, Lcom/android/camera/sina/GifModeUI;->canCapture()Z

    move-result v3

    if-nez v3, :cond_22

    :cond_6
    const/4 v7, 0x1

    .line 764
    .local v7, isLastMedia:Z
    :goto_4
    new-instance v2, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/sina/GifModeController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;-><init>(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/CaptureHandle;I[BZIZ)V

    .line 774
    .local v2, saveTask:Lcom/android/camera/sina/GifModeController$SaveGifImageTask;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v3, :cond_7

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-interface {v3}, Lcom/android/camera/IThumbnailImageManager;->disableAutoUpdate()Lcom/android/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    .line 781
    .end local v7           #isLastMedia:Z
    :cond_7
    :goto_5
    if-eqz v20, :cond_8

    .line 783
    const-class v3, Lcom/android/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/io/IMediaFileWriter;

    .line 784
    .local v19, fileWriter:Lcom/android/camera/io/IMediaFileWriter;
    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/io/IMediaFileWriter;->getMediaQueueCapacity()J

    move-result-wide v15

    .line 785
    .local v15, capacity:J
    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/io/IMediaFileWriter;->getMediaQueueSize()J

    move-result-wide v26

    .line 786
    .local v26, size:J
    move-wide/from16 v0, v26

    long-to-double v3, v0

    long-to-double v5, v15

    div-double v28, v3, v5

    .line 788
    .local v28, sizeRatio:D
    const-string v3, "GifModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - File buffer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide v5, 0x40c3880000000000L

    mul-double v5, v5, v28

    double-to-int v5, v5

    int-to-double v5, v5

    const-wide/high16 v8, 0x4059

    div-double/2addr v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-wide v3, 0x3fee666660000000L

    cmpl-double v3, v28, v3

    if-ltz v3, :cond_8

    .line 791
    const/16 v20, 0x0

    .line 792
    invoke-virtual {v2}, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->clearJpegRawData()V

    .line 793
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - buffer size is leak"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    .end local v15           #capacity:J
    .end local v19           #fileWriter:Lcom/android/camera/io/IMediaFileWriter;
    .end local v26           #size:J
    .end local v28           #sizeRatio:D
    :cond_8
    if-eqz v20, :cond_a

    if-nez p1, :cond_a

    .line 800
    const-class v3, Lcom/android/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/camera/io/IMediaFileWriter;

    .line 801
    .local v22, mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    if-eqz v22, :cond_24

    .line 803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    if-eqz v3, :cond_9

    .line 804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/camera/io/IMediaFileWriter;->resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V

    .line 805
    :cond_9
    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/io/IMediaFileWriter;->suspendUpdatingMediaStore()Lcom/android/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    .line 812
    .end local v22           #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    if-eqz v3, :cond_c

    .line 813
    if-nez v2, :cond_b

    .line 814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/camera/io/SaveImageTask;->isLastMedia:Z

    .line 816
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    invoke-virtual {v14, v3}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    .line 817
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    .line 821
    :cond_c
    if-eqz v2, :cond_26

    .line 822
    if-eqz v20, :cond_25

    .line 823
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    .line 835
    :cond_d
    :goto_7
    if-eqz v20, :cond_e

    if-nez p1, :cond_e

    .line 837
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - Start preview"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-virtual {v14}, Lcom/android/camera/CameraThread;->startPreviewSilently()Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    if-eq v3, v4, :cond_e

    .line 840
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - Cannot start preview"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const/16 v20, 0x0

    .line 846
    :cond_e
    monitor-enter p0

    .line 848
    if-eqz v20, :cond_10

    .line 853
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/sina/GifModeController;->m_IsEntered:Z

    if-eqz v3, :cond_f

    if-nez p1, :cond_f

    .line 855
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/sina/GifModeController;->setCaptureMode(Z)V

    .line 858
    :cond_f
    add-int/lit8 v3, p1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/sina/GifModeController;->takeNextPicture(I)Z

    move-result v3

    if-nez v3, :cond_10

    .line 860
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - Cannot take next picture, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const/16 v20, 0x0

    .line 866
    :cond_10
    if-nez v20, :cond_1a

    .line 869
    iget-object v3, v14, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 870
    sget-object v3, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    invoke-virtual {v14, v3}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 873
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/sina/GifModeController;->m_IsCaptureModeChanged:Z

    if-eqz v3, :cond_12

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/sina/GifModeController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v17

    .line 876
    .local v17, controller:Lcom/android/camera/CameraController;
    if-eqz v17, :cond_28

    .line 878
    const-string v3, "GifModeController"

    const-string v4, "onExited() - Set capture mode to normal"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v3, "GifModeController"

    const-string v4, "onExited() - Enable time-consuming post-processing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 881
    const-string v3, "capture-mode"

    const-string v4, "zsl"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :goto_8
    const-string v3, "time-cons-post-processing"

    const-string v4, "enable"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 889
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/sina/GifModeController;->m_IsCaptureModeChanged:Z

    .line 893
    .end local v17           #controller:Lcom/android/camera/CameraController;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

    sget-object v4, Lcom/android/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/android/camera/sina/GifModeController$CaptureState;

    if-ne v3, v4, :cond_13

    .line 895
    sget-object v3, Lcom/android/camera/sina/GifModeController$CaptureState;->Stopping:Lcom/android/camera/sina/GifModeController$CaptureState;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/sina/GifModeController;->setCaptureState(Lcom/android/camera/sina/GifModeController$CaptureState;)V

    .line 899
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    if-eqz v3, :cond_14

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/camera/io/SaveImageTask;->isLastMedia:Z

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    invoke-virtual {v14, v3}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    .line 902
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    .line 905
    :cond_14
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - Stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    if-eqz v3, :cond_15

    .line 910
    const-class v3, Lcom/android/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/camera/io/IMediaFileWriter;

    .line 911
    .restart local v22       #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    if-eqz v22, :cond_29

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/camera/io/IMediaFileWriter;->resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V

    .line 914
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    .line 921
    .end local v22           #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    :cond_15
    :goto_a
    if-eqz v21, :cond_16

    if-lez p1, :cond_17

    .line 924
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v14, v3}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    .line 928
    if-eqz v21, :cond_17

    .line 930
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - Close camera for recovering"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-virtual {v14}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 936
    :cond_17
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - Enable GC"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 939
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/sina/GifModeController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v17

    .line 941
    .restart local v17       #controller:Lcom/android/camera/CameraController;
    if-eqz v17, :cond_18

    .line 942
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - stop driver capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v3, "contiburst-state"

    const-string v4, "contiburst-done"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 949
    .end local v17           #controller:Lcom/android/camera/CameraController;
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/sina/GifModeController;->m_IsEncodingStartMsgSent:Z

    if-nez v3, :cond_19

    .line 950
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;

    const/16 v10, 0x2710

    add-int/lit8 v11, p1, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 951
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/sina/GifModeController;->m_IsEncodingStartMsgSent:Z

    .line 955
    :cond_19
    sget-object v3, Lcom/android/camera/sina/GifModeController$CaptureState;->Ready:Lcom/android/camera/sina/GifModeController$CaptureState;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/sina/GifModeController;->setCaptureState(Lcom/android/camera/sina/GifModeController$CaptureState;)V

    .line 956
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/sina/GifModeController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 958
    :cond_1a
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    return-void

    .line 696
    .end local v2           #saveTask:Lcom/android/camera/sina/GifModeController$SaveGifImageTask;
    .end local v14           #cameraThread:Lcom/android/camera/CameraThread;
    .end local v20           #isCapturing:Z
    .end local v21           #isTimeout:Z
    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 710
    .restart local v14       #cameraThread:Lcom/android/camera/CameraThread;
    .restart local v21       #isTimeout:Z
    :cond_1c
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 712
    :cond_1d
    const/16 v20, 0x0

    .restart local v20       #isCapturing:Z
    goto/16 :goto_1

    .line 721
    :cond_1e
    const/16 v3, 0x11

    move/from16 v0, p1

    if-lt v0, v3, :cond_2

    .line 723
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - Gif mode is 18-shots, stop taking picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 727
    :cond_1f
    if-eqz p2, :cond_20

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_2

    .line 728
    :cond_20
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - No memory for JPEG RAW data"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 740
    .restart local v18       #degree:I
    .restart local v23       #orgBitmap:Landroid/graphics/Bitmap;
    .restart local v25       #rotation:Lcom/android/camera/rotate/UIRotation;
    :cond_21
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    .line 741
    const/16 v18, 0x5a

    goto/16 :goto_3

    .line 763
    .end local v18           #degree:I
    .end local v23           #orgBitmap:Landroid/graphics/Bitmap;
    .end local v25           #rotation:Lcom/android/camera/rotate/UIRotation;
    :cond_22
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 777
    :cond_23
    const/4 v2, 0x0

    .restart local v2       #saveTask:Lcom/android/camera/sina/GifModeController$SaveGifImageTask;
    goto/16 :goto_5

    .line 808
    .restart local v22       #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    :cond_24
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - No IMediaFileWriter interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 825
    .end local v22           #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    :cond_25
    invoke-virtual {v14, v2}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    goto/16 :goto_7

    .line 828
    :cond_26
    if-nez v21, :cond_d

    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_d

    if-nez p1, :cond_d

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/sina/GifModeController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/sina/GifModeController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    sget-object v6, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v4, v5, v6}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_7

    .line 883
    .restart local v17       #controller:Lcom/android/camera/CameraController;
    :cond_27
    :try_start_1
    const-string v3, "capture-mode"

    const-string v4, "normal"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 958
    .end local v17           #controller:Lcom/android/camera/CameraController;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 888
    .restart local v17       #controller:Lcom/android/camera/CameraController;
    :cond_28
    :try_start_2
    const-string v3, "GifModeController"

    const-string v4, "onExited() - No camera controller to reset capture mode"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 917
    .end local v17           #controller:Lcom/android/camera/CameraController;
    .restart local v22       #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    :cond_29
    const-string v3, "GifModeController"

    const-string v4, "onPictureTaken() - No IMediaFileWriter interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_a
.end method

.method private onThumbnailImageCreated(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "mediaInfo"
    .parameter "thumb"

    .prologue
    .line 1158
    const-string v0, "GifModeController"

    const-string v1, "onThumbnailImageCreated()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/IThumbnailImageManager;->updateThumbnailImageDirectly(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    :goto_0
    if-eqz p2, :cond_0

    .line 1170
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1172
    :cond_0
    return-void

    .line 1165
    :cond_1
    :try_start_1
    const-string v0, "GifModeController"

    const-string v1, "onThumbnailImageCreated() - No IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1169
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_2

    .line 1170
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    throw v0
.end method

.method private setCaptureMode(Z)V
    .locals 3
    .parameter "apply"

    .prologue
    .line 1179
    iget-boolean v1, p0, Lcom/android/camera/sina/GifModeController;->m_IsCaptureModeChanged:Z

    if-nez v1, :cond_1

    .line 1181
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 1182
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_3

    .line 1184
    const-string v1, "GifModeController"

    const-string v2, "setCaptureMode() - Set capture mode to contiburst"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1187
    const-string v1, "capture-mode"

    const-string v2, "contiburst-one-shot"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string v1, "contiburst-state"

    const-string v2, "contiburst-capturing"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    :goto_0
    const-string v1, "GifModeController"

    const-string v2, "setCaptureMode() - Set time-consuming post-processing mode to \'bypass\'"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v1, "time-cons-post-processing"

    const-string v2, "bypass"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    if-eqz p1, :cond_0

    .line 1196
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1197
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/sina/GifModeController;->m_IsCaptureModeChanged:Z

    .line 1202
    .end local v0           #controller:Lcom/android/camera/CameraController;
    :cond_1
    :goto_1
    return-void

    .line 1191
    .restart local v0       #controller:Lcom/android/camera/CameraController;
    :cond_2
    const-string v1, "capture-mode"

    const-string v2, "contiburst"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1200
    :cond_3
    const-string v1, "GifModeController"

    const-string v2, "setCaptureMode() - No camera controller to set capture mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setCaptureState(Lcom/android/camera/sina/GifModeController$CaptureState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1209
    const-string v0, "GifModeController"

    const-string v1, "setCaptureState("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1210
    iput-object p1, p0, Lcom/android/camera/sina/GifModeController;->m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

    .line 1211
    return-void
.end method

.method private setupParamsBeforeTakingPicture(Lcom/android/camera/CameraController;)Z
    .locals 2
    .parameter "cameraController"

    .prologue
    .line 1450
    iget-boolean v0, p0, Lcom/android/camera/sina/GifModeController;->m_IsEntered:Z

    if-nez v0, :cond_0

    .line 1451
    const/4 v0, 0x0

    .line 1458
    :goto_0
    return v0

    .line 1454
    :cond_0
    const-string v0, "GifModeController"

    const-string v1, "setupParamsBeforeTakingPicture() - Set time-consuming post-processing mode to \'delay\'"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const-string v0, "time-cons-post-processing"

    const-string v1, "delay"

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1458
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private takeNextPicture(I)Z
    .locals 13
    .parameter "index"

    .prologue
    const-wide/16 v4, 0x14d

    const/4 v11, 0x0

    .line 1218
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1221
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    const-string v0, "GifModeController"

    const-string v1, "takeNextPicture() - Surface is unavailable"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    monitor-exit v12

    move v0, v11

    .line 1281
    :goto_0
    return v0

    .line 1227
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/camera/sina/GifModeController;->m_StartCaptureTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    .line 1228
    iget-wide v0, p0, Lcom/android/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1229
    monitor-exit v12

    move v0, v11

    goto :goto_0

    .line 1231
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/sina/GifModeController;->m_StartCaptureTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v7, v0, v2

    .line 1232
    .local v7, captureInterval:J
    cmp-long v0, v7, v4

    if-gez v0, :cond_2

    .line 1234
    :try_start_1
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fps is 4 fps up, go to sleep. minInterval is 333, interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/sina/GifModeController;->m_StartCaptureTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    sub-long v0, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1243
    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1245
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/android/camera/sina/GifModeController;->m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v10

    .line 1246
    .local v10, timerHandle:Lcom/android/camera/Handle;
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    :goto_2
    const-string v0, "GifModeController"

    const-string v1, "Take picture ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/sina/GifModeController;->m_StartCaptureTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1256
    :try_start_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isGifModeBySetOneShotPreviewCallback()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1257
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1281
    :goto_3
    const/4 v0, 0x1

    :try_start_4
    monitor-exit v12

    goto/16 :goto_0

    .line 1282
    .end local v7           #captureInterval:J
    .end local v10           #timerHandle:Lcom/android/camera/Handle;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1249
    .restart local v7       #captureInterval:J
    :cond_3
    const/4 v10, 0x0

    .restart local v10       #timerHandle:Lcom/android/camera/Handle;
    goto :goto_2

    .line 1259
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1260
    const/4 v0, 0x2

    if-ge p1, v0, :cond_6

    .line 1261
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1262
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proto takePicture()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 1270
    :catch_0
    move-exception v9

    .line 1272
    .local v9, ex:Ljava/lang/Throwable;
    :try_start_6
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeNextPicture() - Cannot take picture ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1273
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_5

    .line 1275
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v0, v10}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 1276
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1278
    :cond_5
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v11

    goto/16 :goto_0

    .line 1265
    .end local v9           #ex:Ljava/lang/Throwable;
    :cond_6
    :try_start_7
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proto NextPicture()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1267
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_3

    .line 1236
    .end local v10           #timerHandle:Lcom/android/camera/Handle;
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method


# virtual methods
.method public addSavedPictureToList(Ljava/lang/String;)V
    .locals 1
    .parameter "savedPath"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_SavedPicturePathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method

.method public cancelTakingPicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 5
    .parameter "handle"
    .parameter "cameraController"
    .parameter "camera"

    .prologue
    const/4 v1, 0x0

    .line 1364
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1366
    const-string v2, "GifModeController"

    const-string v3, "Not NvidiaPlatform , without cancel"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :cond_0
    :goto_0
    return v1

    .line 1370
    :cond_1
    if-eqz p1, :cond_0

    .line 1373
    iget-object v2, p0, Lcom/android/camera/sina/GifModeController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq p1, v2, :cond_2

    .line 1375
    const-string v2, "GifModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle is not equal , handle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1380
    :cond_2
    iget-object v2, p0, Lcom/android/camera/sina/GifModeController;->m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

    sget-object v3, Lcom/android/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/android/camera/sina/GifModeController$CaptureState;

    if-eq v2, v3, :cond_3

    .line 1382
    const-string v2, "GifModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelTakingPicture() - Capture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/sina/GifModeController;->m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1386
    :cond_3
    iget-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1388
    iget-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 1390
    const-string v1, "GifModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopTimer ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    iget-object v2, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Handle;

    invoke-virtual {v2, v1}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 1388
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1394
    :cond_4
    iget-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1399
    .end local v0           #i:I
    :cond_5
    sget-object v1, Lcom/android/camera/sina/GifModeController$CaptureState;->Stopping:Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v1}, Lcom/android/camera/sina/GifModeController;->setCaptureState(Lcom/android/camera/sina/GifModeController$CaptureState;)V

    .line 1400
    iget v1, p0, Lcom/android/camera/sina/GifModeController;->m_JpegIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, p3, v3}, Lcom/android/camera/sina/GifModeController;->onPictureTaken(I[BLandroid/hardware/Camera;I)V

    .line 1402
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public clearSavedPictureList()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_SavedPicturePathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 423
    return-void
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;

    .line 441
    iput-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    .line 443
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 444
    return-void
.end method

.method public getSavedPictureList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_SavedPicturePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 452
    iget v0, p1, Landroid/os/Message;->what:I

    .line 455
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 458
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 466
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 504
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 507
    :goto_0
    :sswitch_0
    return-void

    .line 470
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeController;->onEntered()V

    goto :goto_0

    .line 475
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeController;->onExited()V

    goto :goto_0

    .line 484
    :sswitch_3
    const/4 v2, 0x0

    .line 485
    .local v2, task:Lcom/android/camera/io/SaveImageTask;
    const/4 v1, 0x0

    .line 486
    .local v1, path:Lcom/android/camera/io/Path;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 487
    .local v0, params:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 488
    aget-object v2, v0, v4

    .end local v2           #task:Lcom/android/camera/io/SaveImageTask;
    check-cast v2, Lcom/android/camera/io/SaveImageTask;

    .line 489
    .restart local v2       #task:Lcom/android/camera/io/SaveImageTask;
    aget-object v1, v0, v5

    .end local v1           #path:Lcom/android/camera/io/Path;
    check-cast v1, Lcom/android/camera/io/Path;

    .line 492
    .restart local v1       #path:Lcom/android/camera/io/Path;
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/camera/sina/GifModeController;->onGifSaved(Lcom/android/camera/io/SaveImageTask;Lcom/android/camera/io/Path;)V

    goto :goto_0

    .line 498
    .end local v0           #params:[Ljava/lang/Object;
    .end local v1           #path:Lcom/android/camera/io/Path;
    .end local v2           #task:Lcom/android/camera/io/SaveImageTask;
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 499
    .restart local v0       #params:[Ljava/lang/Object;
    aget-object v3, v0, v4

    check-cast v3, Lcom/android/camera/MediaInfo;

    aget-object v4, v0, v5

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/sina/GifModeController;->onThumbnailImageCreated(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 466
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_1
        0x2711 -> :sswitch_2
        0x2717 -> :sswitch_3
        0x2718 -> :sswitch_4
        0x271b -> :sswitch_0
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 516
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 519
    const-class v1, Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {p0, v1}, Lcom/android/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/IOperationTimeoutController;

    iput-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    .line 524
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 526
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/sina/GifModeController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/sina/GifModeController$2;-><init>(Lcom/android/camera/sina/GifModeController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 559
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "jpegRawData"
    .parameter "camera"

    .prologue
    .line 667
    iget v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegIndex:I

    iget-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 669
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_0

    .line 670
    iget-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/camera/sina/GifModeController;->m_JpegIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Handle;

    invoke-virtual {v1, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 676
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/sina/GifModeController$3;->$SwitchMap$com$android$camera$sina$GifModeController$CaptureState:[I

    iget-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-virtual {v1}, Lcom/android/camera/sina/GifModeController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 682
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/sina/GifModeController;->m_CaptureState:Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :goto_1
    return-void

    .line 673
    :cond_1
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - JPEG index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/sina/GifModeController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but there is no timeout timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :pswitch_0
    iget v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/camera/sina/GifModeController;->onPictureTaken(I[BLandroid/hardware/Camera;I)V

    .line 688
    iget v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegIndex:I

    goto :goto_1

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0
    .parameter "yuvRawData"
    .parameter "camera"

    .prologue
    .line 983
    return-void
.end method

.method public takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 11
    .parameter "handle"
    .parameter "cameraController"
    .parameter "camera"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1292
    iget-boolean v0, p0, Lcom/android/camera/sina/GifModeController;->m_IsEntered:Z

    if-nez v0, :cond_0

    move v0, v9

    .line 1355
    :goto_0
    return v0

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-nez v0, :cond_1

    .line 1298
    const-class v0, Lcom/android/camera/IThumbnailImageManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IThumbnailImageManager;

    iput-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    .line 1299
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-nez v0, :cond_1

    .line 1300
    const-string v0, "GifModeController"

    const-string v1, "takePicture() - Cannot find IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :cond_1
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_2

    .line 1305
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-interface {v0}, Lcom/android/camera/IThumbnailImageManager;->disableAutoUpdate()Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    .line 1308
    :cond_2
    iput-boolean v10, p0, Lcom/android/camera/sina/GifModeController;->m_IsFirstPicture:Z

    .line 1309
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    .line 1310
    iput v9, p0, Lcom/android/camera/sina/GifModeController;->m_JpegIndex:I

    .line 1311
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1312
    iput-object p1, p0, Lcom/android/camera/sina/GifModeController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 1313
    iput-boolean v9, p0, Lcom/android/camera/sina/GifModeController;->m_IsEncodingStartMsgSent:Z

    .line 1315
    sget-object v0, Lcom/android/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/sina/GifModeController;->setCaptureState(Lcom/android/camera/sina/GifModeController$CaptureState;)V

    .line 1318
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_3

    .line 1320
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "JPEG [0]"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/android/camera/sina/GifModeController;->m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v8

    .line 1321
    .local v8, timerHandle:Lcom/android/camera/Handle;
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    .end local v8           #timerHandle:Lcom/android/camera/Handle;
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1326
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 1328
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1334
    :goto_1
    const-string v0, "GifModeController"

    const-string v1, "Take picture [0]"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/sina/GifModeController;->m_StartCaptureTime:J

    .line 1338
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isGifModeBySetOneShotPreviewCallback()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1339
    invoke-virtual {p3, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v10

    .line 1355
    goto/16 :goto_0

    .line 1331
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_1

    .line 1341
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p3, v0, v1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1344
    :catch_0
    move-exception v7

    .line 1346
    .local v7, ex:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_6

    .line 1348
    iget-object v1, p0, Lcom/android/camera/sina/GifModeController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Handle;

    invoke-virtual {v1, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 1349
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1351
    :cond_6
    throw v7
.end method
