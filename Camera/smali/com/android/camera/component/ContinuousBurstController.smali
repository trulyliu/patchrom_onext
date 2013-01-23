.class public final Lcom/android/camera/component/ContinuousBurstController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "ContinuousBurstController.java"

# interfaces
.implements Lcom/android/camera/IPhotoCaptureHandler;
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ContinuousBurstController$4;,
        Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;,
        Lcom/android/camera/component/ContinuousBurstController$DropState;,
        Lcom/android/camera/component/ContinuousBurstController$CaptureState;
    }
.end annotation


# static fields
.field static final BURST_MODE_1_SHOT:I = 0x1

.field static final BURST_MODE_5_SHOTS:I = 0x2

.field static final BURST_MODE_CONTINUOUS:I = 0x3

.field static final BURST_MODE_UNDEFINED:I = 0x0

.field static final DEFAULT_MAX_PICTURE_COUNT:I = 0x14

#the value of this static final field might be set in the static constructor
.field static final DEFAULT_UNLIMITED_PICTURE_COUNT:I = 0x0

.field private static final HTCCB_ARG1_DRIVER_BURST_DONE:I = 0x3

.field private static final HTC_CALLBACK_TIMEOUT:I = 0x7d0

.field private static final JPEG_CALLBACK_CANCEL:I = 0x4

.field private static final JPEG_CALLBACK_FROM_DRIVER:I = 0x1

.field private static final JPEG_CALLBACK_IS_TIMEOUT:I = 0x2

.field private static final JPEG_CALLBACK_NONE:I = 0x0

.field private static final MAX_CONTINUOUS_DROPPED_PHOTO:I = 0x8

.field static final MSG_ENTER:I = 0x2710

.field static final MSG_EXIT:I = 0x2711

.field private static final MSG_HTC_CALLBACK_TIMEOUT_EXIT:I = 0x271c

.field private static final MSG_IMAGE_SAVED:I = 0x2719

.field private static final MSG_IMAGE_SAVE_FAILED:I = 0x271a

.field private static final MSG_PHOTO_SAVE_COMPLETED:I = 0x2717

.field private static final MSG_PLAY_SHUTTER_SOUND:I = 0x2712

.field static final MSG_SET_BURST_MODE:I = 0x2714

.field static final MSG_SET_PICTURE_COUNT:I = 0x2715

.field static final MSG_STOP_PLAYING_SHUTTER_SOUND:I = 0x2716

.field private static final MSG_STOP_SHUTTER_SOUND:I = 0x2713

.field private static final MSG_THUMBNAIL_IMAGE_CREATED:I = 0x2718

.field static final NAME:Ljava/lang/String; = "Continuous Burst Controller"

.field private static final PREF_MAX_PICTURE_COUNT:Ljava/lang/String; = "pref_max_conti_burst_picture_count"

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_SOUND_LENGTH:I = 0x0

.field private static final SHUTTER_SOUND_TIMER_INTERVAL:I = 0x190

.field private static final SIZE_RATIO_DROP_CONSECUTIVE:F = 0.95f

.field private static final SIZE_RATIO_DROP_ONE_OF_CONSECUTIVE:F = 0.8f

.field private static final m_DcfInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field private mAudioManager:Lcom/android/camera/IAudioManager;

.field private m_BucketId:Ljava/lang/String;

.field private m_BurstMode:I

.field private m_CaptureHandle:Lcom/android/camera/CaptureHandle;

.field private m_CaptureInterval:I

.field private m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

.field private m_ContDroppingCounter:I

.field private m_ContinuousBurstImageCounter:I

.field private m_DirectoryCounter:Lcom/android/camera/io/FileCounter;

.field private m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

.field private m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

.field private m_FirstJpegRawData:[B

.field private m_GotFirstPicture:Z

.field private m_IfGotHTCCallback:Z

.field private m_ImageCounter:Lcom/android/camera/io/FileCounter;

.field private m_IsCaptureModeChanged:Z

.field private m_IsEntered:Z

.field private m_IsFirstPicture:Z

.field private m_IsSavingPhotos:Z

.field private m_IsSavingStartMsgSent:Z

.field private m_IsSecondPictureTaken:Z

.field private m_IsShutterSoundPlayed:Z

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

.field private m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

.field private m_MaxPictureCount:I

.field private m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

.field private m_OriginalFlashMode:Lcom/android/camera/FlashMode;

.field private m_PhotoSize:Lcom/android/camera/imaging/Size;

.field private m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

.field private m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

.field private m_SavedBurstImageCount:I

.field private final m_SavedImageTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private m_ShutterIndex:I

.field private m_ShutterSoundHandle:Lcom/android/camera/Handle;

.field private m_ShutterSoundStartTime:Ljava/lang/Long;

.field private m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

.field private m_StartTime:J

.field private m_TakePictureIndex:I

.field private m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

.field private m_ThumbnailImageSize:Lcom/android/camera/imaging/Size;

.field private m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

.field private m_TotalCaptureInterval:J

.field private m_UI:Lcom/android/camera/component/ContinuousBurstUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    sput v0, Lcom/android/camera/component/ContinuousBurstController;->SHUTTER_SOUND_LENGTH:I

    .line 97
    sget-object v0, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    sput-object v0, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    .line 125
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const/16 v0, 0x1e

    sput v0, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    .line 141
    :goto_1
    return-void

    .line 82
    :cond_0
    const/16 v0, 0x12c

    goto :goto_0

    .line 129
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d7

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isK2Series()Z

    move-result v0

    if-nez v0, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2aa

    if-ne v0, v1, :cond_3

    .line 135
    :cond_2
    const/16 v0, 0x3c

    sput v0, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_1

    .line 139
    :cond_3
    const/16 v0, 0x63

    sput v0, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 405
    const-string v0, "Continuous Burst Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    .line 149
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    .line 169
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    .line 197
    new-instance v0, Lcom/android/camera/component/ContinuousBurstController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ContinuousBurstController$1;-><init>(Lcom/android/camera/component/ContinuousBurstController;)V

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ContinuousBurstController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/camera/component/ContinuousBurstController;->onJpegCallbackTimeout(I)V

    return-void
.end method

.method static synthetic access$100()Lcom/android/camera/io/DCFInfo;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ContinuousBurstController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/component/ContinuousBurstController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/CaptureHandle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/CaptureHandle;)Lcom/android/camera/CaptureHandle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/component/ContinuousBurstController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/ContinuousBurstController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/ContinuousBurstController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/ContinuousBurstController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/FileCounter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DirectoryCounter:Lcom/android/camera/io/FileCounter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/FileCounter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ImageCounter:Lcom/android/camera/io/FileCounter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/imaging/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ContinuousBurstController;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/component/ContinuousBurstUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/CameraController;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/camera/component/ContinuousBurstController;->setupParamsBeforeTakingPicture(Lcom/android/camera/CameraController;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/ContinuousBurstController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/ContinuousBurstController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    return v0
.end method

.method private findNextDirectoryCounters()Z
    .locals 7

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/io/StorageSlot;

    .line 429
    .local v6, storageSlot:Lcom/android/camera/io/StorageSlot;
    new-instance v4, Lcom/android/camera/Reference;

    invoke-direct {v4}, Lcom/android/camera/Reference;-><init>()V

    .line 430
    .local v4, outerDirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    new-instance v5, Lcom/android/camera/Reference;

    invoke-direct {v5}, Lcom/android/camera/Reference;-><init>()V

    .line 431
    .local v5, imageDirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-static {v6}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    sget-object v3, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 447
    :goto_0
    return v0

    .line 443
    :cond_0
    new-instance v1, Lcom/android/camera/io/FileCounter;

    iget-object v0, v4, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DirectoryCounter:Lcom/android/camera/io/FileCounter;

    .line 444
    new-instance v1, Lcom/android/camera/io/FileCounter;

    iget-object v0, v5, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ImageCounter:Lcom/android/camera/io/FileCounter;

    .line 447
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 2
    .parameter "cameraActivity"

    .prologue
    const/4 v0, 0x0

    .line 669
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v0

    .line 671
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToUI()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 681
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v1, :cond_0

    .line 685
    :goto_0
    return v2

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 684
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v1

    const-string v3, "Continuous Burst UI"

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/ContinuousBurstUI;

    :goto_1
    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    .line 685
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_0

    .line 684
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 685
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private onBurstModeChanged(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 694
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v1, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 700
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    .line 703
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v1, v2, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v1, :cond_3

    .line 707
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v1, :pswitch_data_0

    .line 720
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v1, v5, :cond_4

    .line 722
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 723
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_6

    .line 725
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Set time-consuming post-processing to \'enable\'"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v1, "time-cons-post-processing"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 734
    .end local v0           #controller:Lcom/android/camera/CameraController;
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    if-eqz v1, :cond_5

    .line 736
    iput-boolean v6, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    .line 737
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Handle JPEG data again"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-direct {p0, v6, v1, v2, v6}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;I)V

    .line 739
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    .line 743
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 745
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    if-ne v1, v5, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Start preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->startPreviewSilently()Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    if-ne v1, v2, :cond_7

    .line 750
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Start taking burst shots for nVidia platform"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-direct {p0, v5}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Cannot take next picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 710
    :pswitch_1
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    if-ne v1, v5, :cond_3

    .line 711
    invoke-direct {p0, v6}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_1

    .line 714
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_1

    .line 730
    .restart local v0       #controller:Lcom/android/camera/CameraController;
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - No camera controller to update time-consuming post-processing mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 755
    .end local v0           #controller:Lcom/android/camera/CameraController;
    :cond_7
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Cannot start preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onEntered()V
    .locals 2

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    .line 771
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 774
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->linkToUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExited()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 784
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v1, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    .line 789
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    .line 790
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    .line 791
    iput v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    .line 792
    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 795
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    if-eqz v1, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 798
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_3

    .line 800
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onExited() - Set capture mode to normal"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onExited() - Enable time-consuming post-processing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 803
    const-string v1, "capture-mode"

    const-string v2, "zsl"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :goto_1
    const-string v1, "time-cons-post-processing"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 811
    :goto_2
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    goto :goto_0

    .line 805
    :cond_2
    const-string v1, "capture-mode"

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 810
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onExited() - No camera controller to reset capture mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onImageSaveFailed(ILcom/android/camera/io/Path;)V
    .locals 3
    .parameter "index"
    .parameter "filePath"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

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

    .line 866
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-eq v0, v1, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageSaveFailed() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaveFailed() - Stop capture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    goto :goto_0
.end method

.method private onImageSaved(Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;Lcom/android/camera/io/Path;)V
    .locals 10
    .parameter "saveTask"
    .parameter "filePath"

    .prologue
    .line 820
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onImageSaved(\'"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "\')"

    invoke-static {v1, v2, v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 823
    if-nez p2, :cond_1

    .line 856
    :goto_1
    return-void

    .line 820
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 830
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->getJpegRawData(Z)[B

    move-result-object v7

    .line 831
    .local v7, jpegData:[B
    iget v0, p1, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageWidth:I

    iget v1, p1, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageHeight:I

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageSize:Lcom/android/camera/imaging/Size;

    iget v2, v2, Lcom/android/camera/imaging/Size;->width:I

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageSize:Lcom/android/camera/imaging/Size;

    iget v3, v3, Lcom/android/camera/imaging/Size;->height:I

    invoke-static {v7, v0, v1, v2, v3}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage([BIIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 834
    .local v9, thumb:Landroid/graphics/Bitmap;
    if-nez v9, :cond_2

    .line 835
    invoke-virtual {p2}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v1, v1, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 838
    :cond_2
    if-eqz v9, :cond_3

    .line 840
    new-instance v8, Lcom/android/camera/MediaInfo;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v1, v1, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v0, p2, v1}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Ljava/lang/String;)V

    .line 841
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

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .end local v8           #mediaInfo:Lcom/android/camera/MediaInfo;
    :goto_2
    invoke-virtual {p1}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->clearJpegRawData()V

    goto :goto_1

    .line 844
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 846
    .end local v7           #jpegData:[B
    .end local v9           #thumb:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 848
    .local v6, ex:Ljava/lang/Throwable;
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 854
    invoke-virtual {p1}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->clearJpegRawData()V

    goto :goto_1

    .end local v6           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->clearJpegRawData()V

    throw v0
.end method

.method private onJpegCallbackTimeout(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

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

    .line 885
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-eq v0, v1, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegCallbackTimeout() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :goto_0
    return-void

    .line 892
    :cond_0
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 893
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;I)V

    goto :goto_0
.end method

.method private onPhotoSaveCompleted(Lcom/android/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 11
    .parameter "captureHandle"
    .parameter "photoCount"
    .parameter "bucketId"

    .prologue
    const/16 v10, 0x2711

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 902
    if-nez p2, :cond_0

    .line 903
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted("

    const-string v3, ", "

    const-string v5, ")"

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 906
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted() - Last file path : "

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 909
    iput-boolean v9, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    .line 910
    iput-object p3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;

    .line 913
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/IThumbnailImageManager;->enableAutoUpdate(Lcom/android/camera/Handle;)V

    .line 916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_4

    .line 931
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 933
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    if-eqz v0, :cond_2

    .line 934
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v9

    aput-object p3, v5, v8

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    aput-object v0, v5, v6

    move-object v0, p0

    move v2, v10

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 943
    :goto_0
    return-void

    .line 936
    :cond_2
    const/16 v2, 0x271c

    iget-object v5, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    move-object v1, p0

    move v3, v9

    move v4, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0

    .line 939
    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v9

    aput-object p3, v5, v8

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    aput-object v0, v5, v6

    move-object v0, p0

    move v2, v10

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 942
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted() - No UI to notify"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPictureTaken(I[BLandroid/hardware/Camera;I)V
    .locals 29
    .parameter "index"
    .parameter "jpegRawData"
    .parameter "camera"
    .parameter "flags"

    .prologue
    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "JPEG call-back ["

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "]"

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 992
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_18

    const/16 v22, 0x1

    .line 995
    .local v22, isTimeout:Z
    :goto_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    .line 997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_StartTime:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureInterval:I

    .line 998
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureInterval:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Average capture interval = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

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

    .line 1003
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v15

    .line 1005
    .local v15, cameraThread:Lcom/android/camera/CameraThread;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v4, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v3, v4, :cond_1b

    .line 1007
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1a

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v3}, Lcom/android/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v20

    .line 1014
    .local v20, isCapturing:Z
    :goto_1
    if-eqz v20, :cond_1d

    .line 1016
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_1c

    .line 1018
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No memory for JPEG RAW data, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const/16 v20, 0x0

    .line 1041
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v3, :pswitch_data_0

    .line 1098
    :cond_3
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    .line 1101
    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_5

    .line 1103
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->findNextDirectoryCounters()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Cannot find available directory counters, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const/16 v20, 0x0

    .line 1112
    :cond_5
    if-eqz p2, :cond_29

    .line 1114
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    if-nez p1, :cond_24

    if-nez v20, :cond_24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_24

    .line 1116
    :cond_6
    new-instance v2, Lcom/android/camera/io/SaveImageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p2

    invoke-direct {v2, v15, v3, v0}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;[B)V

    .line 1117
    .local v2, saveTask:Lcom/android/camera/io/SaveImageTask;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    if-eqz v3, :cond_7

    .line 1119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    iget v3, v3, Lcom/android/camera/imaging/Size;->width:I

    iput v3, v2, Lcom/android/camera/io/SaveImageTask;->imageWidth:I

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    iget v3, v3, Lcom/android/camera/imaging/Size;->height:I

    iput v3, v2, Lcom/android/camera/io/SaveImageTask;->imageHeight:I

    .line 1150
    :cond_7
    :goto_4
    const/16 v21, 0x0

    .line 1151
    .local v21, isCurrentTaskDropped:Z
    if-eqz v20, :cond_9

    .line 1153
    const-class v3, Lcom/android/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/io/IMediaFileWriter;

    .line 1154
    .local v19, fileWriter:Lcom/android/camera/io/IMediaFileWriter;
    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/io/IMediaFileWriter;->getMediaQueueCapacity()J

    move-result-wide v16

    .line 1155
    .local v16, capacity:J
    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/io/IMediaFileWriter;->getMediaQueueSize()J

    move-result-wide v24

    .line 1156
    .local v24, size:J
    move-wide/from16 v0, v24

    long-to-double v3, v0

    move-wide/from16 v0, v16

    long-to-double v5, v0

    div-double v26, v3, v5

    .line 1158
    .local v26, sizeRatio:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - File buffer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide v5, 0x40c3880000000000L

    mul-double v5, v5, v26

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

    .line 1160
    const-wide v3, 0x3fee666660000000L

    cmpl-double v3, v26, v3

    if-ltz v3, :cond_2a

    .line 1161
    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$DropState;->ContinuousDropping:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    .line 1162
    const/16 v21, 0x1

    .line 1163
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    .line 1164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Drop previous save task, DropState: Continuous("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_8

    .line 1167
    const/16 v20, 0x0

    .line 1168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Reach maximum continuous dropping limitation(8), stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    :cond_8
    :goto_5
    if-eqz v21, :cond_9

    .line 1191
    invoke-virtual {v2}, Lcom/android/camera/io/SaveImageTask;->clearJpegRawData()V

    .line 1192
    const/4 v2, 0x0

    .line 1193
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    .line 1198
    .end local v16           #capacity:J
    .end local v19           #fileWriter:Lcom/android/camera/io/IMediaFileWriter;
    .end local v24           #size:J
    .end local v26           #sizeRatio:D
    :cond_9
    if-eqz v20, :cond_b

    if-nez p1, :cond_b

    .line 1200
    const-class v3, Lcom/android/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/camera/io/IMediaFileWriter;

    .line 1201
    .local v23, mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    if-eqz v23, :cond_2d

    .line 1203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    if-eqz v3, :cond_a

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/camera/io/IMediaFileWriter;->resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V

    .line 1205
    :cond_a
    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/io/IMediaFileWriter;->suspendUpdatingMediaStore()Lcom/android/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    .line 1212
    .end local v23           #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    if-eqz v3, :cond_d

    .line 1214
    if-nez v2, :cond_c

    if-nez v21, :cond_c

    .line 1215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/camera/io/SaveImageTask;->isLastMedia:Z

    .line 1217
    :cond_c
    if-nez v21, :cond_2e

    .line 1218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    invoke-virtual {v15, v3}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    .line 1219
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    .line 1220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Continuous Burst ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :cond_d
    :goto_7
    if-eqz v2, :cond_30

    .line 1233
    if-eqz v20, :cond_2f

    .line 1234
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    .line 1242
    :cond_e
    :goto_8
    if-eqz v20, :cond_f

    if-nez p1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v3, :cond_f

    .line 1244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Start preview"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v15}, Lcom/android/camera/CameraThread;->startPreviewSilently()Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    if-eq v3, v4, :cond_f

    .line 1247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Cannot start preview"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const/16 v20, 0x0

    .line 1253
    :cond_f
    monitor-enter p0

    .line 1256
    if-eqz v20, :cond_12

    :try_start_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v3, :cond_12

    :cond_10
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez p1, :cond_12

    .line 1260
    :cond_11
    add-int/lit8 v3, p1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Cannot take next picture, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const/16 v20, 0x0

    .line 1267
    :cond_12
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1269
    if-nez v20, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_14

    .line 1271
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v3, :cond_14

    .line 1273
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JPEG ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x2710

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v13, p0

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v28

    .line 1274
    .local v28, timerHandle:Lcom/android/camera/Handle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    .end local v28           #timerHandle:Lcom/android/camera/Handle;
    :cond_14
    if-nez v20, :cond_41

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1284
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v3, :cond_32

    if-nez p1, :cond_32

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_32

    .line 1288
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    .line 1295
    :cond_15
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v4, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v3, v4, :cond_33

    .line 1297
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_35

    .line 1299
    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Waiting for pending pictures"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",m_TakePictureIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1304
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v18

    .line 1305
    .local v18, controller:Lcom/android/camera/CameraController;
    if-eqz v18, :cond_16

    .line 1306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - stop driver capturing. one shot"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const-string v3, "contiburst-state"

    const-string v4, "contiburst-done"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1310
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    if-nez v3, :cond_17

    .line 1311
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v10, 0x2710

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    add-int/lit8 v11, v3, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1312
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    .line 1315
    .end local v18           #controller:Lcom/android/camera/CameraController;
    :cond_17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1423
    .end local v2           #saveTask:Lcom/android/camera/io/SaveImageTask;
    .end local v21           #isCurrentTaskDropped:Z
    :goto_a
    return-void

    .line 992
    .end local v15           #cameraThread:Lcom/android/camera/CameraThread;
    .end local v20           #isCapturing:Z
    .end local v22           #isTimeout:Z
    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1008
    .restart local v15       #cameraThread:Lcom/android/camera/CameraThread;
    .restart local v22       #isTimeout:Z
    :cond_19
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1010
    :cond_1a
    const/16 v20, 0x1

    .restart local v20       #isCapturing:Z
    goto/16 :goto_1

    .line 1013
    .end local v20           #isCapturing:Z
    :cond_1b
    const/16 v20, 0x0

    .restart local v20       #isCapturing:Z
    goto/16 :goto_1

    .line 1031
    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_2

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - This is the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " picture, stop capturing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 1037
    :cond_1d
    if-eqz p2, :cond_1e

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_2

    .line 1038
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No memory for JPEG RAW data"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1044
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is 1-shot, stop taking picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-nez v3, :cond_1f

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is 1-shot, but this is not the first picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :cond_1f
    const/16 v20, 0x0

    .line 1048
    goto/16 :goto_3

    .line 1051
    :pswitch_1
    if-eqz v20, :cond_3

    .line 1053
    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_20

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is 5-shots, stop taking picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 1058
    :cond_20
    const/4 v3, 0x4

    move/from16 v0, p1

    if-le v0, v3, :cond_21

    .line 1060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is 5-shots, but we have taken more than 5 pictures."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 1065
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Start preview again"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v18

    .line 1067
    .restart local v18       #controller:Lcom/android/camera/CameraController;
    if-eqz v18, :cond_22

    .line 1068
    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraController;->startPreview()V

    goto/16 :goto_3

    .line 1070
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No camera controller"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1076
    .end local v18           #controller:Lcom/android/camera/CameraController;
    :pswitch_2
    if-eqz v20, :cond_3

    .line 1078
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-eqz v3, :cond_23

    .line 1080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is undefined, handle JPEG raw data later."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    .line 1082
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    goto/16 :goto_a

    .line 1085
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is undefined, but this is not the first picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1090
    :pswitch_3
    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-eqz v3, :cond_3

    .line 1093
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Disable GC"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    goto/16 :goto_3

    .line 1125
    :cond_24
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-ge v3, v4, :cond_28

    .line 1127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - m_ContinuousBurstImageCounter :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    if-nez v20, :cond_27

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_25

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_27

    :cond_25
    const/4 v7, 0x1

    .line 1130
    .local v7, isLastMedia:Z
    :goto_b
    new-instance v2, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;-><init>(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/CaptureHandle;I[BZ)V

    .line 1133
    .restart local v2       #saveTask:Lcom/android/camera/io/SaveImageTask;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    if-nez v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v3, :cond_26

    .line 1134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-interface {v3}, Lcom/android/camera/IThumbnailImageManager;->disableAutoUpdate()Lcom/android/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    .line 1143
    .end local v7           #isLastMedia:Z
    :cond_26
    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    goto/16 :goto_4

    .line 1129
    .end local v2           #saveTask:Lcom/android/camera/io/SaveImageTask;
    :cond_27
    const/4 v7, 0x0

    goto :goto_b

    .line 1138
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Drop this index :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Drop count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const/16 v20, 0x0

    .line 1141
    const/4 v2, 0x0

    .restart local v2       #saveTask:Lcom/android/camera/io/SaveImageTask;
    goto :goto_c

    .line 1147
    .end local v2           #saveTask:Lcom/android/camera/io/SaveImageTask;
    :cond_29
    const/4 v2, 0x0

    .restart local v2       #saveTask:Lcom/android/camera/io/SaveImageTask;
    goto/16 :goto_4

    .line 1173
    .restart local v16       #capacity:J
    .restart local v19       #fileWriter:Lcom/android/camera/io/IMediaFileWriter;
    .restart local v21       #isCurrentTaskDropped:Z
    .restart local v24       #size:J
    .restart local v26       #sizeRatio:D
    :cond_2a
    const-wide v3, 0x3fe99999a0000000L

    cmpl-double v3, v26, v3

    if-ltz v3, :cond_2c

    .line 1174
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    .line 1175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    sget-object v4, Lcom/android/camera/component/ContinuousBurstController$DropState;->Dropped:Lcom/android/camera/component/ContinuousBurstController$DropState;

    if-eq v3, v4, :cond_2b

    .line 1176
    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$DropState;->Dropped:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    .line 1178
    const/16 v21, 0x1

    .line 1179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Drop current save task"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1182
    :cond_2b
    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$DropState;->Dropping:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    .line 1183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Save current save task due to previous was dropped"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1187
    :cond_2c
    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    goto/16 :goto_5

    .line 1208
    .end local v16           #capacity:J
    .end local v19           #fileWriter:Lcom/android/camera/io/IMediaFileWriter;
    .end local v24           #size:J
    .end local v26           #sizeRatio:D
    .restart local v23       #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No IMediaFileWriter interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1222
    .end local v23           #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    :cond_2e
    if-nez v20, :cond_d

    if-eqz v21, :cond_d

    .line 1223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/camera/io/SaveImageTask;->isLastMedia:Z

    .line 1224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    invoke-virtual {v15, v3}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    .line 1225
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    .line 1226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Continuous Burst ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1236
    :cond_2f
    invoke-virtual {v15, v2}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    goto/16 :goto_8

    .line 1238
    :cond_30
    if-nez v22, :cond_e

    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_31

    if-nez p1, :cond_e

    .line 1239
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    sget-object v6, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v4, v5, v6}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_8

    .line 1290
    :cond_32
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-eqz v3, :cond_15

    .line 1291
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound()V

    goto/16 :goto_9

    .line 1422
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1318
    :cond_33
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v4, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v3, v4, :cond_42

    .line 1320
    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_34

    .line 1322
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_35

    .line 1324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() Stopping - Waiting for pending pictures"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",m_TakePictureIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    monitor-exit p0

    goto/16 :goto_a

    .line 1331
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - cancel taking picture - ignore jpeg call back"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    .line 1341
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    if-eqz v3, :cond_36

    .line 1346
    const-class v3, Lcom/android/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/camera/io/IMediaFileWriter;

    .line 1347
    .restart local v23       #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    if-eqz v23, :cond_43

    .line 1349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/camera/io/IMediaFileWriter;->resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V

    .line 1350
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    .line 1357
    .end local v23           #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    :cond_36
    :goto_d
    if-eqz v22, :cond_37

    if-lez p1, :cond_45

    .line 1359
    :cond_37
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_38

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-nez v3, :cond_44

    .line 1361
    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v15, v3}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    .line 1362
    and-int/lit8 v3, p4, 0x4

    if-eqz v3, :cond_39

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-nez v3, :cond_39

    .line 1363
    iget-object v3, v15, Lcom/android/camera/CameraThread;->captureCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-direct {v4, v5}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1368
    :cond_39
    :goto_e
    if-eqz v22, :cond_3a

    .line 1370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Close camera for recovering"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v15}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 1378
    :cond_3a
    :goto_f
    if-nez p1, :cond_3b

    .line 1380
    if-eqz v2, :cond_46

    .line 1381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(Lcom/android/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1390
    :cond_3b
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Enable GC"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 1393
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v18

    .line 1395
    .restart local v18       #controller:Lcom/android/camera/CameraController;
    if-eqz v18, :cond_3c

    .line 1396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - stop driver capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const-string v3, "contiburst-state"

    const-string v4, "contiburst-done"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1403
    .end local v18           #controller:Lcom/android/camera/CameraController;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    if-eqz v3, :cond_3d

    .line 1404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    invoke-virtual {v15, v3}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 1407
    :cond_3d
    invoke-virtual {v15}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v3

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v3, :cond_3e

    .line 1408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v3}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    .line 1411
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v3, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    if-nez v3, :cond_3f

    .line 1412
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v10, 0x2710

    add-int/lit8 v11, p1, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1413
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    .line 1417
    :cond_3f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_40

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-nez v3, :cond_41

    .line 1418
    :cond_40
    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 1419
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 1422
    :cond_41
    monitor-exit p0

    goto/16 :goto_a

    .line 1337
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Unexpected capture state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    monitor-exit p0

    goto/16 :goto_a

    .line 1353
    .restart local v23       #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No IMediaFileWriter interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1366
    .end local v23           #mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    :cond_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wait HTCCallback to endTakePicture m_TakePictureIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1375
    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JPEG ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/android/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1384
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No photo to save"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(Lcom/android/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_10

    .line 1041
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onShutter(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1441
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Shutter call-back ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1444
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 1448
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1452
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    .line 1464
    :cond_1
    :goto_0
    :pswitch_0
    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-eq v0, v7, :cond_2

    .line 1465
    invoke-direct {p0, v7}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureMode(Z)V

    .line 1468
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_a

    if-le p1, v7, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_a

    .line 1470
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Trying to take next picture for nVidia platform or Proto"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-eq v0, v5, :cond_5

    .line 1475
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutter() - Burst mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", no need to take next picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :cond_4
    :goto_1
    return-void

    .line 1455
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_0

    .line 1458
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_0

    .line 1480
    :cond_5
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1482
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - canCapture() = false, no need to take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1488
    :cond_7
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1490
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Max picture count reached, no need to take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1495
    :cond_8
    if-nez p1, :cond_9

    .line 1497
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->startPreviewSilently()Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    if-eq v0, v1, :cond_9

    .line 1500
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Cannot start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1506
    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, p1

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1507
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Cannot take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1511
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proto ShutterIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_b
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v5, v0, :cond_4

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    if-lez v0, :cond_4

    .line 1515
    :cond_c
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 1516
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v6

    .line 1517
    .local v6, controller:Lcom/android/camera/CameraController;
    if-eqz v6, :cond_d

    .line 1518
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - stop driver capturing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const-string v0, "contiburst-state"

    const-string v1, "contiburst-done"

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1522
    :cond_d
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    if-nez v0, :cond_4

    .line 1523
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v2, 0x2710

    add-int/lit8 v3, p1, 0x1

    iget-object v5, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1524
    iput-boolean v7, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    goto/16 :goto_1

    .line 1506
    .end local v6           #controller:Lcom/android/camera/CameraController;
    :cond_e
    add-int/lit8 v0, p1, 0x1

    goto :goto_2

    .line 1452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onThumbnailImageCreated(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "mediaInfo"
    .parameter "thumb"

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1551
    if-eqz p2, :cond_0

    .line 1552
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1554
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_2

    .line 1545
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/IThumbnailImageManager;->updateThumbnailImageDirectly(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1551
    :goto_1
    if-eqz p2, :cond_0

    .line 1552
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1547
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated() - No IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1551
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_3

    .line 1552
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    throw v0
.end method

.method private playShutterSound(Z)V
    .locals 6
    .parameter "isLoop"

    .prologue
    const/4 v1, 0x0

    .line 1561
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "playShutterSound("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1562
    if-eqz p1, :cond_2

    const/4 v0, -0x1

    .line 1563
    .local v0, loopCount:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    if-eqz v2, :cond_1

    .line 1565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    .line 1566
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    .line 1567
    if-nez p1, :cond_0

    .line 1568
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    .line 1569
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    .line 1571
    :cond_1
    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    .line 1572
    return-void

    .end local v0           #loopCount:I
    :cond_2
    move v0, v1

    .line 1562
    goto :goto_0
.end method

.method private setCaptureMode(Z)V
    .locals 3
    .parameter "apply"

    .prologue
    .line 1579
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    if-nez v1, :cond_1

    .line 1581
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 1582
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_3

    .line 1584
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - Set capture mode to contiburst"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1587
    const-string v1, "capture-mode"

    const-string v2, "contiburst-one-shot"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string v1, "contiburst-state"

    const-string v2, "contiburst-capturing"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - Set time-consuming post-processing mode to \'bypass\'"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-string v1, "time-cons-post-processing"

    const-string v2, "bypass"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    if-eqz p1, :cond_0

    .line 1596
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1597
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    .line 1602
    .end local v0           #controller:Lcom/android/camera/CameraController;
    :cond_1
    :goto_1
    return-void

    .line 1591
    .restart local v0       #controller:Lcom/android/camera/CameraController;
    :cond_2
    const-string v1, "capture-mode"

    const-string v2, "contiburst"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1600
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - No camera controller to set capture mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureState("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1610
    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    .line 1611
    return-void
.end method

.method private setupParamsBeforeTakingPicture(Lcom/android/camera/CameraController;)Z
    .locals 3
    .parameter "cameraController"

    .prologue
    const/4 v0, 0x0

    .line 1619
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v1, :cond_0

    .line 1640
    :goto_0
    return v0

    .line 1623
    :cond_0
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1626
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setupParamsBeforeTakingPicture() - Set time-consuming post-processing mode to \'delay\'"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const-string v0, "time-cons-post-processing"

    const-string v1, "delay"

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    invoke-virtual {p1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1640
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1632
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setupParamsBeforeTakingPicture() - Set time-consuming post-processing mode to \'bypass\'"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    const-string v1, "time-cons-post-processing"

    const-string v2, "bypass"

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureMode(Z)V

    goto :goto_1

    .line 1623
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private stopShutterSound()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1648
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound(JLcom/android/camera/Handle;)V

    .line 1649
    iput-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    .line 1650
    iput-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    .line 1651
    return-void

    .line 1648
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private stopShutterSound(JLcom/android/camera/Handle;)V
    .locals 11
    .parameter "startTime"
    .parameter "streamHandle"

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopShutterSound("

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, ", "

    if-eqz p3, :cond_2

    iget-object v4, p3, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1655
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    .line 1657
    const/4 v10, 0x1

    .line 1658
    .local v10, stopPlayDelay:I
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/HeadsetHelper;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    const/4 v10, 0x2

    .line 1661
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, p1

    .line 1662
    .local v8, duration:J
    sget v0, Lcom/android/camera/component/ContinuousBurstController;->SHUTTER_SOUND_LENGTH:I

    mul-int/2addr v0, v10

    int-to-long v0, v0

    sub-long v6, v0, v8

    .line 1663
    .local v6, delayTime:J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_3

    .line 1665
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopShutterSound() - Stop shutter sound after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    aput-object p3, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z

    .line 1672
    .end local v6           #delayTime:J
    .end local v8           #duration:J
    .end local v10           #stopPlayDelay:I
    :cond_1
    :goto_1
    return-void

    .line 1654
    :cond_2
    const-string v4, "null"

    goto :goto_0

    .line 1670
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    .line 1671
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0, p3}, Lcom/android/camera/IAudioManager;->stopInMemorySound(Lcom/android/camera/Handle;)V

    goto :goto_1
.end method

.method private takeNextPicture(I)Z
    .locals 14
    .parameter "index"

    .prologue
    const/4 v1, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1679
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 1682
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "takeNextPicture() - Surface is unavailable"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    monitor-exit v13

    move v0, v11

    .line 1776
    :goto_0
    return v0

    .line 1689
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    .line 1690
    .local v7, cameraThread:Lcom/android/camera/CameraThread;
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    if-ne p1, v12, :cond_1

    .line 1693
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureMode(Z)V

    .line 1696
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v0, v1, :cond_1

    .line 1698
    iget-object v0, v7, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    .line 1699
    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v7, v0}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 1704
    :cond_1
    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1706
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    .line 1719
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v0, v1, :cond_3

    if-ne p1, v12, :cond_3

    .line 1720
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    .line 1721
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$DropState;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    .line 1723
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v8

    .line 1724
    .local v8, controller:Lcom/android/camera/CameraController;
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 1725
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Set continuous burst type to limit-20"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    const-string v0, "contiburst-type"

    const-string v1, "limit-20"

    invoke-virtual {v8, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    :goto_2
    invoke-virtual {v8}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1736
    .end local v8           #controller:Lcom/android/camera/CameraController;
    :cond_3
    if-ne p1, v12, :cond_4

    .line 1737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    .line 1741
    :cond_4
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1743
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

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

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v10

    .line 1744
    .local v10, timerHandle:Lcom/android/camera/Handle;
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1750
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Take picture ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_StartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1755
    :try_start_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1756
    const/4 v0, 0x2

    if-ge p1, v0, :cond_7

    .line 1757
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1758
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

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

    .line 1764
    :goto_4
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1776
    :try_start_2
    monitor-exit v13

    move v0, v12

    goto/16 :goto_0

    .line 1709
    .end local v10           #timerHandle:Lcom/android/camera/Handle;
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_1

    .line 1777
    .end local v7           #cameraThread:Lcom/android/camera/CameraThread;
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1712
    .restart local v7       #cameraThread:Lcom/android/camera/CameraThread;
    :pswitch_1
    if-ne p1, v12, :cond_2

    :try_start_3
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_2

    .line 1713
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_1

    .line 1729
    .restart local v8       #controller:Lcom/android/camera/CameraController;
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Set continuous burst type to unlimited"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v0, "contiburst-type"

    const-string v1, "unlimited"

    invoke-virtual {v8, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 1747
    .end local v8           #controller:Lcom/android/camera/CameraController;
    :cond_6
    const/4 v10, 0x0

    .restart local v10       #timerHandle:Lcom/android/camera/Handle;
    goto :goto_3

    .line 1761
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

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
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 1766
    :catch_0
    move-exception v9

    .line 1768
    .local v9, ex:Ljava/lang/Throwable;
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

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

    .line 1769
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_8

    .line 1771
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v0, v10}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 1772
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1774
    :cond_8
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v11

    goto/16 :goto_0

    .line 1763
    .end local v9           #ex:Ljava/lang/Throwable;
    :cond_9
    :try_start_6
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 1706
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 5
    .parameter "handle"
    .parameter "cameraController"
    .parameter "camera"

    .prologue
    const/4 v1, 0x0

    .line 1898
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1900
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Not NvidiaPlatform , without cancel"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    :cond_0
    :goto_0
    return v1

    .line 1904
    :cond_1
    if-eqz p1, :cond_0

    .line 1907
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq p1, v2, :cond_2

    .line 1909
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

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

    .line 1914
    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-eq v2, v3, :cond_3

    .line 1916
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelTakingPicture() - Capture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1920
    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1922
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 1924
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

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

    .line 1925
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Handle;

    invoke-virtual {v2, v1}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 1922
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1928
    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1933
    .end local v0           #i:I
    :cond_5
    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 1934
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, p3, v3}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;I)V

    .line 1936
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    .line 416
    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    .line 419
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 420
    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 456
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 475
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 478
    :goto_0
    return-void

    .line 460
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    .line 461
    .local v1, params:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v3, v1, v4

    check-cast v3, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;

    .line 462
    .local v3, saveTask:Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;
    iget-object v5, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    monitor-enter v5

    .line 464
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 465
    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;

    .line 466
    .local v2, pendingTask:Lcom/android/camera/io/SaveImageTask;
    invoke-virtual {v2}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->clearJpegRawData()V

    goto :goto_1

    .line 469
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #pendingTask:Lcom/android/camera/io/SaveImageTask;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 467
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 468
    const/16 v4, 0x2719

    invoke-virtual {p0, v4}, Lcom/android/camera/component/ContinuousBurstController;->removeAsyncMessages(I)V

    .line 469
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    const/4 v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Lcom/android/camera/io/Path;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ContinuousBurstController;->onImageSaved(Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;Lcom/android/camera/io/Path;)V

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x2719
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 486
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 590
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 489
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->onEntered()V

    goto :goto_0

    .line 493
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->onExited()V

    goto :goto_0

    .line 498
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "wait HTCCallback timeout"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 500
    iput-boolean v7, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    .line 501
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    .line 503
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_1

    .line 504
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v2, 0x2711

    iget v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    aput-object v0, v5, v4

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;

    aput-object v0, v5, v7

    const/4 v0, 0x2

    iget-object v7, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    aput-object v7, v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 506
    :cond_1
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 507
    iput-object v8, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    goto :goto_0

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_IsEntered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/Path;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/component/ContinuousBurstController;->onImageSaveFailed(ILcom/android/camera/io/Path;)V

    goto :goto_0

    .line 519
    :pswitch_5
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    .line 520
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/Path;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    goto :goto_0

    .line 525
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 526
    .local v6, params:[Ljava/lang/Object;
    aget-object v0, v6, v4

    check-cast v0, Lcom/android/camera/CaptureHandle;

    aget-object v1, v6, v7

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v8, v1}, Lcom/android/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(Lcom/android/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 531
    .end local v6           #params:[Ljava/lang/Object;
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_0

    .line 535
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_1

    :pswitch_8
    goto/16 :goto_0

    .line 539
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Timeout, play burst shutter sound"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-direct {p0, v7}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_0

    .line 547
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->onBurstModeChanged(I)V

    goto/16 :goto_0

    .line 551
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 552
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-gtz v0, :cond_3

    .line 553
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 554
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_max_conti_burst_picture_count"

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 558
    :pswitch_c
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound()V

    goto/16 :goto_0

    .line 577
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 578
    .restart local v6       #params:[Ljava/lang/Object;
    aget-object v0, v6, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aget-object v0, v6, v7

    check-cast v0, Lcom/android/camera/Handle;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound(JLcom/android/camera/Handle;)V

    goto/16 :goto_0

    .line 584
    .end local v6           #params:[Ljava/lang/Object;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 585
    .restart local v6       #params:[Ljava/lang/Object;
    aget-object v0, v6, v4

    check-cast v0, Lcom/android/camera/MediaInfo;

    aget-object v1, v6, v7

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->onThumbnailImageCreated(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_6
        :pswitch_e
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 535
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 602
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 605
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_max_conti_burst_picture_count"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 606
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-gtz v1, :cond_0

    .line 607
    iput v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 610
    :cond_0
    const-class v1, Lcom/android/camera/IAudioManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IAudioManager;

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    .line 611
    const-class v1, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ICaptureResolutionManager;

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    .line 612
    const-class v1, Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/IOperationTimeoutController;

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    .line 615
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v1, :cond_1

    .line 617
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v2, 0x7f060001

    invoke-interface {v1, v2}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    .line 624
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/camera/imaging/Size;

    const v2, 0x7f0b00c5

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ContinuousBurstController;->getDimension(I)I

    move-result v2

    const v3, 0x7f0b00c6

    invoke-virtual {p0, v3}, Lcom/android/camera/component/ContinuousBurstController;->getDimension(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/imaging/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageSize:Lcom/android/camera/imaging/Size;

    .line 627
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstController$2;-><init>(Lcom/android/camera/component/ContinuousBurstController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 636
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 637
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstController$3;-><init>(Lcom/android/camera/component/ContinuousBurstController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 662
    return-void

    .line 620
    .end local v0           #cameraThread:Lcom/android/camera/CameraThread;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v2, 0x7f060002

    invoke-interface {v1, v2}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    goto :goto_0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "jpegRawData"
    .parameter "camera"

    .prologue
    .line 951
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 953
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_0

    .line 954
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Handle;

    invoke-virtual {v1, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 960
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    if-gt v0, v1, :cond_2

    .line 962
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Shutter call-back["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->onJpegCallbackTimeout(I)V

    .line 986
    :goto_1
    return-void

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - JPEG index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but there is no timeout timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 968
    :cond_2
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$4;->$SwitchMap$com$android$camera$component$ContinuousBurstController$CaptureState:[I

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1}, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 974
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 978
    :pswitch_0
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-le v0, v1, :cond_3

    .line 979
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture m_JpegIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",m_TakePictureIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 984
    :cond_3
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;I)V

    .line 985
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    goto/16 :goto_1

    .line 968
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onShutter()V
    .locals 3

    .prologue
    .line 1430
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutter call-back ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to drop picture m_TakePictureIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",m_ShutterIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    :goto_0
    return-void

    .line 1436
    :cond_0
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->onShutter(I)V

    .line 1437
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    goto :goto_0
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
    .line 1787
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v0, :cond_0

    .line 1788
    const/4 v0, 0x0

    .line 1889
    :goto_0
    return v0

    .line 1791
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    .line 1792
    .local v7, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    .line 1793
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->requestAudioFocus()V

    .line 1796
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-nez v0, :cond_2

    .line 1798
    const-class v0, Lcom/android/camera/IThumbnailImageManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IThumbnailImageManager;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    .line 1799
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-nez v0, :cond_2

    .line 1800
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Cannot find IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_8

    .line 1806
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/Resolution;

    .line 1807
    .local v9, resolution:Lcom/android/camera/Resolution;
    if-eqz v9, :cond_7

    .line 1809
    iget-object v0, v7, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1810
    new-instance v0, Lcom/android/camera/imaging/Size;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v1

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    .line 1827
    .end local v9           #resolution:Lcom/android/camera/Resolution;
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    .line 1828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    .line 1829
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    .line 1830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    .line 1831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    .line 1832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    .line 1833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    .line 1834
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    .line 1835
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    .line 1836
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    .line 1837
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;

    .line 1838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    .line 1839
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1840
    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 1841
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$DropState;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    .line 1842
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    .line 1843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    .line 1844
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    .line 1845
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    .line 1846
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 1849
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1851
    iget-object v0, v7, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    .line 1852
    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v7, v0}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 1856
    :cond_3
    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1858
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 1859
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    .line 1865
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_5

    .line 1867
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "JPEG [0]"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v10

    .line 1868
    .local v10, timerHandle:Lcom/android/camera/Handle;
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1872
    .end local v10           #timerHandle:Lcom/android/camera/Handle;
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Take picture [0]"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_StartTime:J

    .line 1876
    const/4 v0, 0x0

    invoke-virtual {p3, p0, v0, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1889
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1812
    .restart local v9       #resolution:Lcom/android/camera/Resolution;
    :cond_6
    new-instance v0, Lcom/android/camera/imaging/Size;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    goto/16 :goto_1

    .line 1816
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - No photo resolution"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    goto/16 :goto_1

    .line 1822
    .end local v9           #resolution:Lcom/android/camera/Resolution;
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    goto/16 :goto_1

    .line 1861
    :cond_9
    const/16 v2, 0x2712

    const-wide/16 v3, 0x190

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    goto :goto_2

    .line 1878
    :catch_0
    move-exception v8

    .line 1880
    .local v8, ex:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_a

    .line 1882
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Handle;

    invoke-virtual {v1, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 1883
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1885
    :cond_a
    throw v8
.end method
