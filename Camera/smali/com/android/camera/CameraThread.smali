.class public Lcom/android/camera/CameraThread;
.super Ljava/lang/Thread;
.source "CameraThread.java"

# interfaces
.implements Lcom/android/camera/component/IComponentOwner;
.implements Lcom/android/camera/ISettingsOwner;
.implements Lcom/android/camera/event/EventHandler;
.implements Lcom/android/camera/IAsyncOperationExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraThread$28;,
        Lcom/android/camera/CameraThread$ErrorListener;,
        Lcom/android/camera/CameraThread$InfoListener;,
        Lcom/android/camera/CameraThread$ErrorCallback;,
        Lcom/android/camera/CameraThread$MainHandler;,
        Lcom/android/camera/CameraThread$ModeChangeHandle;
    }
.end annotation


# static fields
.field public static final CHECK_RECORD_SIZE_LIMIT:I = 0x2726

.field public static final DEFAULT_SHUTTER_SOUND:I = 0x7f060004

.field private static final MIN_VIDEO_RECORDING_DURATION:I = 0x4b0

.field private static final MSG_CHANGE_ZOOM:I = 0x2756

.field private static final MSG_CLOSE_CAMERA:I = 0x2713

.field private static final MSG_EXIT:I = 0x2718

.field private static final MSG_INVOKE:I = 0x2774

.field private static final MSG_OPEN_CAMERA:I = 0x2710

.field private static final MSG_RESET_ZOOM_VALUE:I = 0x2740

.field private static final MSG_SET_FLASH_MODE:I = 0x2725

.field private static final MSG_START_PREVIEW:I = 0x2711

.field private static final MSG_START_PREVIEW_DIRECTLY:I = 0x2712

.field private static final MSG_START_VIDEO_RECORDING:I = 0x273d

.field private static final MSG_STOP_VIDEO_RECORDING:I = 0x273e

.field private static final START_RECORDING_DELAY_TIME:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "CameraThread"

.field private static final TIMEOUT_CLOSE_CAMERA:I = 0x1388

.field private static final TIMEOUT_STANDARD:I = 0x1388

.field private static final TIMEOUT_START_RECORDING:I = 0x1388

.field private static final TIMEOUT_STOP_RECORDING:I = 0xea60

.field private static mExifDateTimeFormat:Ljava/text/DateFormat;

.field private static final mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field public HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/HtcCallbackEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final MINIMUN_CAMERA_REMAIN_SPACE:J

.field public autoFocusCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public autoFocusFinishedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public autoFocusStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public autoFocusStartingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraClosedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraClosingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraOpenEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraDeviceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraOpenFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraDeviceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraType:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field public captureCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public captureFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public captureRotation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field public captureStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public captureStartingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public captureStoppedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public deletingLatestMediaEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public exitingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public flashMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field public hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public hasMovingObjects:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isEyeBlinked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isHdrSuggested:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isLowlight:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isPreviewStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isRecording:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isTakingPicture:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public m3DButtonStatus:I

.field private m3DFileFormat:Lcom/android/camera/io/FileFormat;

.field public m3DPreviewStatus:I

.field private mAudioManager:Lcom/android/camera/IAudioManager;

.field private mAutoFocusController:Lcom/android/camera/IAutoFocusController;

.field private mAutoSceneController:Lcom/android/camera/IAutoSceneController;

.field private mCamController:Lcom/android/camera/CameraController;

.field private mCameraActivity:Lcom/android/camera/HTCCamera;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private final mCameraDriverTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

.field private mCameraToken:Ljava/lang/Object;

.field private mCanSetPreviewCallback:Z

.field private mCanStartPreview:Z

.field private volatile mCaptureDuration:J

.field private volatile mCaptureStartTime:J

.field private mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

.field private mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

.field private volatile mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

.field private volatile mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

.field private mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

.field private mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

.field private mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

.field private mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

.field private final mInitialMode:Lcom/android/camera/CameraMode;

.field private mIsFirstFrameCached:Z

.field private mIsFirstTimeToStartPreview:Z

.field private mIsParamsPrepared:Z

.field private mIsShutterCallbackReceived:Z

.field private mJPEGQualityKey:Ljava/lang/String;

.field private final mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mJpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

.field private mJpegData:[B

.field private mLastCameraOpenFailedReason:Lcom/android/camera/CameraOpenFailedReason;

.field private mLastMediaInfo:Lcom/android/camera/MediaInfo;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Lcom/android/camera/location/ILocationManager;

.field private mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

.field private final mMediaRecorderTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private mPendingCloseCamera:Z

.field private mPendingExit:Z

.field private mPendingModeChangeHandle:Lcom/android/camera/CameraThread$ModeChangeHandle;

.field private volatile mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

.field private mPlaySoundFromCameraService:Z

.field private final mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewCallbackDisableCounter:I

.field private mProcessingDialogHandle:Lcom/android/camera/Handle;

.field private final mPropertyOwnerKey:Ljava/lang/Object;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecordingLimitController:Lcom/android/camera/IRecordingLimitController;

.field private mRecordingStartSoundHandle:Lcom/android/camera/Handle;

.field private mRecordingStartTime:J

.field private mRecordingStopSoundHandle:Lcom/android/camera/Handle;

.field private mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

.field private mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

.field private mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

.field private mSettings:Lcom/android/camera/CameraSettings;

.field private final mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mShutterSoundHandle:Lcom/android/camera/Handle;

.field public mSyncObject:Ljava/lang/Object;

.field private mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

.field mUIHandler:Landroid/os/Handler;

.field private m_LatestFocusAreas:[Landroid/graphics/RectF;

.field private final m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

.field public mediaDeletedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mediaRecorderInfoCallbackEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/MediaRecorderInfoEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mediaSaveFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mediaSavedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field public modeChangeFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraModeChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public modeChangedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraModeChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public postviewImageRetrievedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/RawImageEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public preparingParamsAfterPreviewStartEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraParamsSetupEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraParamsSetupEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public preparingParamsBeforeTakingPictureEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraParamsSetupEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewFrameRetrievedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/RawImageEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewSize:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public previewStartFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraPreviewEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraPreviewEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStartingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraPreviewEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStoppedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStoppingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public recordingFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/RecordingFailedReason;",
            ">;>;"
        }
    .end annotation
.end field

.field public recordingState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;"
        }
    .end annotation
.end field

.field public requestCloseCameraEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CloseCameraRequestEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/SingleHandlerEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public requestOpenCameraEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OpenCameraRequestEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public savingImageEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public storageSlot:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;"
        }
    .end annotation
.end field

.field public storageState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/io/StorageState;",
            ">;"
        }
    .end annotation
.end field

.field public takingPictureFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/TakingPictureFailedReason;",
            ">;>;"
        }
    .end annotation
.end field

.field public takingPictureState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;"
        }
    .end annotation
.end field

.field public videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/ThumbnailEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public zoomRange:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public zoomValue:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 246
    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "MEDIA"

    const-string v2, "VIDEO"

    const/4 v3, 0x0

    const-string v4, "counter_video"

    const/16 v5, 0x64

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    .line 4659
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/CameraThread;->mExifDateTimeFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/android/camera/CameraMode;)V
    .locals 4
    .parameter "activity"
    .parameter "handler"
    .parameter "initialMode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2437
    const-string v0, "Camera Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    .line 200
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    .line 203
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    .line 215
    iput-object v2, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    .line 217
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 227
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 229
    const-string v0, "_super"

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    .line 231
    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    .line 234
    iput-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Lcom/android/camera/io/FileFormat;

    .line 236
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->MINIMUN_CAMERA_REMAIN_SPACE:J

    .line 241
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    .line 255
    iput v3, p0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    .line 256
    iput v3, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    .line 275
    new-instance v0, Lcom/android/camera/CameraThread$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$1;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDriverTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    .line 283
    new-instance v0, Lcom/android/camera/CameraThread$2;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$2;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    .line 291
    new-instance v0, Lcom/android/camera/CameraThread$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$3;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mMediaRecorderTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    .line 435
    new-instance v0, Lcom/android/camera/CameraThread$6;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$6;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 457
    new-instance v0, Lcom/android/camera/CameraThread$7;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$7;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 464
    new-instance v0, Lcom/android/camera/CameraThread$8;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$8;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 2432
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    .line 2434
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 2448
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 2449
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    .line 2454
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    .line 2456
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 2457
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    .line 2774
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    .line 2939
    new-instance v0, Lcom/android/camera/CameraThread$ErrorCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    .line 2941
    new-instance v0, Lcom/android/camera/CameraThread$InfoListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$InfoListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    .line 2943
    new-instance v0, Lcom/android/camera/CameraThread$ErrorListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    .line 4009
    new-instance v0, Lcom/android/camera/CameraThread$17;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$17;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 2438
    check-cast p1, Lcom/android/camera/HTCCamera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 2439
    iput-object p2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 2440
    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    iput-object p3, p0, Lcom/android/camera/CameraThread;->mInitialMode:Lcom/android/camera/CameraMode;

    .line 2441
    return-void

    .line 2440
    .restart local p3
    :cond_0
    sget-object p3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    goto :goto_0
.end method

.method private NeedToApplyAMR_NB()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2671
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_1

    .line 2683
    :cond_0
    :goto_0
    return v1

    .line 2674
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Resolution;

    .line 2675
    .local v0, r:Lcom/android/camera/Resolution;
    if-eqz v0, :cond_0

    .line 2678
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v2, v3, :cond_0

    .line 2681
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mProcessingDialogHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mProcessingDialogHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/CameraThread;Lcom/android/camera/FlashMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFlashModeInternal(Lcom/android/camera/FlashMode;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraThread;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->resetZoomInternal(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setupPreviewCallback()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/CameraThread;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageState;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/debug/IOperationTimeoutController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CameraThread;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->onPreviewFrameRetrieved([B)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeStorageSlotInternal(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$ModeChangeHandle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraThread$ModeChangeHandle;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/CameraThread;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFirstFrameCacheStateInternal(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/CameraThread;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/CameraThread;Lcom/android/camera/RecordingLimitState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->onRecordingLimitStateChanged(Lcom/android/camera/RecordingLimitState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->onAutoFocusCanceled(Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->onAutoFocusFinished(Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraThread;->takePictureInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->cancelTakingPictureInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsShutterCallbackReceived:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsShutterCallbackReceived:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/CameraPreviewStartResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal(Lcom/android/camera/Handle;)Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread;->openCameraInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread;->startVideoRecordingInternal(Lcom/android/camera/CaptureHandle;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraThread;->stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    return-void
.end method

.method private cancelTakingPictureInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4961
    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4963
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-nez v2, :cond_0

    .line 4965
    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - mCurrentPhotoCaptureHandle is null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5007
    :goto_0
    return-void

    .line 4970
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

    .line 4971
    .local v0, captureHandler:Lcom/android/camera/IPhotoCaptureHandler;
    if-eqz v0, :cond_2

    .line 4974
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/camera/IPhotoCaptureHandler;->cancelTakingPicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4976
    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - cancel success"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5006
    :goto_1
    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4979
    :cond_1
    :try_start_1
    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - without cancel"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4982
    :catch_0
    move-exception v1

    .line 4984
    .local v1, ex:Ljava/lang/Throwable;
    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - Cannot cancel taking picture"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 4988
    .end local v1           #ex:Ljava/lang/Throwable;
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4990
    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - Taking picture canceling is only supported on NV platform"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4994
    :cond_3
    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - CameraThread stop timer"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4996
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v2, :cond_4

    .line 4998
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 4999
    iput-object v4, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    .line 5003
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/camera/CameraThread;->handleCommonJpegCallback([BLandroid/hardware/Camera;Z)V

    goto :goto_1
.end method

.method private changeModeInternal(Lcom/android/camera/CameraThread$ModeChangeHandle;)V
    .locals 6
    .parameter "handle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4276
    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal("

    iget-object v2, p1, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    const-string v3, ") - start"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4277
    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4280
    iput-object v5, p0, Lcom/android/camera/CameraThread;->mPendingModeChangeHandle:Lcom/android/camera/CameraThread$ModeChangeHandle;

    .line 4283
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    iget-object v1, p1, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4285
    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal() - Change to same mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4286
    iget-object v0, p0, Lcom/android/camera/CameraThread;->modeChangedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CameraModeChangeEventArgs;

    iget-object v2, p1, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    invoke-direct {v1, p1, v2}, Lcom/android/camera/CameraModeChangeEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraMode;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4319
    :goto_0
    return-void

    .line 4291
    :cond_0
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v1, p1, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4306
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4309
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4311
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    .line 4312
    invoke-direct {p0, p1, v5}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;

    .line 4316
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->modeChangedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CameraModeChangeEventArgs;

    iget-object v2, p1, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    invoke-direct {v1, p1, v2}, Lcom/android/camera/CameraModeChangeEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraMode;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4318
    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal("

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    const-string v3, ") - end"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 4294
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_1

    .line 4295
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v0, v4, v4}, Lcom/android/camera/CameraThread;->stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    goto :goto_1

    .line 4298
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4300
    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal() - Waiting for taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4301
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mPendingModeChangeHandle:Lcom/android/camera/CameraThread$ModeChangeHandle;

    goto :goto_0

    .line 4291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeStorageSlotInternal(Lcom/android/camera/io/StorageSlot;)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 4166
    if-nez p1, :cond_0

    .line 4184
    :goto_0
    return-void

    .line 4170
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4172
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlotInternal() - taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4175
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4177
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlotInternal() - recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4182
    :cond_2
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change storage slot to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkCanTakePicture()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2947
    const/4 v2, 0x1

    .line 2948
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v0

    .line 2949
    .local v0, pendingFileSize:J
    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/io/StorageState;

    .line 2950
    .local v3, storageState:Lcom/android/camera/io/StorageState;
    sget-object v4, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v3, v4, :cond_2

    .line 2952
    const-string v4, "CameraThread"

    const-string v5, "storage error"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    invoke-direct {p0, v3, v8, v0, v1}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    .line 2956
    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v4, v5, :cond_0

    .line 2957
    const/4 v2, 0x0

    .line 2969
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v4

    if-ne v4, v8, :cond_1

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    if-ne v4, v5, :cond_1

    .line 2971
    const/4 v2, 0x1

    .line 2974
    :cond_1
    return v2

    .line 2959
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 2961
    sget-object v4, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    invoke-direct {p0, v4, v8, v0, v1}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    .line 2964
    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v4, v5, :cond_0

    .line 2965
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkCanTakeRecorder()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2979
    const/4 v2, 0x1

    .line 2980
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v0

    .line 2981
    .local v0, pendingFileSize:J
    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/io/StorageState;

    .line 2982
    .local v3, storageState:Lcom/android/camera/io/StorageState;
    sget-object v4, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v3, v4, :cond_1

    .line 2984
    const-string v4, "CameraThread"

    const-string v5, "storage error"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    invoke-direct {p0, v3, v8, v0, v1}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    .line 2988
    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v4, v5, :cond_0

    .line 2989
    const/4 v2, 0x0

    .line 3013
    :cond_0
    :goto_0
    return v2

    .line 2993
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mRecordingLimitController:Lcom/android/camera/IRecordingLimitController;

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/IRecordingLimitController;->getRemainingRecordingDuration(J)Lcom/android/camera/Duration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 2995
    sget-object v4, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    invoke-direct {p0, v4, v8, v0, v1}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    .line 2996
    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v4, v5, :cond_0

    .line 2997
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkInternalDataSpace()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 3211
    const-string v8, "CameraThread"

    const-string v10, "checkInternalDataSpace()"

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    const-string v8, "/data"

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3215
    .local v5, fileStats:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 3216
    .local v0, availableBlocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 3217
    .local v2, blockSize:J
    mul-long v6, v0, v2

    .line 3218
    .local v6, size:J
    const-string v8, "CameraThread"

    const-string v10, "checkInternalDataSpace() - internal memory : "

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3219
    iget-object v10, p0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    iget-object v11, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/32 v12, 0x100000

    cmp-long v8, v6, v12

    if-lez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v10, v11, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3226
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #fileStats:Landroid/os/StatFs;
    .end local v6           #size:J
    :goto_1
    return-void

    .restart local v0       #availableBlocks:J
    .restart local v2       #blockSize:J
    .restart local v5       #fileStats:Landroid/os/StatFs;
    .restart local v6       #size:J
    :cond_0
    move v8, v9

    .line 3219
    goto :goto_0

    .line 3221
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #fileStats:Landroid/os/StatFs;
    .end local v6           #size:J
    :catch_0
    move-exception v4

    .line 3223
    .local v4, ex:Ljava/lang/Exception;
    const-string v8, "CameraThread"

    const-string v10, "checkInternalDataSpace() - Error checking internal storage"

    invoke-static {v8, v10, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3224
    iget-object v8, p0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    iget-object v10, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private checkMediaQueueState()Z
    .locals 14

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2724
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    invoke-virtual {v6}, Lcom/android/camera/io/IMediaFileWriter;->getMediaQueueCapacity()J

    move-result-wide v0

    .line 2727
    .local v0, maxSize:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getMediaQueueSize()J

    move-result-wide v2

    .line 2729
    .local v2, size:J
    const-string v6, "CameraThread"

    const-string v7, "checkImageQueueState() - size = %d/%d (%.2f%%)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x2

    long-to-double v10, v2

    const-wide/high16 v12, 0x4059

    mul-double/2addr v10, v12

    long-to-double v12, v0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    cmp-long v6, v2, v0

    if-ltz v6, :cond_1

    .line 2734
    :goto_1
    return v4

    .line 2724
    .end local v0           #maxSize:J
    .end local v2           #size:J
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .restart local v0       #maxSize:J
    .restart local v2       #size:J
    :cond_1
    move v4, v5

    .line 2734
    goto :goto_1
.end method

.method private checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V
    .locals 11
    .parameter "initState"
    .parameter "checkSize"
    .parameter "pendingFileSize"

    .prologue
    .line 3130
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal(initState = "

    const-string v3, ", checkSize = "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3133
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    if-ne v0, v1, :cond_0

    .line 3135
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStorageStateInternal() - Storage slot is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', try to find available storage slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v9

    .line 3137
    .local v9, storageSlot:Lcom/android/camera/io/StorageSlot;
    if-eqz v9, :cond_4

    sget-object v0, Lcom/android/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

    if-eq v9, v0, :cond_4

    .line 3139
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStorageStateInternal() - Use \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v9}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3150
    .end local v9           #storageSlot:Lcom/android/camera/io/StorageSlot;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3152
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStorageStateInternal() - Storage slot \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported, toggle storage slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3153
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->toggleStorageSlot()V

    .line 3157
    :cond_1
    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()Lcom/android/camera/io/StorageState;

    move-result-object v8

    .line 3160
    .local v8, state:Lcom/android/camera/io/StorageState;
    :goto_1
    if-eqz p2, :cond_3

    .line 3163
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v8, v0, :cond_2

    invoke-direct {p0, p3, p4}, Lcom/android/camera/CameraThread;->hasEnoughFreeSpace(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3164
    sget-object v8, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    .line 3167
    :cond_2
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v8, v0, :cond_3

    .line 3169
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3172
    move-object v6, v8

    .line 3173
    .local v6, oldState:Lcom/android/camera/io/StorageState;
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->toggleStorageSlot()V

    .line 3174
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()Lcom/android/camera/io/StorageState;

    move-result-object v8

    .line 3177
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v8, v0, :cond_8

    invoke-direct {p0, p3, p4}, Lcom/android/camera/CameraThread;->hasEnoughFreeSpace(J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3179
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_7

    const v7, 0x7f0a01ed

    .line 3182
    .local v7, resID:I
    :goto_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/android/camera/IToastManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/IToastManager;

    .line 3183
    .local v10, toastManager:Lcom/android/camera/IToastManager;
    if-eqz v10, :cond_3

    .line 3184
    invoke-virtual {v10, v7}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    .line 3200
    .end local v6           #oldState:Lcom/android/camera/io/StorageState;
    .end local v7           #resID:I
    .end local v10           #toastManager:Lcom/android/camera/IToastManager;
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3203
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showFocusWithoutDelay()Z

    move-result v0

    if-eqz v0, :cond_a

    const-wide/16 v0, 0x0

    :goto_4
    invoke-static {v2, v3, v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 3204
    return-void

    .line 3142
    .end local v8           #state:Lcom/android/camera/io/StorageState;
    .restart local v9       #storageSlot:Lcom/android/camera/io/StorageSlot;
    :cond_4
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3144
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStorageStateInternal() - Use \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3148
    :cond_5
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal() - Still no available storage slot"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v9           #storageSlot:Lcom/android/camera/io/StorageSlot;
    :cond_6
    move-object v8, p1

    .line 3157
    goto/16 :goto_1

    .line 3179
    .restart local v6       #oldState:Lcom/android/camera/io/StorageState;
    .restart local v8       #state:Lcom/android/camera/io/StorageState;
    :cond_7
    const v7, 0x7f0a01ee

    goto :goto_2

    .line 3189
    :cond_8
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal() - Storage error, switch storage slot back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3190
    move-object v8, v6

    .line 3191
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->toggleStorageSlot()V

    goto :goto_3

    .line 3195
    .end local v6           #oldState:Lcom/android/camera/io/StorageState;
    :cond_9
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal() - No storage slot to switch"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3203
    :cond_a
    const-wide/16 v0, 0x1f4

    goto :goto_4
.end method

.method private clearPreviewCallback()V
    .locals 2

    .prologue
    .line 4089
    const-string v0, "CameraThread"

    const-string v1, "clearPreviewCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4092
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 4094
    const-string v0, "CameraThread"

    const-string v1, "No camera device to clear preview call-back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4102
    :goto_0
    return-void

    .line 4099
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 4101
    const-string v0, "CameraThread"

    const-string v1, "clearPreviewCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getVideoEncoder(Lcom/android/camera/Resolution;)I
    .locals 4
    .parameter "resolution"

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 2389
    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {p1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {p1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-eq v2, v3, :cond_2

    .line 2392
    const/4 v0, 0x1

    .line 2404
    :cond_1
    :goto_0
    return v0

    .line 2394
    :cond_2
    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {p1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {p1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2396
    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 2398
    goto :goto_0

    .line 2402
    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->notSupportH264()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 2404
    goto :goto_0
.end method

.method private hasEnoughFreeSpace(J)Z
    .locals 6
    .parameter "pendingFileSize"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3100
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_2

    .line 3101
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 3103
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3101
    goto :goto_0

    .line 3103
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mRecordingLimitController:Lcom/android/camera/IRecordingLimitController;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/IRecordingLimitController;->getRemainingRecordingDuration(J)Lcom/android/camera/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private hasStorageTest()Lcom/android/camera/io/StorageState;
    .locals 5

    .prologue
    .line 3066
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    .line 3067
    .local v1, slot:Lcom/android/camera/io/StorageSlot;
    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v2

    .line 3068
    .local v2, slotState:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3070
    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3071
    sget-object v3, Lcom/android/camera/io/StorageState;->ReadOnly:Lcom/android/camera/io/StorageState;

    .line 3090
    .end local v1           #slot:Lcom/android/camera/io/StorageSlot;
    .end local v2           #slotState:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3072
    .restart local v1       #slot:Lcom/android/camera/io/StorageSlot;
    .restart local v2       #slotState:Ljava/lang/String;
    :cond_0
    const-string v3, "shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3073
    sget-object v3, Lcom/android/camera/io/StorageState;->Shared:Lcom/android/camera/io/StorageState;

    goto :goto_0

    .line 3075
    :cond_1
    sget-object v3, Lcom/android/camera/io/StorageState;->NoStorage:Lcom/android/camera/io/StorageState;

    goto :goto_0

    .line 3079
    :cond_2
    invoke-static {v1}, Lcom/android/camera/io/DCFUtility;->isDcimDirectoryWritable(Lcom/android/camera/io/StorageSlot;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3080
    sget-object v3, Lcom/android/camera/io/StorageState;->ReadOnly:Lcom/android/camera/io/StorageState;

    goto :goto_0

    .line 3083
    :cond_3
    sget-object v3, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3085
    .end local v1           #slot:Lcom/android/camera/io/StorageSlot;
    .end local v2           #slotState:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3089
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    const-string v4, "cannot know storage state"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3090
    sget-object v3, Lcom/android/camera/io/StorageState;->Unknown:Lcom/android/camera/io/StorageState;

    goto :goto_0
.end method

.method private isAddTimeStamp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2702
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    .line 2715
    :goto_0
    :pswitch_0
    return v0

    .line 2705
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2707
    sget-object v1, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraStartMode:[I

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2715
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    const-string v1, "pref_camera_timestamp"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 2707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isMMSRecording()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2688
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_1

    .line 2698
    :cond_0
    :goto_0
    return v1

    .line 2691
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Resolution;

    .line 2692
    .local v0, r:Lcom/android/camera/Resolution;
    if-eqz v0, :cond_0

    .line 2695
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2696
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private linkToOptionalServiceComponents()V
    .locals 2

    .prologue
    .line 4593
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4596
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/android/camera/IAudioManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAudioManager;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    .line 4597
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-nez v0, :cond_0

    .line 4598
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4601
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    .line 4602
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    if-eqz v0, :cond_3

    .line 4604
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/android/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CameraThread$23;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$23;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 4612
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/android/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CameraThread$24;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$24;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 4625
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/android/camera/IAutoSceneController;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoSceneController;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mAutoSceneController:Lcom/android/camera/IAutoSceneController;

    .line 4626
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoSceneController:Lcom/android/camera/IAutoSceneController;

    if-nez v0, :cond_1

    .line 4627
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAutoSceneController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4630
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/android/camera/location/ILocationManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/location/ILocationManager;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mLocationManager:Lcom/android/camera/location/ILocationManager;

    .line 4631
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLocationManager:Lcom/android/camera/location/ILocationManager;

    if-nez v0, :cond_2

    .line 4632
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find ILocationManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4635
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/android/camera/io/IMediaFileWriter;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/IMediaFileWriter;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    .line 4636
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    if-eqz v0, :cond_4

    .line 4638
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    iget-object v1, v1, Lcom/android/camera/io/IMediaFileWriter;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->bind(Lcom/android/camera/event/Event;)V

    .line 4639
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    iget-object v1, v1, Lcom/android/camera/io/IMediaFileWriter;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->bind(Lcom/android/camera/event/Event;)V

    .line 4643
    :goto_1
    return-void

    .line 4622
    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4642
    :cond_4
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IMediaFileWriter interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private linkToRequiredServiceComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4555
    const-string v0, "CameraThread"

    const-string v2, "linkToRequiredServiceComponents()"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4558
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    .line 4559
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    if-nez v0, :cond_0

    .line 4561
    const-string v0, "CameraThread"

    const-string v2, "linkToRequiredServiceComponents() - No ICaptureResolutionManager interface"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4585
    :goto_0
    return v0

    .line 4566
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/android/camera/IRecordingLimitController;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IRecordingLimitController;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingLimitController:Lcom/android/camera/IRecordingLimitController;

    .line 4567
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingLimitController:Lcom/android/camera/IRecordingLimitController;

    if-eqz v0, :cond_1

    .line 4569
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingLimitController:Lcom/android/camera/IRecordingLimitController;

    iget-object v0, v0, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/CameraThread$22;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$22;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 4585
    const/4 v0, 0x1

    goto :goto_0

    .line 4580
    :cond_1
    const-string v0, "CameraThread"

    const-string v2, "linkToRequiredServiceComponents() - No IRecordingLimitController interface"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4581
    goto :goto_0
.end method

.method private onAutoFocusCanceled(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 5014
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5025
    :cond_0
    :goto_0
    return-void

    .line 5018
    :cond_1
    iget-object v0, p1, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_0

    .line 5022
    const-string v0, "CameraThread"

    const-string v1, "onAutoFocusCanceled() - Take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5023
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->takePictureInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    goto :goto_0
.end method

.method private onAutoFocusFinished(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 5033
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5047
    :cond_0
    :goto_0
    return-void

    .line 5037
    :cond_1
    iget-object v0, p1, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    .line 5040
    iget-object v0, p1, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_0

    .line 5044
    const-string v0, "CameraThread"

    const-string v1, "onAutoFocusFinished() - Take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5045
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->takePictureInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    goto :goto_0
.end method

.method private onPreviewFrameRetrieved([B)V
    .locals 6
    .parameter "yuvData"

    .prologue
    .line 4025
    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imaging/Size;

    .line 4026
    .local v0, size:Lcom/android/camera/imaging/Size;
    if-nez v0, :cond_1

    .line 4030
    :cond_0
    :goto_0
    return-void

    .line 4028
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4029
    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/imaging/RawImageEventArgs;

    sget-object v3, Lcom/android/camera/imaging/PixelFormat;->Yvu420Sp:Lcom/android/camera/imaging/PixelFormat;

    iget v4, v0, Lcom/android/camera/imaging/Size;->width:I

    iget v5, v0, Lcom/android/camera/imaging/Size;->height:I

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/camera/imaging/RawImageEventArgs;-><init>([BLcom/android/camera/imaging/PixelFormat;II)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0
.end method

.method private onRecordingLimitStateChanged(Lcom/android/camera/RecordingLimitState;)V
    .locals 3
    .parameter "limitState"

    .prologue
    .line 2887
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingLimitStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    sget-object v0, Lcom/android/camera/RecordingLimitState;->None:Lcom/android/camera/RecordingLimitState;

    if-ne p1, v0, :cond_0

    .line 2914
    :goto_0
    return-void

    .line 2892
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2894
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingLimitStateChanged() - Current recording state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2899
    :cond_1
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingLimitState:[I

    invoke-virtual {p1}, Lcom/android/camera/RecordingLimitState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2913
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    goto :goto_0

    .line 2899
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private openCameraInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Z
    .locals 16
    .parameter "handle"
    .parameter "cameraType"

    .prologue
    .line 692
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "openCamera("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") - start"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-nez v11, :cond_0

    .line 697
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "openCamera() - Camera \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' is not supported"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 699
    const/4 v11, 0x0

    .line 870
    :goto_0
    return v11

    .line 703
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v11, :cond_2

    .line 705
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 707
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13, v14}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 708
    const/4 v11, 0x1

    goto :goto_0

    .line 710
    :cond_1
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "openCamera() - Trying to open camera \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\', but camera \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v13}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' is already open"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 712
    const/4 v11, 0x0

    goto :goto_0

    .line 716
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraToken;->getToken()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    .line 717
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    if-nez v11, :cond_3

    .line 719
    const-string v11, "CameraThread"

    const-string v12, "openCamera() - Cannot get camera token"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->NoToken:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 721
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 725
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    .line 737
    :try_start_0
    new-instance v1, Lcom/android/camera/OpenCameraRequestEventArgs;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/android/camera/OpenCameraRequestEventArgs;-><init>(Lcom/android/camera/CameraType;)V

    .line 738
    .local v1, e:Lcom/android/camera/OpenCameraRequestEventArgs;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->requestOpenCameraEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 741
    invoke-virtual {v1}, Lcom/android/camera/OpenCameraRequestEventArgs;->isHandled()Z

    move-result v11

    if-nez v11, :cond_7

    .line 744
    sget-object v11, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 771
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "openCamera() - Unsupported camera type : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v11}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    .line 773
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    .line 774
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 775
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 749
    :pswitch_0
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/camera/CameraType;->id:I

    invoke-static {v11}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 750
    new-instance v11, Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    invoke-direct {v11}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    invoke-virtual {v11, v12}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 814
    new-instance v11, Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-direct {v11, v12, v13}, Lcom/android/camera/CameraController;-><init>(Landroid/hardware/Camera;Lcom/android/camera/debug/IOperationTimeoutController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    .line 815
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v11}, Lcom/android/camera/CameraController;->setSupportedList()V

    .line 818
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 821
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v11}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 824
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "taking-picture-zoom"

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v3

    .line 825
    .local v3, info:Lcom/android/camera/CameraController$SettingInfo;
    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v5

    .line 826
    .local v5, min:I
    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v4

    .line 829
    .local v4, max:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Range;

    .line 830
    .local v8, oldRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/android/camera/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Lcom/android/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 831
    .local v6, newRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v11, v12, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 834
    if-eqz v8, :cond_e

    .line 836
    invoke-virtual {v8, v6}, Lcom/android/camera/Range;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 838
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v11, v8, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v12, v11

    int-to-double v12, v11

    iget-object v11, v8, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v11, v8, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v14, v11

    int-to-double v14, v11

    div-double v9, v12, v14

    .line 839
    .local v9, ratio:D
    iget-object v11, v6, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v11, v6, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v12, v11

    int-to-double v11, v11

    mul-double/2addr v11, v9

    double-to-int v12, v11

    iget-object v11, v6, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int v7, v12, v11

    .line 840
    .local v7, newZoomValue:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 848
    .end local v3           #info:Lcom/android/camera/CameraController$SettingInfo;
    .end local v4           #max:I
    .end local v5           #min:I
    .end local v6           #newRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    .end local v7           #newZoomValue:I
    .end local v8           #oldRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    .end local v9           #ratio:D
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "auto"

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraController;->setAntibanding(Ljava/lang/String;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "sound-off"

    const-string v13, "true"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13, v14}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 864
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraThread;->setupParamsBeforeStartingPreview(Lcom/android/camera/Handle;)V

    .line 865
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    .line 869
    const-string v11, "CameraThread"

    const-string v12, "openCamera() - end"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 755
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v11}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 757
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, v11, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 759
    const-string v11, "CameraThread"

    const-string v12, "openCamera() - power is low in 3D mode, won\'t open camera"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v11}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    .line 761
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    .line 762
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->LowPower:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 763
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 766
    :cond_6
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/camera/CameraType;->id:I

    invoke-static {v11}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 767
    new-instance v11, Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    invoke-direct {v11}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 785
    .end local v1           #e:Lcom/android/camera/OpenCameraRequestEventArgs;
    :catch_0
    move-exception v2

    .line 787
    .local v2, ex:Ljava/lang/Throwable;
    const-string v11, "CameraThread"

    const-string v12, "openCamera() - Cannot open camera device"

    invoke-static {v11, v12, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v11}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    .line 789
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    .line 792
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CAMERA_LOW_POWER_RESTRCTION_3D"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 793
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->LowPowerRestrict3D:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 807
    :goto_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 780
    .end local v2           #ex:Ljava/lang/Throwable;
    .restart local v1       #e:Lcom/android/camera/OpenCameraRequestEventArgs;
    :cond_7
    :try_start_2
    invoke-virtual {v1}, Lcom/android/camera/OpenCameraRequestEventArgs;->getCamera()Landroid/hardware/Camera;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 781
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v11, :cond_4

    .line 782
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->requestOpenCameraEvent:Lcom/android/camera/event/Event;

    iget-object v13, v13, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " event is handled, but no result"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 794
    .end local v1           #e:Lcom/android/camera/OpenCameraRequestEventArgs;
    .restart local v2       #ex:Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CAMERA_LOW_POWER_RESTRCTION_DUAL_MODE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 795
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->LowPowerDualModeCalling:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_3

    .line 796
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CAMERA_RESOURCE_OCCUPY"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 797
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->CameraResourceOccupy:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_3

    .line 798
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CAMERA_IN_NO_MEM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 799
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->CameraInNoMem:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_3

    .line 800
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CAMERA_HARDWARE_OPENED_FAIL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 801
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->CameraHWOpenFail:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_3

    .line 802
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CAMERA_POLICY_DISABLED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 803
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->CameraPolicyDisabled:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_3

    .line 805
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->Unknown:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_3

    .line 844
    .end local v2           #ex:Ljava/lang/Throwable;
    .restart local v1       #e:Lcom/android/camera/OpenCameraRequestEventArgs;
    .restart local v3       #info:Lcom/android/camera/CameraController$SettingInfo;
    .restart local v4       #max:I
    .restart local v5       #min:I
    .restart local v6       #newRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    .restart local v8       #oldRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v13, v6, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 744
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V
    .locals 2
    .parameter "handle"
    .parameter "failedReason"

    .prologue
    .line 4650
    iget-object v0, p0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CaptureEventArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4651
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2409
    const-string v1, "CameraThread"

    const-string v2, "releaseMediaRecorder()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 2412
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2417
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2422
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2427
    :goto_2
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 2429
    :cond_0
    return-void

    .line 2413
    :catch_0
    move-exception v0

    .line 2414
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.setOnInfoListener(null - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2418
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 2419
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2423
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 2424
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.release() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private resetZoomInternal(Z)V
    .locals 5
    .parameter "toMinimum"

    .prologue
    .line 3700
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-nez v2, :cond_0

    .line 3731
    :goto_0
    return-void

    .line 3704
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Range;

    .line 3705
    .local v0, range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 3707
    :cond_1
    const-string v2, "CameraThread"

    const-string v3, "resetZoom() - Cannot get zoom range"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3713
    :cond_2
    if-nez p1, :cond_6

    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3715
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3716
    .local v1, zoom:I
    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 3717
    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3725
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v2, :cond_4

    .line 3727
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 3728
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 3730
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3718
    :cond_5
    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 3719
    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 3722
    .end local v1           #zoom:I
    :cond_6
    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #zoom:I
    goto :goto_1
.end method

.method private setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 4464
    const-string v0, "CameraThread"

    const-string v1, "setCaptureRotationInternal("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4465
    if-nez p1, :cond_0

    .line 4466
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    .line 4467
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4468
    return-void
.end method

.method private setFirstFrameCacheStateInternal(Z)V
    .locals 4
    .parameter "isEnabled"

    .prologue
    .line 4423
    const-string v0, "CameraThread"

    const-string v1, "setFirstFrameCacheStateInternal("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4426
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    if-ne v0, p1, :cond_1

    .line 4441
    :cond_0
    :goto_0
    return-void

    .line 4430
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    .line 4432
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4436
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v0, :cond_0

    .line 4438
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "cache-first-frame"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 4439
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0

    .line 4438
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setFlashModeInternal(Lcom/android/camera/FlashMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 4370
    iget-object v0, p0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4381
    :cond_0
    :goto_0
    return-void

    .line 4374
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v0, :cond_0

    .line 4378
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set flash mode to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4379
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v1, p1, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 4380
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private setHWSoundEffect(Ljava/lang/String;)V
    .locals 3
    .parameter "setting"

    .prologue
    .line 4520
    const-string v0, "CameraThread"

    const-string v1, "setHWSoundEffect("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4522
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    .line 4524
    const-string v0, "active_ap=Camcorder;dolby_srs_eq="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4525
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0, p1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 4531
    :goto_0
    return-void

    .line 4527
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active_ap=Camcorder;dolby_srs_eq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 4530
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "setHWSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupParamsBeforeStartingPreview(Lcom/android/camera/Handle;)V
    .locals 21
    .parameter "handle"

    .prologue
    .line 886
    const-string v16, "CameraThread"

    const-string v17, "setupParamsBeforeStartingPreview - Start"

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 891
    const-string v16, "CameraThread"

    const-string v17, "setupParamsBeforeStartingPreview - No camera device"

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :goto_0
    return-void

    .line 896
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraType;

    .line 897
    .local v4, cameraType:Lcom/android/camera/CameraType;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v16

    if-eqz v16, :cond_b

    sget-object v16, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    move-object/from16 v0, v16

    if-ne v4, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "capture-mode"

    const-string v18, "zsl"

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "time-cons-post-processing"

    const-string v18, "enable"

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/FlashMode;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    sget-object v17, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v6

    .line 917
    .local v6, isSlowMotion:Z
    if-nez v6, :cond_c

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "cam-mode"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 930
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraController;->setRecordingHint(Z)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/CameraController;->isVideoStabilizationSupported()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 935
    if-nez v6, :cond_e

    sget-object v16, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    move-object/from16 v0, v16

    if-ne v4, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isVideoStabilizationEnabled:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_e

    const/4 v15, 0x1

    .line 938
    .local v15, videoStabilization:Z
    :goto_3
    const-string v16, "CameraThread"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "videoStabilization"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/camera/CameraController;->setVideoStabilization(Z)V

    .line 943
    .end local v15           #videoStabilization:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "cache-first-frame"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 956
    .end local v6           #isSlowMotion:Z
    :goto_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canChangeFrameRate()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 958
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const/16 v17, 0x3a98

    const/16 v18, 0x3a98

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setPreviewFpsRange(II)V

    .line 965
    :cond_2
    :goto_5
    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "front-camera-mode"

    const-string v18, "mirror"

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :cond_3
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isHTCSkinBeautiferSupported()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->isNull()Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/camera/effect/AutoScene;

    move/from16 v16, v0

    if-eqz v16, :cond_13

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->isNull()Z

    move-result v16

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/camera/effect/NoneEffect;

    move/from16 v16, v0

    if-eqz v16, :cond_13

    .line 977
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/CameraType;

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 979
    const-string v16, "CameraThread"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "set beauty-face-value to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mainHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "beauty-face-value"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mainHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 996
    :cond_6
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v7

    .line 997
    .local v7, isSlowMotionMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->photoPreviewSize:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/imaging/Size;

    .line 998
    .local v9, photoPreviewSize:Lcom/android/camera/imaging/Size;
    if-eqz v7, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->slowMotionVideoPreviewSize:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/imaging/Size;

    move-object/from16 v14, v16

    .line 1001
    .local v14, videoPreviewSize:Lcom/android/camera/imaging/Size;
    :goto_7
    if-eqz v14, :cond_8

    .line 1003
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v14, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v14, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1004
    .local v13, strResolution:Ljava/lang/String;
    iget v0, v14, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v16, v0

    const/16 v17, 0x780

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1005
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v14, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x438

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1006
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "video-size"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string v16, "CameraThread"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setCameraParameter(\'video-size\',\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\')"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .end local v13           #strResolution:Ljava/lang/String;
    :cond_8
    sget-object v17, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraMode:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/CameraMode;

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v16

    aget v16, v17, v16

    packed-switch v16, :pswitch_data_0

    .line 1066
    const-string v16, "CameraThread"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setupParamsBeforeStartingPreview() - Unknown camera mode : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    new-instance v11, Lcom/android/camera/imaging/Size;

    invoke-direct {v11}, Lcom/android/camera/imaging/Size;-><init>()V

    .line 1072
    .local v11, previewSize:Lcom/android/camera/imaging/Size;
    :goto_8
    iget v0, v11, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0xf

    rsub-int/lit8 v12, v16, 0x10

    .line 1073
    .local v12, sizeDiff:I
    const/16 v16, 0x10

    move/from16 v0, v16

    if-ge v12, v0, :cond_9

    .line 1074
    iget v0, v11, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v16, v0

    add-int v16, v16, v12

    move/from16 v0, v16

    iput v0, v11, Lcom/android/camera/imaging/Size;->width:I

    .line 1075
    :cond_9
    iget v0, v11, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0xf

    rsub-int/lit8 v12, v16, 0x10

    .line 1076
    const/16 v16, 0x10

    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1077
    iget v0, v11, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v16, v0

    add-int v16, v16, v12

    move/from16 v0, v16

    iput v0, v11, Lcom/android/camera/imaging/Size;->height:I

    .line 1078
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "taking-picture-zoom"

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v5

    .line 1082
    .local v5, info:Lcom/android/camera/CameraController$SettingInfo;
    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 1088
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/CameraParamsSetupEventArgs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraParamsSetupEventArgs;-><init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1091
    const-string v16, "CameraThread"

    const-string v17, "setupParamsBeforeStartingPreview - Set parameters"

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1094
    const-string v16, "CameraThread"

    const-string v17, "setupParamsBeforeStartingPreview - End"

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 904
    .end local v5           #info:Lcom/android/camera/CameraController$SettingInfo;
    .end local v7           #isSlowMotionMode:Z
    .end local v9           #photoPreviewSize:Lcom/android/camera/imaging/Size;
    .end local v11           #previewSize:Lcom/android/camera/imaging/Size;
    .end local v12           #sizeDiff:I
    .end local v14           #videoPreviewSize:Lcom/android/camera/imaging/Size;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "capture-mode"

    const-string v18, "normal"

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 924
    .restart local v6       #isSlowMotion:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 925
    .local v8, keepSound:Z
    if-eqz v8, :cond_d

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->disableSoundEffect()V

    .line 927
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "cam-mode"

    const/16 v18, 0x2

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 935
    .end local v8           #keepSound:Z
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 947
    .end local v6           #isSlowMotion:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "cam-mode"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraController;->setRecordingHint(Z)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "cache-first-frame"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    move/from16 v16, v0

    if-eqz v16, :cond_10

    const/16 v16, 0x1

    :goto_a
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_10
    const/16 v16, 0x0

    goto :goto_a

    .line 961
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const v18, 0x30d40

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setPreviewFpsRange(II)V

    goto/16 :goto_5

    .line 984
    :cond_12
    const-string v16, "CameraThread"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "set beauty-face-value to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->frontHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "beauty-face-value"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->frontHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 990
    :cond_13
    const-string v16, "CameraThread"

    const-string v17, "can not enable HTCSkinBeautifer, set beauty-face-value to 0"

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "beauty-face-value"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 998
    .restart local v7       #isSlowMotionMode:Z
    .restart local v9       #photoPreviewSize:Lcom/android/camera/imaging/Size;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->videoPreviewSize:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/imaging/Size;

    move-object/from16 v14, v16

    goto/16 :goto_7

    .line 1016
    .restart local v14       #videoPreviewSize:Lcom/android/camera/imaging/Size;
    :pswitch_0
    if-eqz v9, :cond_16

    .line 1019
    const-string v16, "CameraThread"

    const-string v17, "setupParamsBeforeStartingPreview() - Preview size (photo) is "

    iget v0, v9, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, " x "

    iget v0, v9, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v16 .. v20}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    iget v0, v9, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v17, v0

    iget v0, v9, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/Resolution;

    .line 1024
    .local v10, photoResolution:Lcom/android/camera/Resolution;
    if-eqz v10, :cond_15

    .line 1026
    const-string v16, "CameraThread"

    const-string v17, "setupParamsBeforeStartingPreview() - Photo resolution is "

    invoke-virtual {v10}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, " x "

    invoke-virtual {v10}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v16 .. v20}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    invoke-virtual {v10}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v17

    invoke-virtual {v10}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setPictureSizeParameter(II)V

    .line 1034
    .end local v10           #photoResolution:Lcom/android/camera/Resolution;
    :goto_b
    move-object v11, v9

    .line 1035
    .restart local v11       #previewSize:Lcom/android/camera/imaging/Size;
    goto/16 :goto_8

    .line 1030
    .end local v11           #previewSize:Lcom/android/camera/imaging/Size;
    .restart local v10       #photoResolution:Lcom/android/camera/Resolution;
    :cond_15
    const-string v16, "CameraThread"

    const-string v17, "setupParamsBeforeStartingPreview() - No photo resolution"

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1033
    .end local v10           #photoResolution:Lcom/android/camera/Resolution;
    :cond_16
    const-string v16, "CameraThread"

    const-string v17, "setupParamsBeforeStartingPreview() - No photo preview size"

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1039
    :pswitch_1
    if-eqz v14, :cond_19

    .line 1042
    const-string v16, "CameraThread"

    const-string v17, "setupParamsBeforeStartingPreview() - Preview size (video) is "

    iget v0, v14, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, " x "

    iget v0, v14, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v16 .. v20}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1043
    iget v0, v14, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v16, v0

    const/16 v17, 0x780

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v16

    if-eqz v16, :cond_17

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    iget v0, v14, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v17, v0

    const/16 v18, 0x438

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 1049
    :goto_c
    if-eqz v7, :cond_18

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "video-mode"

    const-string v18, "1"

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v16, "CameraThread"

    const-string v17, "setupParamsBeforeStartingPreview() - Enable slow motion mode"

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :goto_d
    move-object v11, v14

    .line 1063
    .restart local v11       #previewSize:Lcom/android/camera/imaging/Size;
    goto/16 :goto_8

    .line 1046
    .end local v11           #previewSize:Lcom/android/camera/imaging/Size;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    iget v0, v14, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v17, v0

    iget v0, v14, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    goto :goto_c

    .line 1056
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    const-string v17, "video-mode"

    const-string v18, "0"

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v16, "CameraThread"

    const-string v17, "setupParamsBeforeStartingPreview() - Disable slow motion mode"

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1061
    :cond_19
    const-string v16, "CameraThread"

    const-string v17, "setupParamsBeforeStartingPreview() - No video preview size"

    invoke-static/range {v16 .. v17}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1085
    .restart local v5       #info:Lcom/android/camera/CameraController$SettingInfo;
    .restart local v11       #previewSize:Lcom/android/camera/imaging/Size;
    .restart local v12       #sizeDiff:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    invoke-virtual {v5}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraController;->setZoom(I)V

    goto/16 :goto_9

    .line 1012
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupPreviewCallback()V
    .locals 5

    .prologue
    .line 4037
    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4040
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 4042
    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - No camera device to setup preview call-back"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4082
    :goto_0
    return-void

    .line 4045
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    if-nez v3, :cond_1

    .line 4047
    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - Cannot set preview call-back due to current state"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4050
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v3}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4052
    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - No handlers for receiving preview frame"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4057
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4058
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_3

    .line 4060
    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - Cannot get camera parameters"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4065
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/imaging/Size;

    .line 4066
    .local v1, previewSize:Lcom/android/camera/imaging/Size;
    if-nez v1, :cond_4

    .line 4068
    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - Cannot get preview size"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4073
    :cond_4
    iget v3, v1, Lcom/android/camera/imaging/Size;->width:I

    mul-int/lit8 v3, v3, 0xc

    div-int/lit8 v2, v3, 0x8

    .line 4076
    .local v2, stride:I
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget v4, v1, Lcom/android/camera/imaging/Size;->height:I

    mul-int/2addr v4, v2

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 4079
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 4081
    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startPreviewDirectlyInternal(Lcom/android/camera/Handle;)Lcom/android/camera/CameraPreviewStartResult;
    .locals 8
    .parameter "handle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1289
    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - Handle : "

    invoke-static {v2, v3, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1293
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 1295
    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - No camera"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    iget-object v2, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v4, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v3, p1, v4}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1297
    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    .line 1394
    :goto_0
    return-object v1

    .line 1299
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    if-nez v2, :cond_1

    .line 1301
    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - Cannot start preview, CanStartPreview = False"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-object v2, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v4, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v3, p1, v4}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1303
    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0

    .line 1305
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1307
    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - Already previewing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget-object v2, p0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v4, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v3, p1, v4}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1309
    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0

    .line 1313
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    if-ne v2, v3, :cond_3

    .line 1314
    iget-object v2, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1317
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CameraPreviewEventArgs;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1323
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1327
    const-string v2, "CameraThread"

    const-string v4, "startPreviewDirectlyInternal() - mCameraDevice.startPreview() - start"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->startPreview()V

    .line 1329
    const-string v2, "CameraThread"

    const-string v4, "startPreviewDirectlyInternal() - mCameraDevice.startPreview() - end"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1331
    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    .line 1338
    .local v1, result:Lcom/android/camera/CameraPreviewStartResult;
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    :goto_2
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    if-eqz v2, :cond_4

    .line 1350
    iput-boolean v7, p0, Lcom/android/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    .line 1353
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v2, v7}, Lcom/android/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    .line 1354
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    sget-object v3, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    .line 1355
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v2, v6}, Lcom/android/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    .line 1358
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->linkToOptionalServiceComponents()V

    .line 1362
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1364
    iget-object v2, p0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v4, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v3, p1, v4}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1365
    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1366
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1367
    iget-object v2, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1373
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2713

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1375
    iput-boolean v6, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 1376
    iget v2, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-gtz v2, :cond_6

    .line 1377
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setupPreviewCallback()V

    .line 1381
    :cond_6
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    if-nez v2, :cond_7

    .line 1382
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v3, 0x7f060004

    invoke-interface {v2, v3}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    .line 1385
    :cond_7
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_a

    .line 1387
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[camera_preview]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    :goto_4
    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1335
    .end local v1           #result:Lcom/android/camera/CameraPreviewStartResult;
    :cond_8
    :try_start_2
    const-string v2, "CameraThread"

    const-string v4, "startPreviewDirectlyInternal() - Surface is unavailable"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    .restart local v1       #result:Lcom/android/camera/CameraPreviewStartResult;
    goto/16 :goto_1

    .line 1338
    .end local v1           #result:Lcom/android/camera/CameraPreviewStartResult;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1340
    :catch_0
    move-exception v0

    .line 1342
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - Start preview failed"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1343
    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->UnknownError:Lcom/android/camera/CameraPreviewStartResult;

    .restart local v1       #result:Lcom/android/camera/CameraPreviewStartResult;
    goto/16 :goto_2

    .line 1370
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_9
    iget-object v2, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CameraPreviewEventArgs;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_3

    .line 1390
    :cond_a
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[camcorder_preview]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private startPreviewInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;
    .locals 7
    .parameter "handle"
    .parameter "cameraType"

    .prologue
    .line 1118
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Handle : "

    invoke-static {v3, v4, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1121
    iget-object v3, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1123
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Preview is already started"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1125
    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    .line 1262
    :goto_0
    return-object v2

    .line 1129
    :cond_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    if-ne v3, v4, :cond_1

    .line 1130
    iget-object v3, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1133
    :cond_1
    if-nez p2, :cond_4

    .line 1134
    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/camera/CameraType;

    .line 1142
    .restart local p2
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_5

    .line 1144
    invoke-virtual {p0, p2}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    .line 1145
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3, p2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1147
    :cond_3
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPreviewInternal mLastCameraOpenFailedReason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mLastCameraOpenFailedReason:Lcom/android/camera/CameraOpenFailedReason;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    sget-object v3, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraOpenFailedReason:[I

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mLastCameraOpenFailedReason:Lcom/android/camera/CameraOpenFailedReason;

    invoke-virtual {v4}, Lcom/android/camera/CameraOpenFailedReason;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1194
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Cannot open camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1196
    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0

    .line 1135
    :cond_4
    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eq p2, v3, :cond_2

    .line 1137
    const-string v3, "CameraThread"

    const-string v4, "Start preview with different camera, close previous camera first"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto :goto_1

    .line 1152
    :pswitch_0
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Cannot get camera token"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1154
    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1158
    :pswitch_1
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - LowPowerRestrict3D"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->LowPowerRestrict3D:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1160
    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->LowPowerRestrict3D:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1164
    :pswitch_2
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - LowPowerDualModeCalling"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->LowPowerDualModeCalling:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1166
    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->LowPowerDualModeCalling:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1170
    :pswitch_3
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - CameraResourceOccupy"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->CameraResourceOccupy:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1172
    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraResourceOccupy:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1176
    :pswitch_4
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - CameraInNoMem"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->CameraInNoMem:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1178
    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraInNoMem:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1182
    :pswitch_5
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - CameraHWOpenFail"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->CameraHWOpenFail:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1184
    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraHWOpenFail:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1188
    :pswitch_6
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - CameraPolicyDisabled"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1190
    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1205
    :cond_5
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    if-nez v3, :cond_6

    .line 1206
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setupParamsBeforeStartingPreview(Lcom/android/camera/Handle;)V

    .line 1214
    :goto_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1217
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1219
    const-string v3, "CameraThread"

    const-string v5, "startPreviewInternal() - Surface is unavailable"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v6, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v5, p1, v6}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1221
    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    monitor-exit v4

    goto/16 :goto_0

    .line 1243
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1209
    :cond_6
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - No need to setup parameters"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    goto :goto_2

    .line 1228
    :cond_7
    :try_start_1
    invoke-virtual {p2}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1229
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v5, 0x5a

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1234
    :goto_3
    const-string v3, "CameraThread"

    const-string v5, "startPreviewInternal() - Set preview display"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1243
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1246
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal(Lcom/android/camera/Handle;)Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v2

    .line 1249
    .local v2, result:Lcom/android/camera/CameraPreviewStartResult;
    sget-object v3, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    if-ne v2, v3, :cond_a

    .line 1251
    new-instance v0, Lcom/android/camera/CameraParamsSetupEventArgs;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-direct {v0, p1, v3, v4}, Lcom/android/camera/CameraParamsSetupEventArgs;-><init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    .line 1252
    .local v0, e:Lcom/android/camera/CameraParamsSetupEventArgs;
    iget-object v3, p0, Lcom/android/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v3, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1253
    invoke-virtual {v0}, Lcom/android/camera/CameraParamsSetupEventArgs;->isParameterChanged()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1254
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1261
    .end local v0           #e:Lcom/android/camera/CameraParamsSetupEventArgs;
    :goto_4
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - End"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1231
    .end local v2           #result:Lcom/android/camera/CameraPreviewStartResult;
    :cond_8
    :try_start_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget v5, p2, Lcom/android/camera/CameraType;->orientation:I

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1237
    :catch_0
    move-exception v1

    .line 1239
    .local v1, ex:Ljava/lang/Throwable;
    :try_start_4
    const-string v3, "CameraThread"

    const-string v5, "startPreviewInternal() - Cannot setup preview parameters"

    invoke-static {v3, v5, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1240
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v6, Lcom/android/camera/CameraPreviewStartResult;->UnknownError:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v5, p1, v6}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1241
    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->UnknownError:Lcom/android/camera/CameraPreviewStartResult;

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1256
    .end local v1           #ex:Ljava/lang/Throwable;
    .restart local v0       #e:Lcom/android/camera/CameraParamsSetupEventArgs;
    .restart local v2       #result:Lcom/android/camera/CameraPreviewStartResult;
    :cond_9
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Camera parameters is not changed, no need to set again"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1259
    .end local v0           #e:Lcom/android/camera/CameraParamsSetupEventArgs;
    :cond_a
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Cannot start preview, no need to set parameters"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private startVideoRecordingInternal(Lcom/android/camera/CaptureHandle;Z)V
    .locals 34
    .parameter "handle"
    .parameter "isShutterSoundPlayed"

    .prologue
    .line 1857
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Start"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Handle : \'"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v8, "\'"

    invoke-static {v2, v4, v5, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1861
    if-nez p2, :cond_0

    .line 1863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1865
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Invalid state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    sget-object v2, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    .line 2382
    :goto_0
    return-void

    .line 1872
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1874
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Invalid state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    sget-object v2, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_0

    .line 1881
    :cond_1
    if-nez p2, :cond_3

    .line 1884
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->checkCanTakeRecorder()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1886
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Storage error"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    sget-object v2, Lcom/android/camera/CaptureFailedReason;->StorageError:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_0

    .line 1892
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->checkInternalDataSpace()V

    .line 1893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1895
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Low internal data space"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    sget-object v2, Lcom/android/camera/CaptureFailedReason;->LowInternalDataSpace:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_0

    .line 1922
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 1923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureStartingEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1927
    :cond_4
    if-nez p2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_7

    .line 1930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;

    if-nez v2, :cond_5

    .line 1931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v4, 0x7f06000b

    invoke-interface {v2, v4}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;

    .line 1932
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v4, v5, v8}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    .line 1935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_6

    .line 1937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v4, 0x273d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v2, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    .line 1938
    .local v29, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const-wide/16 v4, 0x12c

    move-object/from16 v0, v29

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/camera/CameraThread$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1942
    .end local v29           #msg:Landroid/os/Message;
    :cond_6
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - No camera handler"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    sget-object v2, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 1949
    :cond_7
    if-nez p2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_8

    .line 1950
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - mRecorder != null"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 1953
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_9

    .line 1954
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 1960
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_a

    .line 1961
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Camera is closed"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    sget-object v2, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 1967
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_b

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v4, "CAMCORDER_MODE=ON"

    invoke-interface {v2, v4}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 1972
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 1973
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    .line 1975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 1976
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - start video recording: unlock camera"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    iget v0, v2, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    move/from16 v30, v0

    .line 1980
    .local v30, orientation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    iget v0, v2, Lcom/android/camera/CameraType;->orientation:I

    move/from16 v32, v0

    .line 1981
    .local v32, sensorOrientation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1982
    add-int v30, v30, v32

    .line 1986
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1988
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - set rotation landscape while 3D video mode"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const/16 v30, 0x0

    .line 1992
    :cond_c
    move/from16 v0, v30

    rem-int/lit16 v0, v0, 0x168

    move/from16 v30, v0

    .line 1994
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - set rotation, mCaptureRotation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1998
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2002
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2005
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v2

    if-nez v2, :cond_10

    .line 2007
    const-string v2, "CameraThread"

    const-string v5, "startVideoRecordingInternal() - Preview surface is unavailable"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2009
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v8, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v5, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2011
    sget-object v2, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    .line 2012
    monitor-exit v4

    goto/16 :goto_0

    .line 2027
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1984
    :cond_f
    sub-int v30, v32, v30

    goto/16 :goto_1

    .line 2016
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v21

    .line 2018
    .local v21, holder:Landroid/view/SurfaceHolder;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-interface/range {v21 .. v21}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2027
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2029
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v23

    .line 2031
    .local v23, isSlowMotion:Z
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isStereoRecordingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v24, 0x1

    .line 2032
    .local v24, isStereoRecording:Z
    :goto_2
    if-nez v23, :cond_16

    .line 2033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    .line 2036
    .local v25, keepSound:Z
    :goto_3
    if-eqz v25, :cond_12

    .line 2039
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2041
    if-eqz v24, :cond_17

    .line 2043
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/CameraThread;->setSoundEffect(ZLcom/android/camera/rotate/UIRotation;)V

    .line 2044
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->enableSoundEffect()V

    .line 2045
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecording() - Enable stereo recording"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2056
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 2058
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 2064
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2065
    sget-object v2, Lcom/android/camera/io/FileFormat;->Mpeg4For3D:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    .line 2081
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    invoke-static {v2}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v3

    .line 2082
    .local v3, dcimPath:Ljava/lang/String;
    new-instance v6, Lcom/android/camera/Reference;

    invoke-direct {v6}, Lcom/android/camera/Reference;-><init>()V

    .line 2083
    .local v6, dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    new-instance v7, Lcom/android/camera/Reference;

    invoke-direct {v7}, Lcom/android/camera/Reference;-><init>()V

    .line 2084
    .local v7, fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    sget-object v4, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    invoke-static/range {v2 .. v7}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2092
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Cannot find available video file location, please check the storage card"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Camera app finished"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->finish()V

    .line 2097
    :cond_13
    new-instance v16, Lcom/android/camera/io/FileCounter;

    iget-object v2, v6, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    .line 2098
    .local v16, dirCounter:Lcom/android/camera/io/FileCounter;
    new-instance v20, Lcom/android/camera/io/FileCounter;

    iget-object v2, v7, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    .line 2099
    .local v20, fileCounter:Lcom/android/camera/io/FileCounter;
    new-instance v2, Lcom/android/camera/io/DCFPath;

    sget-object v4, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/camera/io/DCFUtility;->getDirectoryName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, v20

    invoke-static {v5, v0, v8}, Lcom/android/camera/io/DCFUtility;->getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    .line 2105
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Save video: directory name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    iget-object v5, v5, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  file name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    iget-object v5, v5, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v4}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 2112
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->videoBitRate:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 2113
    .local v15, bitRate:I
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Video bit rate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v15}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 2124
    .end local v15           #bitRate:I
    :goto_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/camera/Duration;

    .line 2125
    .local v26, maxDuration:Lcom/android/camera/Duration;
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Maximum video duration : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/Duration;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/Duration;->getMilliseconds()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 2137
    .end local v26           #maxDuration:Lcom/android/camera/Duration;
    :cond_14
    :goto_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 2138
    .local v27, maxFileSize:J
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Maximum video file size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-wide/from16 v0, v27

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 2185
    .end local v27           #maxFileSize:J
    :goto_9
    const/16 v22, 0x0

    .line 2186
    .local v22, iValFR:I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v2

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v4, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v2, v4, :cond_1b

    .line 2187
    const/16 v22, 0xf

    .line 2194
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 2195
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - setVideoFrameRate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    if-eqz v23, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->slowMotionVideoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Resolution;

    move-object/from16 v31, v2

    .line 2199
    .local v31, resolution:Lcom/android/camera/Resolution;
    :goto_b
    if-nez v31, :cond_1e

    .line 2201
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - No video resolution"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 2203
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2204
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 2205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2206
    sget-object v2, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 2019
    .end local v3           #dcimPath:Ljava/lang/String;
    .end local v6           #dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .end local v7           #fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .end local v16           #dirCounter:Lcom/android/camera/io/FileCounter;
    .end local v20           #fileCounter:Lcom/android/camera/io/FileCounter;
    .end local v22           #iValFR:I
    .end local v23           #isSlowMotion:Z
    .end local v24           #isStereoRecording:Z
    .end local v25           #keepSound:Z
    .end local v31           #resolution:Lcom/android/camera/Resolution;
    :catch_0
    move-exception v19

    .line 2020
    .local v19, ex:Ljava/lang/Exception;
    :try_start_7
    const-string v2, "CameraThread"

    const-string v5, "startVideoRecordingInternal() - setPreviewDisplay failed, Camera app finished"

    move-object/from16 v0, v19

    invoke-static {v2, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2021
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2022
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 2023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v8, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v5, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2024
    sget-object v2, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    .line 2025
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 2031
    .end local v19           #ex:Ljava/lang/Exception;
    .restart local v23       #isSlowMotion:Z
    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 2035
    .restart local v24       #isStereoRecording:Z
    :cond_16
    const/16 v25, 0x0

    .restart local v25       #keepSound:Z
    goto/16 :goto_3

    .line 2049
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/CameraThread;->setSoundEffect(ZLcom/android/camera/rotate/UIRotation;)V

    .line 2050
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->enableSoundEffect()V

    .line 2051
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecording() - Disable stereo recording"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2062
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_5

    .line 2066
    :cond_19
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2067
    sget-object v2, Lcom/android/camera/io/FileFormat;->Mpeg4:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    goto/16 :goto_6

    .line 2069
    :cond_1a
    sget-object v2, Lcom/android/camera/io/FileFormat;->ThreeGPP:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    goto/16 :goto_6

    .line 2116
    .restart local v3       #dcimPath:Ljava/lang/String;
    .restart local v6       #dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .restart local v7       #fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .restart local v16       #dirCounter:Lcom/android/camera/io/FileCounter;
    .restart local v20       #fileCounter:Lcom/android/camera/io/FileCounter;
    :catch_1
    move-exception v19

    .line 2118
    .local v19, ex:Ljava/lang/Throwable;
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Cannot set video bit rate"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 2129
    .end local v19           #ex:Ljava/lang/Throwable;
    :catch_2
    move-exception v19

    .line 2131
    .restart local v19       #ex:Ljava/lang/Throwable;
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Cannot set maximum video file size"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 2141
    .end local v19           #ex:Ljava/lang/Throwable;
    :catch_3
    move-exception v19

    .line 2143
    .restart local v19       #ex:Ljava/lang/Throwable;
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Cannot set maximum video file size"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 2189
    .end local v19           #ex:Ljava/lang/Throwable;
    .restart local v22       #iValFR:I
    :cond_1b
    if-eqz v23, :cond_1c

    .line 2190
    const/16 v22, 0x78

    goto/16 :goto_a

    .line 2192
    :cond_1c
    const/16 v22, 0x1e

    goto/16 :goto_a

    .line 2198
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Resolution;

    move-object/from16 v31, v2

    goto/16 :goto_b

    .line 2210
    .restart local v31       #resolution:Lcom/android/camera/Resolution;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/Resolution;->isFullHDVideo()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2213
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Set FULL HD recording size is 1920x1080"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x780

    const/16 v5, 0x438

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 2218
    :goto_c
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - setVideoSize: width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    if-nez v23, :cond_22

    .line 2225
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/camera/CameraThread;->getVideoEncoder(Lcom/android/camera/Resolution;)I

    move-result v18

    .line 2226
    .local v18, encoderType:I
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Video encoder : "

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 2236
    .end local v18           #encoderType:I
    :goto_d
    if-eqz v25, :cond_20

    .line 2239
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->IsEqualOrAbove720p()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2240
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support128kBitrate()Z

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_23

    .line 2241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x7d00

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 2242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x1f40

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 2265
    :cond_1f
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_29

    .line 2267
    const-string v2, "CameraThread"

    const-string v4, "AMR_NB"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 2285
    :cond_20
    :goto_f
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 2306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    .line 2309
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 2315
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 2317
    const-string v2, "CameraThread"

    const-string v5, "startVideoRecordingInternal() - Preview surface is unavailable"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2319
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 2320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v8, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v5, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2321
    sget-object v2, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    .line 2322
    monitor-exit v4

    goto/16 :goto_0

    .line 2346
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 2358
    :catch_4
    move-exception v19

    .line 2359
    .local v19, ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - recorder start failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v5}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2361
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 2362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2363
    sget-object v2, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 2216
    .end local v19           #ex:Ljava/lang/Exception;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v4

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto/16 :goto_c

    .line 2231
    :cond_22
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Video encoder : "

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto/16 :goto_d

    .line 2244
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0x1f400

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 2245
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xbb80

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 2249
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/HTCCamera;->setBackgroundDataSetting(Z)V

    goto/16 :goto_e

    .line 2248
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xac44

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto :goto_10

    .line 2253
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2255
    sget-object v2, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    sget-object v2, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2256
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0x17700

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 2259
    :goto_11
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xbb80

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_e

    .line 2258
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xfa00

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_11

    .line 2262
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xac44

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_e

    .line 2270
    :cond_29
    const-string v2, "CameraThread"

    const-string v4, "AAC"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    if-eqz v24, :cond_2a

    .line 2274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 2280
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto/16 :goto_f

    .line 2278
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    goto :goto_12

    .line 2286
    :catch_5
    move-exception v19

    .line 2287
    .restart local v19       #ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - recorder prepare failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v5}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 2289
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2290
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 2291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2292
    sget-object v2, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 2327
    .end local v19           #ex:Ljava/lang/Exception;
    :cond_2b
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v2, :cond_2d

    .line 2328
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v9, "Start recording"

    const-wide/16 v10, 0x1388

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mMediaRecorderTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v33

    .line 2335
    .local v33, timerHandle:Lcom/android/camera/Handle;
    :goto_13
    :try_start_d
    const-string v2, "CameraThread"

    const-string v5, "startVideoRecordingInternal() - MediaRecorder.start() - Start"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/camera/CameraThread;->mRecordingStartTime:J

    .line 2337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 2338
    const-string v2, "CameraThread"

    const-string v5, "startVideoRecordingInternal() - MediaRecorder.start() - End"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 2343
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v2, :cond_2c

    .line 2344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 2346
    :cond_2c
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2349
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2353
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v4, "[record_video]complete"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureStartedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 2367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    const-string v4, "counter_video"

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2374
    :try_start_10
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Lock semaphore"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_6

    .line 2381
    :goto_14
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - end"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2330
    .end local v33           #timerHandle:Lcom/android/camera/Handle;
    :cond_2d
    const/16 v33, 0x0

    .restart local v33       #timerHandle:Lcom/android/camera/Handle;
    goto/16 :goto_13

    .line 2343
    :catchall_2
    move-exception v2

    :try_start_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v5, :cond_2e

    .line 2344
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_2e
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2376
    :catch_6
    move-exception v17

    .line 2377
    .local v17, e:Ljava/lang/InterruptedException;
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Fail to lock semaphore"

    move-object/from16 v0, v17

    invoke-static {v2, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method private stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V
    .locals 22
    .parameter "handle"
    .parameter "playShutterSound"
    .parameter "isClosingCamera"

    .prologue
    .line 1596
    if-nez p1, :cond_1

    .line 1598
    const-string v2, "CameraThread"

    const-string v3, "stopVideoRecordingInternal() - Null handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1601
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_3

    .line 1603
    const-string v3, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecordingInternal() - Invalid handle, current handle : \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v2, v2, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "null"

    goto :goto_1

    .line 1608
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v16

    .line 1609
    .local v16, isStarted:Z
    if-nez v16, :cond_4

    .line 1611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1613
    const-string v2, "CameraThread"

    const-string v3, "stopVideoRecordingInternal() - stop video recording before recording started"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x273d

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread$MainHandler;->removeMessages(I)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1624
    :cond_4
    const-string v2, "CameraThread"

    const-string v3, "stopVideoRecordingInternal() - Handle : \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v5, "\'"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1627
    if-eqz v16, :cond_6

    .line 1628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/CameraThread;->mRecordingStartTime:J

    sub-long v12, v2, v4

    .line 1629
    .local v12, duration:J
    const-wide/16 v2, 0x4b0

    cmp-long v2, v12, v2

    if-gez v2, :cond_6

    .line 1631
    const-wide/16 v2, 0x4b0

    sub-long v10, v2, v12

    .line 1632
    .local v10, delayMillis:J
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecordingInternal() - Recording duration is too short, stop recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms later"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x273e

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 1634
    .local v18, msg:Landroid/os/Message;
    if-nez p3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v10, v11}, Lcom/android/camera/CameraThread$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1636
    :cond_5
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->recycle()V

    .line 1639
    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 1650
    .end local v10           #delayMillis:J
    .end local v12           #duration:J
    .end local v18           #msg:Landroid/os/Message;
    :cond_6
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2726

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1659
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 1662
    .local v17, keepSound:Z
    if-eqz v17, :cond_7

    .line 1664
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->disableSoundEffect()V

    .line 1668
    .end local v17           #keepSound:Z
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    .line 1669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_8

    .line 1673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v2, :cond_12

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v3, "Stop recording"

    const-wide/32 v4, 0xea60

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraThread;->mMediaRecorderTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v21

    .line 1680
    .local v21, timerHandle:Lcom/android/camera/Handle;
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v2, :cond_8

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 1694
    .end local v21           #timerHandle:Lcom/android/camera/Handle;
    :cond_8
    :goto_4
    if-eqz v16, :cond_9

    .line 1697
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V

    .line 1698
    const-string v2, "CameraThread"

    const-string v3, "stop video recording : reconnect camera device"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1704
    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->stopPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1710
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 1713
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 1716
    if-eqz v16, :cond_b

    .line 1722
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v2}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v3, v3, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v20

    .line 1729
    .local v20, thumb:Landroid/graphics/Bitmap;
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/imaging/ThumbnailEventArgs;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v5, v0}, Lcom/android/camera/imaging/ThumbnailEventArgs;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1730
    if-eqz v20, :cond_a

    .line 1732
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 1733
    const/16 v20, 0x0

    .line 1737
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    if-eqz v2, :cond_14

    .line 1739
    new-instance v19, Lcom/android/camera/io/SaveVideoTask;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/io/SaveVideoTask;-><init>(Lcom/android/camera/CameraThread;)V

    .line 1740
    .local v19, saveTask:Lcom/android/camera/io/SaveVideoTask;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/camera/io/SaveVideoTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    .line 1741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/camera/io/SaveVideoTask;->filePath:Lcom/android/camera/io/DCFPath;

    .line 1742
    sget-object v2, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/camera/io/SaveVideoTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    .line 1743
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    move-object/from16 v0, v19

    iput-wide v2, v0, Lcom/android/camera/io/SaveVideoTask;->duration:J

    .line 1744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/camera/io/SaveVideoTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    .line 1745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/camera/io/SaveVideoTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    .line 1746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/camera/io/IMediaFileWriter;->saveMedia(Lcom/android/camera/io/SaveMediaTask;)Lcom/android/camera/Handle;

    move-result-object v2

    if-nez v2, :cond_b

    .line 1747
    const-string v2, "CameraThread"

    const-string v3, "stopVideoRecordingInternal() - Cannot save video information"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    .end local v19           #saveTask:Lcom/android/camera/io/SaveVideoTask;
    .end local v20           #thumb:Landroid/graphics/Bitmap;
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v5, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v5}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    :goto_9
    invoke-virtual {v3, v4, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureStoppedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1759
    if-eqz v16, :cond_c

    .line 1761
    const-string v2, "CameraThread"

    const-string v3, "stopVideoRecordingInternal() - Unlock semaphore"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1766
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_d

    .line 1767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v3, "CAMCORDER_MODE=OFF"

    invoke-interface {v2, v3}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 1771
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    if-nez v16, :cond_16

    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1774
    if-eqz p2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_f

    .line 1776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;

    if-nez v2, :cond_e

    .line 1777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v3, 0x7f06000a

    invoke-interface {v2, v3}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;

    .line 1778
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    .line 1782
    :cond_f
    const/4 v15, 0x0

    .line 1783
    .local v15, exitThread:Z
    const/4 v9, 0x0

    .line 1784
    .local v9, closeCamera:Z
    monitor-enter p0

    .line 1786
    :try_start_5
    sget-object v3, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$TakingPictureState:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1803
    :cond_10
    :goto_b
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1804
    if-eqz v15, :cond_18

    .line 1805
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->exit()V

    goto/16 :goto_0

    .line 1619
    .end local v9           #closeCamera:Z
    .end local v15           #exitThread:Z
    :cond_11
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecordingInternal() - Invalid state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1676
    :cond_12
    const/16 v21, 0x0

    .restart local v21       #timerHandle:Lcom/android/camera/Handle;
    goto/16 :goto_3

    .line 1681
    :catch_0
    move-exception v14

    .line 1682
    .local v14, ex:Ljava/lang/RuntimeException;
    :try_start_6
    const-string v2, "CameraThread"

    const-string v3, "mRecorder.stop() - Runtime exception caught"

    invoke-static {v2, v3, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v2, :cond_8

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    goto/16 :goto_4

    .line 1686
    .end local v14           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v3, :cond_13

    .line 1687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_13
    throw v2

    .line 1699
    .end local v21           #timerHandle:Lcom/android/camera/Handle;
    :catch_1
    move-exception v14

    .line 1700
    .local v14, ex:Ljava/io/IOException;
    const-string v2, "CameraThread"

    const-string v3, "camera reconnect exception."

    invoke-static {v2, v3, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1705
    .end local v14           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v14

    .line 1706
    .local v14, ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop preview exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1724
    .end local v14           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 1726
    .local v14, ex:Ljava/lang/Throwable;
    const/16 v20, 0x0

    .line 1727
    .restart local v20       #thumb:Landroid/graphics/Bitmap;
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create video thumbnail for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v4}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1750
    .end local v14           #ex:Ljava/lang/Throwable;
    :cond_14
    const-string v2, "CameraThread"

    const-string v3, "stopVideoRecordingInternal() - No IMediaFileWriter interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1754
    .end local v20           #thumb:Landroid/graphics/Bitmap;
    :cond_15
    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    goto/16 :goto_9

    .line 1771
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 1790
    .restart local v9       #closeCamera:Z
    .restart local v15       #exitThread:Z
    :pswitch_0
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    if-eqz v2, :cond_17

    .line 1792
    const/4 v15, 0x1

    .line 1793
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    .line 1794
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    goto/16 :goto_b

    .line 1803
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 1796
    :cond_17
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    if-eqz v2, :cond_10

    .line 1798
    const/4 v9, 0x1

    .line 1799
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_b

    .line 1806
    :cond_18
    if-eqz v9, :cond_0

    .line 1807
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto/16 :goto_0

    .line 1641
    .end local v9           #closeCamera:Z
    .end local v15           #exitThread:Z
    .restart local v10       #delayMillis:J
    .restart local v12       #duration:J
    .restart local v18       #msg:Landroid/os/Message;
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .line 1786
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private takePicture()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 475
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "JPEG call-back"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    .line 483
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsShutterCallbackReceived:Z

    .line 489
    sget-object v0, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    .line 490
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    :goto_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_2
    return-void

    .line 478
    :cond_0
    iput-object v6, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    goto :goto_0

    :cond_1
    move-object v0, v6

    .line 490
    goto :goto_1

    .line 501
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsShutterCallbackReceived:Z

    .line 504
    sget-object v0, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    .line 505
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 508
    :catch_0
    move-exception v7

    .line 510
    .local v7, ex:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_3

    .line 512
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 513
    iput-object v6, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    .line 515
    :cond_3
    throw v7
.end method

.method private takePictureInternal(Lcom/android/camera/CaptureHandle;ZZ)V
    .locals 15
    .parameter "handle"
    .parameter "checkStorage"
    .parameter "isFocusLocked"

    .prologue
    .line 4683
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePictureInternal(checkStorage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFocusLocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - Start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4684
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Handle : \'"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v4, "\' ["

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "]"

    invoke-static/range {v1 .. v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4687
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 4689
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Camera is closed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4690
    sget-object v1, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    .line 4934
    :goto_0
    return-void

    .line 4693
    :cond_0
    if-nez p3, :cond_1

    .line 4695
    iget-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4697
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePictureInternal() - Current taking picture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4698
    sget-object v1, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_0

    .line 4704
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4706
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePictureInternal() - Current taking picture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4707
    sget-object v1, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_0

    .line 4713
    :cond_2
    if-eqz p2, :cond_3

    .line 4715
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Check storage"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4716
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkCanTakePicture()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4718
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - No available storage space"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4719
    sget-object v1, Lcom/android/camera/CaptureFailedReason;->StorageError:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_0

    .line 4725
    :cond_3
    if-nez p3, :cond_4

    .line 4727
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkInternalDataSpace()V

    .line 4728
    iget-object v1, p0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4730
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Low internal data space"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4731
    sget-object v1, Lcom/android/camera/CaptureFailedReason;->LowInternalDataSpace:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 4737
    :cond_4
    if-nez p3, :cond_5

    .line 4739
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkMediaQueueState()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4741
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Image queue is full"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4742
    sget-object v1, Lcom/android/camera/CaptureFailedReason;->ImageQueueIsFull:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 4748
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v1, :cond_6

    .line 4749
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v2, 0x7f060004

    invoke-interface {v1, v2}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    .line 4752
    :cond_6
    sget-object v2, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v1, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4767
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePictureInternal() - Current recording state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4768
    sget-object v1, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 4758
    :pswitch_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4760
    :cond_7
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Video snapshot is not supported"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4761
    sget-object v1, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 4764
    :cond_8
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Taking picture during video recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4774
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b

    .line 4776
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Start preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4777
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->startPreviewSilently()Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    if-ne v1, v2, :cond_a

    .line 4779
    iget-object v1, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4780
    const/4 v14, 0x1

    .line 4793
    .local v14, startPreviewDirectly:Z
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 4794
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 4795
    iget-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4796
    iget-object v1, p0, Lcom/android/camera/CameraThread;->captureStartingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4799
    :cond_9
    if-nez p3, :cond_d

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4801
    iget-boolean v1, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    if-nez v1, :cond_d

    if-nez v14, :cond_d

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    if-eqz v1, :cond_d

    .line 4803
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Auto-focusing before taking picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4804
    iget-object v1, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    if-eqz v1, :cond_c

    .line 4805
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/IAutoFocusController;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;)Lcom/android/camera/Handle;

    goto/16 :goto_0

    .line 4784
    .end local v14           #startPreviewDirectly:Z
    :cond_a
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Cannot start preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4785
    sget-object v1, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 4790
    :cond_b
    const/4 v14, 0x0

    .restart local v14       #startPreviewDirectly:Z
    goto :goto_1

    .line 4807
    :cond_c
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/IAutoFocusController;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;)Lcom/android/camera/Handle;

    goto/16 :goto_0

    .line 4813
    :cond_d
    iget-object v1, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4816
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController;->setJpegQuality(I)V

    .line 4819
    iget-object v1, p0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    iget v13, v1, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    .line 4820
    .local v13, orientation:I
    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4822
    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4823
    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    iget v1, v1, Lcom/android/camera/CameraType;->orientation:I

    sub-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v13, v1, 0x168

    .line 4832
    :goto_2
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePictureInternal() - Set rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4833
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1, v13}, Lcom/android/camera/CameraController;->setRotation(I)V

    .line 4836
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLocationManager:Lcom/android/camera/location/ILocationManager;

    if-eqz v1, :cond_14

    .line 4838
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLocationManager:Lcom/android/camera/location/ILocationManager;

    iget-object v1, v1, Lcom/android/camera/location/ILocationManager;->location:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    .line 4839
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController;->setLocation(Landroid/location/Location;)V

    .line 4848
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->isAddTimeStamp()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4849
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "img-timestamp"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4857
    :goto_4
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isAutoEnhanceEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v1

    if-nez v1, :cond_16

    .line 4859
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "postproc-enable-imboost"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4860
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "postproc-enable-denoise"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4870
    :goto_5
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "exif-datetime"

    sget-object v3, Lcom/android/camera/CameraThread;->mExifDateTimeFormat:Ljava/text/DateFormat;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/CaptureHandle;->captureTime:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4873
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "review_duration"

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "on"

    :goto_6
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4876
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSaveMirrorImage()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4877
    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isSaveMirrorImageEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v12, 0x1

    .line 4878
    .local v12, isSaveMirrorImage:Z
    :goto_7
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "save_mirror"

    if-eqz v12, :cond_19

    const-string v1, "true"

    :goto_8
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4882
    .end local v12           #isSaveMirrorImage:Z
    :cond_e
    iget-object v1, p0, Lcom/android/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4884
    new-instance v8, Lcom/android/camera/CameraParamsSetupEventArgs;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v1, v2}, Lcom/android/camera/CameraParamsSetupEventArgs;-><init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    .line 4885
    .local v8, e:Lcom/android/camera/CameraParamsSetupEventArgs;
    iget-object v1, p0, Lcom/android/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v8}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4889
    .end local v8           #e:Lcom/android/camera/CameraParamsSetupEventArgs;
    :cond_f
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 4892
    iget-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4896
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/android/camera/IPhotoCaptureHandler;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponents(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 4897
    .local v7, captureHandlers:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/IPhotoCaptureHandler;>;"
    const/4 v11, 0x0

    .line 4898
    .local v11, isCaptureHandled:Z
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    .local v10, i:I
    :goto_9
    if-ltz v10, :cond_10

    .line 4900
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IPhotoCaptureHandler;

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

    .line 4901
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v2, v3}, Lcom/android/camera/IPhotoCaptureHandler;->takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4903
    const-string v2, "CameraThread"

    const-string v3, "takePictureInternal() - Taking picture process is handled by \'"

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

    check-cast v1, Lcom/android/camera/component/Component;

    invoke-virtual {v1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\'"

    invoke-static {v2, v3, v1, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4904
    const/4 v11, 0x1

    .line 4908
    :cond_10
    if-nez v11, :cond_11

    .line 4910
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Use default taking picture process"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4911
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

    .line 4912
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->takePicture()V

    .line 4916
    :cond_11
    iget-object v1, p0, Lcom/android/camera/CameraThread;->captureStartedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4933
    .end local v7           #captureHandlers:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/IPhotoCaptureHandler;>;"
    .end local v10           #i:I
    .end local v11           #isCaptureHandled:Z
    :goto_a
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - End"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4825
    :cond_12
    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    iget v1, v1, Lcom/android/camera/CameraType;->orientation:I

    add-int/2addr v1, v13

    rem-int/lit16 v13, v1, 0x168

    goto/16 :goto_2

    .line 4829
    :cond_13
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Set rotation landscape while 3D photo mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4830
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 4843
    :cond_14
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    .line 4844
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - No ILocationManager interface to get current location"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4852
    :cond_15
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "img-timestamp"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4864
    :cond_16
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "postproc-enable-imboost"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4865
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "postproc-enable-denoise"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4873
    :cond_17
    const-string v1, "off"

    goto/16 :goto_6

    .line 4877
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 4878
    .restart local v12       #isSaveMirrorImage:Z
    :cond_19
    const-string v1, "false"

    goto/16 :goto_8

    .line 4898
    .end local v12           #isSaveMirrorImage:Z
    .restart local v7       #captureHandlers:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/IPhotoCaptureHandler;>;"
    .restart local v10       #i:I
    .restart local v11       #isCaptureHandled:Z
    :cond_1a
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_9

    .line 4918
    .end local v7           #captureHandlers:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/IPhotoCaptureHandler;>;"
    .end local v10           #i:I
    .end local v11           #isCaptureHandled:Z
    :catch_0
    move-exception v9

    .line 4920
    .local v9, ex:Ljava/lang/Throwable;
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Cannot take picture"

    invoke-static {v1, v2, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4923
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 4924
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

    .line 4925
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 4926
    iget-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4929
    sget-object v1, Lcom/android/camera/CaptureFailedReason;->Unknown:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_a

    .line 4752
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final threadAccessCheck()V
    .locals 2

    .prologue
    .line 3926
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3927
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3928
    :cond_0
    return-void
.end method

.method private toggleStorageSlot()V
    .locals 4

    .prologue
    .line 3245
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3247
    sget-object v1, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3249
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleStorageSlot() - Change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3250
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3272
    :goto_0
    return-void

    .line 3254
    :cond_0
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleStorageSlot() - No storage card slot, change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3260
    :cond_1
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    .line 3261
    .local v0, slot:Lcom/android/camera/io/StorageSlot;
    if-eqz v0, :cond_2

    .line 3263
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleStorageSlot() - Change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3264
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3268
    :cond_2
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleStorageSlot() - No internal memory slot, change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public IsEqualOrAbove720p()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2654
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v3, v4, :cond_1

    .line 2666
    :cond_0
    :goto_0
    return v1

    .line 2657
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v3, v3, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Resolution;

    .line 2658
    .local v0, r:Lcom/android/camera/Resolution;
    if-eqz v0, :cond_0

    .line 2661
    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 2662
    goto :goto_0

    .line 2663
    :cond_3
    sget-object v3, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/camera/Resolution;->Video_1080p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 2664
    goto :goto_0
.end method

.method public final bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<*>;",
            "Lcom/android/camera/property/Property",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4328
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<*>;"
    .local p2, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<*>;"
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4331
    if-nez p1, :cond_0

    .line 4333
    const-string v0, "source"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4336
    :cond_0
    if-nez p2, :cond_1

    .line 4338
    const-string v0, "target"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4341
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4343
    const-string v0, "CameraThread"

    const-string v1, "bindProperty() - Cannot bind from CameraThread\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4346
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4348
    const-string v0, "CameraThread"

    const-string v1, "bindProperty() - Can only bind to CameraThread\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4353
    :cond_3
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bind ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4354
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 4355
    return-void
.end method

.method public calculatePicturesRemaining()J
    .locals 2

    .prologue
    .line 3018
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public calculatePicturesRemaining(J)J
    .locals 14
    .parameter "pendingFileSize"

    .prologue
    .line 3021
    const-string v10, "CameraThread"

    const-string v11, "calculatePicturesRemaining() - start"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    const-wide/16 v3, 0x0

    .line 3025
    .local v3, freeshot:J
    :try_start_0
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v10, v10, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/Resolution;

    .line 3027
    .local v7, resolution:Lcom/android/camera/Resolution;
    if-eqz v7, :cond_2

    .line 3028
    invoke-static {}, Lcom/android/camera/ResolutionSize;->getInstance()Lcom/android/camera/ResolutionSize;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getNameResId()I

    move-result v11

    iget-object v12, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/ResolutionSize;->getSize(ILjava/lang/String;)I

    move-result v10

    int-to-long v1, v10

    .line 3034
    .local v1, fSize:J
    :goto_0
    const-wide/16 v10, -0x1

    cmp-long v10, v10, v1

    if-nez v10, :cond_0

    .line 3035
    const-string v10, "CameraThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getResolutionSize fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    const-wide/32 v1, 0x61a80

    .line 3040
    :cond_0
    iget-object v10, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v10}, Lcom/android/camera/io/StorageSlot;->getFreeSpace()J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    sub-long/2addr v10, v12

    sub-long v8, v10, p1

    .line 3042
    .local v8, space:J
    div-long v5, v8, v1

    .line 3043
    .local v5, remaining:J
    move-wide v3, v5

    .line 3045
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-gez v10, :cond_1

    .line 3046
    const-wide/16 v3, 0x0

    .line 3048
    :cond_1
    const-string v10, "CameraThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "return freeshot = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3056
    .end local v1           #fSize:J
    .end local v5           #remaining:J
    .end local v7           #resolution:Lcom/android/camera/Resolution;
    .end local v8           #space:J
    :goto_1
    const-string v10, "CameraThread"

    const-string v11, "calculatePicturesRemaining() - end"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    return-wide v3

    .line 3031
    .restart local v7       #resolution:Lcom/android/camera/Resolution;
    :cond_2
    :try_start_1
    const-string v10, "CameraThread"

    const-string v11, "calculatePicturesRemaining() - No photo resolution"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3032
    const-wide/16 v1, -0x1

    .restart local v1       #fSize:J
    goto/16 :goto_0

    .line 3050
    .end local v1           #fSize:J
    .end local v7           #resolution:Lcom/android/camera/Resolution;
    :catch_0
    move-exception v0

    .line 3051
    .local v0, ex:Ljava/lang/Exception;
    const-string v10, "CameraThread"

    const-string v11, "catch - calculatePicturesRemaining with exception: "

    invoke-static {v10, v11, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3052
    const-string v10, "CameraThread"

    const-string v11, "return freeshot = -1"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    const-wide/16 v3, -0x1

    goto :goto_1
.end method

.method public final cancelClosingCamera()V
    .locals 2

    .prologue
    .line 3409
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2713

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 3410
    monitor-enter p0

    .line 3412
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    .line 3413
    monitor-exit p0

    .line 3414
    return-void

    .line 3413
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final cancelOpeningCamera()V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 879
    return-void
.end method

.method public final cancelStartingPreview()V
    .locals 2

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1452
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2712

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1453
    return-void
.end method

.method public cancelTakingPicture()V
    .locals 2

    .prologue
    .line 4940
    const-string v0, "CameraThread"

    const-string v1, "cancelTakingPicture() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4943
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4945
    new-instance v0, Lcom/android/camera/CameraThread$26;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$26;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4958
    :goto_0
    const-string v0, "CameraThread"

    const-string v1, "cancelTakingPicture() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4959
    return-void

    .line 4955
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->cancelTakingPictureInternal()V

    goto :goto_0
.end method

.method public changeMode(Lcom/android/camera/CameraMode;)Lcom/android/camera/Handle;
    .locals 4
    .parameter "mode"

    .prologue
    .line 4253
    const-string v1, "CameraThread"

    const-string v2, "changeMode("

    const-string v3, ") - start"

    invoke-static {v1, v2, p1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4256
    new-instance v0, Lcom/android/camera/CameraThread$ModeChangeHandle;

    invoke-direct {v0, p1}, Lcom/android/camera/CameraThread$ModeChangeHandle;-><init>(Lcom/android/camera/CameraMode;)V

    .line 4257
    .local v0, handle:Lcom/android/camera/CameraThread$ModeChangeHandle;
    const-string v1, "CameraThread"

    const-string v2, "changeMode() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4260
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 4262
    new-instance v1, Lcom/android/camera/CameraThread$19;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraThread$19;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$ModeChangeHandle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4272
    :goto_0
    return-object v0

    .line 4271
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraThread$ModeChangeHandle;)V

    goto :goto_0
.end method

.method public changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V
    .locals 2
    .parameter "slot"

    .prologue
    .line 4145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 4147
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_0

    .line 4149
    new-instance v0, Lcom/android/camera/CameraThread$18;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$18;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageSlot;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4162
    :goto_0
    return-void

    .line 4158
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlot() - no camera handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4161
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeStorageSlotInternal(Lcom/android/camera/io/StorageSlot;)V

    goto :goto_0
.end method

.method public final changeZoom(I)V
    .locals 7
    .parameter "zoom"

    .prologue
    const/16 v6, 0x2756

    .line 3738
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v3, p0, :cond_8

    .line 3740
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeZoom("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - start sync"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3743
    iget-object v3, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3744
    .local v2, oldZoom:I
    if-ne v2, p1, :cond_0

    .line 3834
    .end local v2           #oldZoom:I
    :goto_0
    return-void

    .line 3746
    .restart local v2       #oldZoom:I
    :cond_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v3, :cond_1

    .line 3748
    iget-object v3, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3754
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3756
    move v0, v2

    .line 3757
    .local v0, currentZoom:I
    if-ge v2, p1, :cond_5

    .line 3761
    :cond_2
    add-int/lit8 v3, v0, 0x2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3762
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3, v0}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 3764
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v4, v0}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->setPinchZoom(Landroid/hardware/Camera;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3768
    :goto_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v3, v6}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3770
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending zooming request found, stop zooming at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3820
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3822
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeZoom("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - end sync"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3765
    :catch_0
    move-exception v1

    .line 3766
    .local v1, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_1

    .line 3773
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 3774
    if-lt v0, p1, :cond_2

    goto :goto_2

    .line 3780
    :cond_5
    add-int/lit8 v3, v0, -0x2

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3781
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3, v0}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 3783
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v4, v0}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->setPinchZoom(Landroid/hardware/Camera;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3787
    :goto_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v3, v6}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3789
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending zooming request found, stop zooming at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3784
    :catch_1
    move-exception v1

    .line 3785
    .restart local v1       #ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_3

    .line 3792
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 3793
    if-gt v0, p1, :cond_5

    goto :goto_2

    .line 3798
    .end local v0           #currentZoom:I
    :cond_7
    move v0, p1

    .line 3800
    .restart local v0       #currentZoom:I
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3, v0}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 3802
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v4, v0}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->setPinchZoom(Landroid/hardware/Camera;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 3808
    :goto_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3812
    const-wide/16 v3, 0x64

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 3814
    :catch_2
    move-exception v3

    goto/16 :goto_2

    .line 3803
    :catch_3
    move-exception v1

    .line 3804
    .restart local v1       #ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_4

    .line 3824
    .end local v0           #currentZoom:I
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #oldZoom:I
    :cond_8
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_9

    .line 3826
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeZoom("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - start async"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3828
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v6, p1, v4, v5}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 3830
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeZoom("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - end async"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3833
    :cond_9
    const-string v3, "CameraThread"

    const-string v4, "Cannot change zoom because there is no handler"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final checkStorageState()V
    .locals 1

    .prologue
    .line 3111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    .line 3112
    return-void
.end method

.method public final checkStorageState(Z)V
    .locals 3
    .parameter "checkSize"

    .prologue
    .line 3115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3117
    new-instance v0, Lcom/android/camera/CameraThread$14;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$14;-><init>(Lcom/android/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 3127
    :goto_0
    return-void

    .line 3126
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    goto :goto_0
.end method

.method public final closeCamera()V
    .locals 13

    .prologue
    const/16 v2, 0x273d

    const/4 v12, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 3280
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3282
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Close camera asynchronuously"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2713

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 3405
    :goto_0
    return-void

    .line 3287
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3290
    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3292
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Cancel video recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3293
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 3294
    .local v9, handle:Lcom/android/camera/CaptureHandle;
    iput-object v11, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 3295
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread$MainHandler;->removeMessages(I)V

    .line 3296
    sget-object v0, Lcom/android/camera/CaptureFailedReason;->Unknown:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {p0, v9, v0}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    .line 3297
    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3301
    .end local v9           #handle:Lcom/android/camera/CaptureHandle;
    :cond_1
    monitor-enter p0

    .line 3303
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    if-eqz v0, :cond_2

    .line 3305
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Camera close is still pending, close camera later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    monitor-exit p0

    goto :goto_0

    .line 3327
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3308
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3323
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeCamera() - Taking picture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", close camera later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    .line 3325
    monitor-exit p0

    goto/16 :goto_0

    .line 3315
    :pswitch_0
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Cancel taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 3317
    .restart local v9       #handle:Lcom/android/camera/CaptureHandle;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 3318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 3319
    sget-object v0, Lcom/android/camera/CaptureFailedReason;->Unknown:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {p0, v9, v0}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    .line 3327
    .end local v9           #handle:Lcom/android/camera/CaptureHandle;
    :pswitch_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3330
    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_3

    .line 3331
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v0, v12, v3}, Lcom/android/camera/CameraThread;->stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    .line 3334
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    .line 3337
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->resetJpegData()V

    .line 3340
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_7

    .line 3341
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 3344
    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3345
    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3348
    iget-object v0, p0, Lcom/android/camera/CameraThread;->cameraClosingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3350
    const-string v0, "CameraThread"

    const-string v1, "before release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3353
    new-instance v7, Lcom/android/camera/CloseCameraRequestEventArgs;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v7, v0}, Lcom/android/camera/CloseCameraRequestEventArgs;-><init>(Landroid/hardware/Camera;)V

    .line 3356
    .local v7, e:Lcom/android/camera/CloseCameraRequestEventArgs;
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->requestCloseCameraEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, p0, v7}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 3364
    :goto_1
    invoke-virtual {v7}, Lcom/android/camera/CloseCameraRequestEventArgs;->isHandled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3368
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_5

    .line 3369
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "Close camera"

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDriverTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v10

    .line 3376
    .local v10, timerHandle:Lcom/android/camera/Handle;
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3380
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_4

    .line 3381
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v0, v10}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 3385
    .end local v10           #timerHandle:Lcom/android/camera/Handle;
    :cond_4
    const-string v0, "CameraThread"

    const-string v1, "after release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    iput-object v11, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 3387
    iput-object v11, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    .line 3388
    iput-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    .line 3391
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    .line 3392
    iput-object v11, p0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    .line 3395
    iget-object v0, p0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3397
    const-string v0, "CameraThread"

    const-string v1, "Release Camera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    .end local v7           #e:Lcom/android/camera/CloseCameraRequestEventArgs;
    :goto_3
    iput-boolean v12, p0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    .line 3404
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3358
    .restart local v7       #e:Lcom/android/camera/CloseCameraRequestEventArgs;
    :catch_0
    move-exception v8

    .line 3360
    .local v8, ex:Ljava/lang/Throwable;
    const-string v0, "CameraThread"

    const-string v1, "Exception was occurred while requesting close camera"

    invoke-static {v0, v1, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3371
    .end local v8           #ex:Ljava/lang/Throwable;
    :cond_5
    const/4 v10, 0x0

    .restart local v10       #timerHandle:Lcom/android/camera/Handle;
    goto :goto_2

    .line 3380
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v1, :cond_6

    .line 3381
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v1, v10}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_6
    throw v0

    .line 3399
    .end local v7           #e:Lcom/android/camera/CloseCameraRequestEventArgs;
    .end local v10           #timerHandle:Lcom/android/camera/Handle;
    :cond_7
    const-string v0, "CameraThread"

    const-string v1, "mCameraDevice == null in close_camera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createPostViewImage([B)V
    .locals 10
    .parameter "postviewData"

    .prologue
    .line 3949
    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 4002
    :cond_0
    :goto_0
    return-void

    .line 3953
    :cond_1
    if-nez p1, :cond_2

    .line 3955
    const-string v7, "CameraThread"

    const-string v8, "!!!!!!!! postviewData == null !!!!!!!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3959
    :cond_2
    const-string v7, "CameraThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "postviewData != null, postviewData.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3961
    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 3962
    .local v4, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz v4, :cond_0

    .line 3965
    const-string v7, "postview-size"

    invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3969
    .local v5, str:Ljava/lang/String;
    const/16 v7, 0x78

    :try_start_0
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 3970
    .local v2, nIndex:I
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 3971
    .local v6, strTmp:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3972
    .local v3, nWidth:I
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 3973
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4000
    .local v1, nHeight:I
    iget-object v7, p0, Lcom/android/camera/CameraThread;->postviewImageRetrievedEvent:Lcom/android/camera/event/Event;

    new-instance v8, Lcom/android/camera/imaging/RawImageEventArgs;

    sget-object v9, Lcom/android/camera/imaging/PixelFormat;->Yvu420Sp:Lcom/android/camera/imaging/PixelFormat;

    invoke-direct {v8, p1, v9, v3, v1}, Lcom/android/camera/imaging/RawImageEventArgs;-><init>([BLcom/android/camera/imaging/PixelFormat;II)V

    invoke-virtual {v7, p0, v8}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    .line 3975
    .end local v1           #nHeight:I
    .end local v2           #nIndex:I
    .end local v3           #nWidth:I
    .end local v6           #strTmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3977
    .local v0, ex:Ljava/lang/Throwable;
    const-string v7, "CameraThread"

    const-string v8, "createPostViewImage() - Cannot get post-view image size"

    invoke-static {v7, v8, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final deleteLatestMedia()V
    .locals 6

    .prologue
    .line 3841
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v4, p0, :cond_1

    .line 3843
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - start sync"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3846
    iget-object v4, p0, Lcom/android/camera/CameraThread;->deletingLatestMediaEvent:Lcom/android/camera/event/Event;

    sget-object v5, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v4, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3849
    new-instance v2, Lcom/android/camera/event/SingleHandlerEventArgs;

    invoke-direct {v2}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    .line 3850
    .local v2, e:Lcom/android/camera/event/SingleHandlerEventArgs;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v4, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3853
    invoke-virtual {v2}, Lcom/android/camera/event/SingleHandlerEventArgs;->isHandled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3855
    const-string v4, "CameraThread"

    const-string v5, "Use default method to delete latest media"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3857
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 3858
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v4, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 3859
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v3, Lcom/android/camera/CameraThread$15;

    const-string v4, "Default media deletion thread"

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/android/camera/CameraThread$15;-><init>(Lcom/android/camera/CameraThread;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    .line 3889
    .local v3, workerThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3892
    sget-object v5, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraMode;

    invoke-virtual {v4}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 3903
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #workerThread:Ljava/lang/Thread;
    :cond_0
    :goto_0
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - end sync"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3919
    .end local v2           #e:Lcom/android/camera/event/SingleHandlerEventArgs;
    :goto_1
    return-void

    .line 3895
    .restart local v0       #contentUri:Landroid/net/Uri;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #e:Lcom/android/camera/event/SingleHandlerEventArgs;
    .restart local v3       #workerThread:Ljava/lang/Thread;
    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    sget-object v5, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    invoke-static {v4, v5}, Lcom/android/camera/io/DCFUtility;->restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V

    goto :goto_0

    .line 3898
    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    sget-object v5, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {v4, v5}, Lcom/android/camera/io/DCFUtility;->restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V

    goto :goto_0

    .line 3905
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #e:Lcom/android/camera/event/SingleHandlerEventArgs;
    .end local v3           #workerThread:Ljava/lang/Thread;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v4, :cond_2

    .line 3907
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - start async"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3908
    new-instance v4, Lcom/android/camera/CameraThread$16;

    invoke-direct {v4, p0}, Lcom/android/camera/CameraThread$16;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 3915
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - end async"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3918
    :cond_2
    const-string v4, "CameraThread"

    const-string v5, "Cannot delete media because there is no handler"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3892
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final disablePreviewCallback()V
    .locals 3

    .prologue
    .line 4129
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4132
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    .line 4133
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disablePreviewCallback() - counter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4136
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4137
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    .line 4138
    :cond_0
    return-void
.end method

.method public final disableSoundEffect()V
    .locals 2

    .prologue
    .line 4484
    const-string v0, "CameraThread"

    const-string v1, "disableSoundEffect()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4485
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4486
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 4487
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v1, "active_ap=Camcorder;sound_effect_enable=off"

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 4490
    :goto_0
    return-void

    .line 4489
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "disableSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final enablePreviewCallback()V
    .locals 3

    .prologue
    .line 4110
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4113
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-gtz v0, :cond_1

    .line 4121
    :cond_0
    :goto_0
    return-void

    .line 4115
    :cond_1
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    .line 4116
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePreviewCallback() - counter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4119
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    if-eqz v0, :cond_0

    .line 4120
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setupPreviewCallback()V

    goto :goto_0
.end method

.method public final enableSoundEffect()V
    .locals 2

    .prologue
    .line 4475
    const-string v0, "CameraThread"

    const-string v1, "enableSoundEffect()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4476
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4477
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 4478
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v1, "active_ap=Camcorder;sound_effect_enable=on"

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 4481
    :goto_0
    return-void

    .line 4480
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "enableSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final endTakePicture(Lcom/android/camera/CaptureHandle;)V
    .locals 9
    .parameter "handle"

    .prologue
    const/4 v8, 0x1

    .line 3541
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3544
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 3547
    if-nez p1, :cond_0

    .line 3549
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3627
    :goto_0
    return-void

    .line 3552
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - Handle : \'"

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3553
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq p1, v0, :cond_1

    .line 3555
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endTakePicture() - Invalid handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3560
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3562
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endTakePicture() - Current taking picture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3567
    :cond_2
    iput-boolean v8, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 3568
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3570
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - Take picture during recording, restore IsPreviewing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3571
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3589
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3593
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->stopPreview()V

    .line 3596
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 3597
    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3598
    iget-object v0, p0, Lcom/android/camera/CameraThread;->captureStoppedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3601
    const/4 v7, 0x0

    .line 3602
    .local v7, exitThread:Z
    const/4 v6, 0x0

    .line 3603
    .local v6, closeCamera:Z
    monitor-enter p0

    .line 3605
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    if-eqz v0, :cond_8

    .line 3607
    const/4 v7, 0x1

    .line 3608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    .line 3609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    .line 3616
    :cond_5
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3617
    if-eqz v7, :cond_9

    .line 3618
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->exit()V

    .line 3623
    :cond_6
    :goto_2
    if-nez v7, :cond_7

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPendingModeChangeHandle:Lcom/android/camera/CameraThread$ModeChangeHandle;

    if-eqz v0, :cond_7

    .line 3624
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPendingModeChangeHandle:Lcom/android/camera/CameraThread$ModeChangeHandle;

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraThread$ModeChangeHandle;)V

    .line 3626
    :cond_7
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3611
    :cond_8
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    if-eqz v0, :cond_5

    .line 3613
    const/4 v6, 0x1

    .line 3614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    goto :goto_1

    .line 3616
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3619
    :cond_9
    if-eqz v6, :cond_6

    .line 3620
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto :goto_2
.end method

.method public final exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3422
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 3424
    const-string v1, "CameraThread"

    const-string v2, "exit() - Exit camera thread asynchronously"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v2, 0x2718

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 3479
    :goto_0
    return-void

    .line 3429
    :cond_0
    const-string v1, "CameraThread"

    const-string v2, "exit() - Start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3432
    monitor-enter p0

    .line 3435
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    if-eqz v1, :cond_1

    .line 3437
    const-string v1, "CameraThread"

    const-string v2, "exit() - Thread exit is still pending, exit later"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3438
    monitor-exit p0

    goto :goto_0

    .line 3449
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3442
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 3443
    iget-boolean v1, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    if-eqz v1, :cond_2

    .line 3445
    const-string v1, "CameraThread"

    const-string v2, "exit() - Cannot close camera, exit later"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3446
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    .line 3447
    monitor-exit p0

    goto :goto_0

    .line 3449
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3452
    iget-object v1, p0, Lcom/android/camera/CameraThread;->exitingEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3455
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v1}, Lcom/android/camera/component/CameraThreadComponentManager;->removeComponents()V

    .line 3456
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v1}, Lcom/android/camera/component/CameraThreadComponentManager;->release()V

    .line 3459
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 3462
    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 3465
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getThreadMonitor()Lcom/android/camera/debug/ThreadMonitor;

    move-result-object v0

    .line 3466
    .local v0, threadMonitor:Lcom/android/camera/debug/ThreadMonitor;
    if-eqz v0, :cond_3

    .line 3467
    invoke-virtual {v0}, Lcom/android/camera/debug/ThreadMonitor;->stopMonitorCurrentThread()V

    .line 3470
    :cond_3
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    .line 3471
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    .line 3472
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    .line 3475
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 3476
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread$MainHandler;->release()V

    .line 3478
    const-string v1, "CameraThread"

    const-string v2, "exit() - End"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/android/camera/HTCCamera;
    .locals 1

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method public getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method public final getCaptureElapsedMilliseconds()J
    .locals 4

    .prologue
    .line 2771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "name"

    .prologue
    .line 3533
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentFactory()Lcom/android/camera/component/CameraThreadComponentFactory;
    .locals 1

    .prologue
    .line 3517
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    return-object v0
.end method

.method public bridge synthetic getComponentFactory()Lcom/android/camera/component/ComponentFactory;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getComponentFactory()Lcom/android/camera/component/CameraThreadComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;
    .locals 1

    .prologue
    .line 3525
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    return-object v0
.end method

.method public bridge synthetic getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    return-object v0
.end method

.method public final getHtcWrapCamera()Lcom/htc/wrap/android/hardware/HtcWrapCamera;
    .locals 1

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    return-object v0
.end method

.method public getJpegData()[B
    .locals 1

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    return-object v0
.end method

.method public final getLastContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getLastMediaInfo()Lcom/android/camera/MediaInfo;
    .locals 1

    .prologue
    .line 3935
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v0}, Lcom/android/camera/MediaInfo;->clone()Lcom/android/camera/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaQueueSize()J
    .locals 2

    .prologue
    .line 4221
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    invoke-virtual {v0}, Lcom/android/camera/io/IMediaFileWriter;->getMediaQueueSize()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getPendingFileSize()J
    .locals 2

    .prologue
    .line 4229
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getMediaQueueSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecordingTime()J
    .locals 4

    .prologue
    .line 3940
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getCaptureElapsedMilliseconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getRecordingVideoFilePath()Lcom/android/camera/io/Path;
    .locals 1

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    return-object v0
.end method

.method public getSettings()Lcom/android/camera/CameraSettings;
    .locals 1

    .prologue
    .line 4389
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method public bridge synthetic getSettings()Lcom/android/camera/Settings;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method public final handleCommonCallbackTimeout(Ljava/lang/String;)V
    .locals 5
    .parameter "callbackName"

    .prologue
    .line 5055
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 5057
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCommonCallbackTimeout() - Call-back \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' timeout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5060
    sget-object v2, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    invoke-static {}, Lcom/android/camera/FeatureConfig;->getDriverCallbackTimeoutHandlingPolicy()Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5138
    :cond_0
    :goto_0
    return-void

    .line 5064
    :pswitch_0
    const-string v2, "CameraThread"

    const-string v3, "handleCommonCallbackTimeout() - Ignore"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5070
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 5073
    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5075
    const-string v2, "CameraThread"

    const-string v3, "handleCommonCallbackTimeout() - Cancel taking picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5076
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 5077
    .local v0, captureHandle:Lcom/android/camera/CaptureHandle;
    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5078
    if-eqz v0, :cond_3

    .line 5080
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 5081
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 5082
    iget-object v2, p0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    sget-object v4, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v3, v0, v4}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 5089
    .end local v0           #captureHandle:Lcom/android/camera/CaptureHandle;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    new-instance v3, Lcom/android/camera/CameraThread$27;

    invoke-direct {v3, p0}, Lcom/android/camera/CameraThread$27;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5107
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5108
    iget-object v2, p0, Lcom/android/camera/CameraThread;->captureStoppedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->gerCurrentVideoCaptureHandle()Lcom/android/camera/CaptureHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 5111
    :cond_2
    const/4 v1, 0x0

    .line 5112
    .local v1, exitThread:Z
    monitor-enter p0

    .line 5114
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    .line 5115
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    .line 5116
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    .line 5117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5118
    if-eqz v1, :cond_4

    .line 5120
    const-string v2, "CameraThread"

    const-string v3, "handleCommonCallbackTimeout() - Exit camera thread"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5121
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->exit()V

    goto :goto_0

    .line 5085
    .end local v1           #exitThread:Z
    .restart local v0       #captureHandle:Lcom/android/camera/CaptureHandle;
    :cond_3
    const-string v2, "CameraThread"

    const-string v3, "handleCommonCallbackTimeout() - No photo capture handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5117
    .end local v0           #captureHandle:Lcom/android/camera/CaptureHandle;
    .restart local v1       #exitThread:Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 5125
    :cond_4
    const-string v2, "CameraThread"

    const-string v3, "handleCommonCallbackTimeout() - Close camera"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5126
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto/16 :goto_0

    .line 5134
    .end local v1           #exitThread:Z
    :pswitch_2
    const-string v2, "CameraThread"

    const-string v3, "handleCommonCallbackTimeout() - Throw exception to stop camera thread"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5135
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call-back \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is missing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5060
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final handleCommonJpegCallback([BLandroid/hardware/Camera;Z)V
    .locals 5
    .parameter "jpegData"
    .parameter "camera"
    .parameter "isCancel"

    .prologue
    .line 305
    const-string v2, "CameraThread"

    const-string v3, "handleCommonJpegCallback() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 311
    sget-object v2, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v2}, Lcom/android/camera/TIME$Value;->End()V

    .line 312
    sget-object v2, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v2}, Lcom/android/camera/TIME$Value;->Start()V

    .line 315
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    new-instance v3, Lcom/android/camera/CameraThread$4;

    invoke-direct {v3, p0}, Lcom/android/camera/CameraThread$4;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 333
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 334
    .local v0, captureHandle:Lcom/android/camera/CaptureHandle;
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    .line 337
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2, v0}, Lcom/android/camera/HTCCamera;->completeTakingPicture(Lcom/android/camera/CaptureHandle;)V

    .line 341
    :cond_0
    if-eqz p3, :cond_1

    .line 343
    const-string v2, "CameraThread"

    const-string v3, "handleCommonJpegCallback() - cancel save image task"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/android/camera/CameraThread;->captureCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    invoke-direct {v3, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 355
    :goto_0
    const-string v2, "CameraThread"

    const-string v3, "handleCommonJpegCallback() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 346
    :cond_1
    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_3

    .line 347
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    sget-object v4, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v3, v0, v4}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    .line 350
    :cond_3
    new-instance v1, Lcom/android/camera/io/SaveImageTask;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;[B)V

    .line 351
    .local v1, task:Lcom/android/camera/io/SaveImageTask;
    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    iput-object v2, v1, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    .line 352
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    goto :goto_0

    .line 351
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Lcom/android/camera/io/FileFormat;

    goto :goto_1
.end method

.method public final handleCommonPostviewCallback([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "yuvData"
    .parameter "camera"

    .prologue
    .line 363
    const-string v0, "CameraThread"

    const-string v1, "handleCommonPostviewCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraThread;->createPostViewImage([B)V

    .line 366
    const-string v0, "CameraThread"

    const-string v1, "handleCommonPostviewCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public final handleCommonRawCallback([BLandroid/hardware/Camera;)V
    .locals 0
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 390
    return-void
.end method

.method public handleCommonShutterCallback()V
    .locals 2

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 402
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoSceneController:Lcom/android/camera/IAutoSceneController;

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoSceneController:Lcom/android/camera/IAutoSceneController;

    iget-object v0, v0, Lcom/android/camera/IAutoSceneController;->isWdrScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    new-instance v1, Lcom/android/camera/CameraThread$5;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$5;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 428
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    .line 429
    sget-object v0, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    .line 430
    return-void

    .line 425
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "handleCommonShutterCallback - Cannot find IAutoSceneController."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 4191
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;J)Z
    .locals 5
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4195
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_3

    .line 4197
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v4, 0x2774

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4198
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gtz v3, :cond_1

    .line 4200
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v3, v0}, Lcom/android/camera/CameraThread$MainHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4212
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return v1

    .line 4203
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v3, v0, p2, p3}, Lcom/android/camera/CameraThread$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4205
    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 4206
    const-string v1, "CameraThread"

    const-string v3, "invokeAsync() - Fail to post to camera thread handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 4207
    goto :goto_0

    .line 4211
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    const-string v1, "CameraThread"

    const-string v3, "invokeAsync() - No camera thread handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 4212
    goto :goto_0
.end method

.method public is3DMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3231
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3237
    :cond_0
    :goto_0
    return v0

    .line 3234
    :cond_1
    iget v2, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 3237
    goto :goto_0
.end method

.method public final isShutterSoundNeeded()Z
    .locals 1

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isShutterSoundEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSlowMotionMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4538
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 4542
    :goto_0
    return v1

    .line 4541
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    .line 4542
    .local v0, startMode:Lcom/android/camera/CameraStartMode;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 3
    .parameter "event"
    .parameter "sender"
    .parameter "e"

    .prologue
    .line 4237
    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v1, :cond_1

    .line 4238
    check-cast p3, Lcom/android/camera/CameraDeviceEventArgs;

    .end local p3
    iget-object v1, p3, Lcom/android/camera/CameraDeviceEventArgs;->openFailedReason:Lcom/android/camera/CameraOpenFailedReason;

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mLastCameraOpenFailedReason:Lcom/android/camera/CameraOpenFailedReason;

    .line 4246
    :cond_0
    :goto_0
    return-void

    .line 4239
    .restart local p3
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v1, :cond_0

    move-object v0, p3

    .line 4241
    check-cast v0, Lcom/android/camera/io/MediaSaveEventArgs;

    .line 4242
    .local v0, mediaEventArgs:Lcom/android/camera/io/MediaSaveEventArgs;
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v0, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 4243
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v0, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 4244
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v0, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    iget-object v2, v2, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public final openCamera(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;
    .locals 6
    .parameter "cameraType"

    .prologue
    const/4 v5, 0x0

    .line 671
    if-nez p1, :cond_0

    .line 673
    const-string v1, "cameraType"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 674
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 678
    :cond_0
    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "Camera"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 681
    .local v0, handle:Lcom/android/camera/Handle;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 683
    const-string v1, "CameraThread"

    const-string v2, "openCamera() - Open camera from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v2, 0x2710

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v5, v5, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 688
    :goto_0
    return-object v0

    .line 687
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CameraThread;->openCameraInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Z

    goto :goto_0
.end method

.method public final playShutterSound()V
    .locals 1

    .prologue
    .line 3494
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->playShutterSound(Z)V

    .line 3495
    return-void
.end method

.method public final playShutterSound(Z)V
    .locals 3
    .parameter "audioFocus"

    .prologue
    .line 3498
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    if-nez v0, :cond_0

    .line 3500
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    .line 3502
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_1

    .line 3503
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    .line 3510
    :cond_0
    :goto_0
    return-void

    .line 3505
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "playShutterSound() - No shutter sound ID"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3508
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "playShutterSound() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseCameraThread()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2444
    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 2445
    iput-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 2446
    return-void
.end method

.method public resetJpegData()V
    .locals 1

    .prologue
    .line 2624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    .line 2625
    return-void
.end method

.method public final resetZoom(Z)V
    .locals 4
    .parameter "toMinimum"

    .prologue
    const/4 v3, 0x0

    .line 3692
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3693
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2740

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 3696
    :goto_0
    return-void

    .line 3695
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->resetZoomInternal(Z)V

    goto :goto_0
.end method

.method public final restartPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;
    .locals 3
    .parameter "cameraType"

    .prologue
    .line 1461
    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "RestartPreview"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 1462
    .local v0, handle:Lcom/android/camera/SessionHandle;
    const-string v1, "CameraThread"

    const-string v2, "restartPreview() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1465
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 1467
    const-string v1, "CameraThread"

    const-string v2, "restartPreview() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    new-instance v1, Lcom/android/camera/CameraThread$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/camera/CameraThread$9;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/SessionHandle;Lcom/android/camera/CameraType;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1483
    :goto_0
    return-object v0

    .line 1480
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    .line 1481
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 2461
    const-string v1, "CameraThread"

    const-string v2, "*************************************** run"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2463
    new-instance v1, Lcom/android/camera/CameraThread$MainHandler;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    .line 2466
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getThreadMonitor()Lcom/android/camera/debug/ThreadMonitor;

    move-result-object v0

    .line 2467
    .local v0, threadMonitor:Lcom/android/camera/debug/ThreadMonitor;
    if-eqz v0, :cond_0

    .line 2468
    invoke-virtual {v0}, Lcom/android/camera/debug/ThreadMonitor;->startMonitorCurrentThread()V

    .line 2471
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    .line 2474
    const-string v1, "CameraThread.CameraType"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    .line 2475
    const-string v1, "CameraThread.CaptureRotation"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    .line 2476
    const-string v1, "CameraThread.FlashMode"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    .line 2477
    const-string v1, "CameraThread.HasEnoughInternalDataSpace"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    .line 2478
    const-string v1, "CameraThread.HasMovingObjects"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->hasMovingObjects:Lcom/android/camera/property/Property;

    .line 2479
    const-string v1, "CameraThread.IsEyeBlinked"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isEyeBlinked:Lcom/android/camera/property/Property;

    .line 2480
    const-string v1, "CameraThread.IsHdrSuggested"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isHdrSuggested:Lcom/android/camera/property/Property;

    .line 2481
    const-string v1, "CameraThread.IsLowlight"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isLowlight:Lcom/android/camera/property/Property;

    .line 2482
    const-string v1, "CameraThread.IsPreviewStarted"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    .line 2483
    const-string v1, "CameraThread.IsRecording"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    .line 2484
    const-string v1, "CameraThread.IsTakingPicture"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    .line 2485
    const-string v1, "CameraThread.Mode"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mInitialMode:Lcom/android/camera/CameraMode;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    .line 2486
    const-string v1, "CameraThread.PreviewSize"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v5, v2, v7}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    .line 2487
    const-string v1, "CameraThread.RecordingState"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    .line 2488
    const-string v1, "CameraThread.StorageSlot"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    .line 2489
    const-string v1, "CameraThread.StorageState"

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    .line 2490
    const-string v1, "CameraThread.TakingPictureState"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    .line 2491
    const-string v1, "CameraThread.ZoomRange"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v5, v2, v7}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    .line 2492
    const-string v1, "CameraThread.ZoomValue"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    .line 2495
    const-string v1, "CameraThread.AutoFocusCanceled"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    .line 2496
    const-string v1, "CameraThread.AutoFocusFinished"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    .line 2497
    const-string v1, "CameraThread.AutoFocusStarted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    .line 2498
    const-string v1, "CameraThread.AutoFocusStarting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    .line 2499
    const-string v1, "CameraThread.CameraClosed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    .line 2500
    const-string v1, "CameraThread.CameraClosing"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraClosingEvent:Lcom/android/camera/event/Event;

    .line 2501
    const-string v1, "CameraThread.CameraOpen"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    .line 2502
    const-string v1, "CameraThread.CameraOpenFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    .line 2503
    const-string v1, "CameraThread.CaptureCanceled"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureCanceledEvent:Lcom/android/camera/event/Event;

    .line 2504
    const-string v1, "CameraThread.CaptureFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    .line 2505
    const-string v1, "CameraThread.CaptureStarted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureStartedEvent:Lcom/android/camera/event/Event;

    .line 2506
    const-string v1, "CameraThread.CaptureStarting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureStartingEvent:Lcom/android/camera/event/Event;

    .line 2507
    const-string v1, "CameraThread.CaptureStopped"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureStoppedEvent:Lcom/android/camera/event/Event;

    .line 2508
    const-string v1, "CameraThread.DeletingLatestMedia"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->deletingLatestMediaEvent:Lcom/android/camera/event/Event;

    .line 2509
    const-string v1, "CameraThread.Exiting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->exitingEvent:Lcom/android/camera/event/Event;

    .line 2510
    const-string v1, "CameraThread.HtcCallbackReceived"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;

    .line 2511
    const-string v1, "CameraThread.MediaDeleted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    .line 2512
    const-string v1, "CameraThread.MediaRecorderInfoCallback"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaRecorderInfoCallbackEvent:Lcom/android/camera/event/Event;

    .line 2513
    const-string v1, "CameraThread.MediaSaved"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    .line 2514
    const-string v1, "CameraThread.MediaSaveFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    .line 2515
    const-string v1, "CameraThread.ModeChanged"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->modeChangedEvent:Lcom/android/camera/event/Event;

    .line 2516
    const-string v1, "CameraThread.ModeChangeFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->modeChangeFailedEvent:Lcom/android/camera/event/Event;

    .line 2517
    const-string v1, "CameraThread.PostviewImageRetrieved"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->postviewImageRetrievedEvent:Lcom/android/camera/event/Event;

    .line 2518
    const-string v1, "CameraThread.PreparingParamsAfterPreviewStart"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/android/camera/event/Event;

    .line 2519
    const-string v1, "CameraThread.PreparingParamsBeforePreviewStart"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;

    .line 2520
    const-string v1, "CameraThread.PreparingParamsBeforeTakingPicture"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/android/camera/event/Event;

    .line 2521
    new-instance v1, Lcom/android/camera/CameraThread$13;

    const-string v2, "CameraThread.PreviewFrameRetrieved"

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/CameraThread$13;-><init>(Lcom/android/camera/CameraThread;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    .line 2555
    const-string v1, "CameraThread.PreviewStarted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    .line 2556
    const-string v1, "CameraThread.PreviewStartFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    .line 2557
    const-string v1, "CameraThread.PreviewStarting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    .line 2558
    const-string v1, "CameraThread.PreviewStopped"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStoppedEvent:Lcom/android/camera/event/Event;

    .line 2559
    const-string v1, "CameraThread.PreviewStopping"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStoppingEvent:Lcom/android/camera/event/Event;

    .line 2560
    const-string v1, "CameraThread.RecordingFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    .line 2561
    const-string v1, "CameraThread.RequestCloseCamera"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestCloseCameraEvent:Lcom/android/camera/event/Event;

    .line 2562
    const-string v1, "CameraThread.RequestDeleteLatestMedia"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;

    .line 2563
    const-string v1, "CameraThread.RequestOpenCamera"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestOpenCameraEvent:Lcom/android/camera/event/Event;

    .line 2564
    const-string v1, "CameraThread.SavingImage"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->savingImageEvent:Lcom/android/camera/event/Event;

    .line 2565
    const-string v1, "CameraThread.TakingPictureFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    .line 2566
    const-string v1, "CameraThread.VideoThumbnailCreated"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;

    .line 2569
    iget-object v1, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v1, v6}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 2570
    iget-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v1, v6}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 2571
    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->disableLogs(I)V

    .line 2572
    iget-object v1, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1, v6}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 2575
    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 2576
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 2579
    new-instance v1, Lcom/android/camera/component/CameraThreadComponentFactory;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraThreadComponentFactory;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    .line 2580
    new-instance v1, Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraThreadComponentManager;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    .line 2581
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    sget-object v2, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    .line 2584
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v1, v5}, Lcom/android/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    .line 2587
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->linkToRequiredServiceComponents()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2589
    const-string v1, "CameraThread"

    const-string v2, "[Fatal] Some required interface is missing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    :goto_0
    return-void

    .line 2592
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/IOperationTimeoutController;

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    .line 2593
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-nez v1, :cond_2

    .line 2594
    const-string v1, "CameraThread"

    const-string v2, "No IOperationTimeoutController interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 2599
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x2776

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2600
    const-string v1, "CameraThread"

    const-string v2, "Cannot notify UI that camera thread is running, because message cannot be sent"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    :cond_3
    :goto_1
    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v1, v1, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_5

    .line 2607
    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    .line 2614
    :goto_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0

    .line 2603
    :cond_4
    const-string v1, "CameraThread"

    const-string v2, "Cannot notify UI that camera thread is running, because there is no UI handler"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2608
    :cond_5
    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    iget-boolean v1, v1, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_6

    .line 2609
    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    goto :goto_2

    .line 2611
    :cond_6
    const-string v1, "CameraThread"

    const-string v2, "Cannot open camera first, because there is no supported camera"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final saveImage(Lcom/android/camera/io/SaveImageTask;)V
    .locals 4
    .parameter "task"

    .prologue
    .line 3644
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 3647
    if-nez p1, :cond_0

    .line 3649
    const-string v0, "task"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 3650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3654
    :cond_0
    iget-object v0, p1, Lcom/android/camera/io/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    if-nez v0, :cond_1

    .line 3655
    sget-object v0, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    iput-object v0, p1, Lcom/android/camera/io/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    .line 3656
    :cond_1
    iget-object v0, p1, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    if-nez v0, :cond_2

    .line 3657
    sget-object v0, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iput-object v0, p1, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    .line 3658
    :cond_2
    iget-object v0, p1, Lcom/android/camera/io/SaveImageTask;->gpsLocation:Landroid/location/Location;

    if-nez v0, :cond_3

    .line 3659
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    iput-object v0, p1, Lcom/android/camera/io/SaveImageTask;->gpsLocation:Landroid/location/Location;

    .line 3660
    :cond_3
    iget-object v0, p1, Lcom/android/camera/io/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    if-nez v0, :cond_4

    .line 3661
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    iput-object v0, p1, Lcom/android/camera/io/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    .line 3662
    :cond_4
    iget-wide v0, p1, Lcom/android/camera/io/SaveImageTask;->takenDateTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/android/camera/io/SaveImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_5

    .line 3663
    iget-object v0, p1, Lcom/android/camera/io/SaveImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v0, v0, Lcom/android/camera/CaptureHandle;->captureTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/camera/io/SaveImageTask;->takenDateTime:J

    .line 3666
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3672
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/io/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    .line 3678
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    if-eqz v0, :cond_9

    .line 3680
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    invoke-virtual {v0, p1}, Lcom/android/camera/io/IMediaFileWriter;->saveMedia(Lcom/android/camera/io/SaveMediaTask;)Lcom/android/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_7

    .line 3681
    const-string v0, "CameraThread"

    const-string v1, "saveImage() - Cannot save image"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3685
    :cond_7
    :goto_1
    return-void

    .line 3675
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    goto :goto_0

    .line 3684
    :cond_9
    const-string v0, "CameraThread"

    const-string v1, "saveImage() - No IMediaFileWriter interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final setCanStartPreview()V
    .locals 1

    .prologue
    .line 3634
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 3635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 3636
    return-void
.end method

.method public final setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 4448
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4450
    new-instance v0, Lcom/android/camera/CameraThread$21;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$21;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/rotate/UIRotation;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4461
    :goto_0
    return-void

    .line 4460
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method public final setFirstFrameCacheState(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 4407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4409
    new-instance v0, Lcom/android/camera/CameraThread$20;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$20;-><init>(Lcom/android/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4420
    :goto_0
    return-void

    .line 4419
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFirstFrameCacheStateInternal(Z)V

    goto :goto_0
.end method

.method public setFlashMode(Lcom/android/camera/FlashMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 4362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4363
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2725

    invoke-static {v0, v1, v2, v2, p1}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 4366
    :goto_0
    return-void

    .line 4365
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFlashModeInternal(Lcom/android/camera/FlashMode;)V

    goto :goto_0
.end method

.method public final setSoundEffect(ZLcom/android/camera/rotate/UIRotation;)V
    .locals 6
    .parameter "hasEffect"
    .parameter "rotation"

    .prologue
    .line 4497
    const-string v0, "CameraThread"

    const-string v1, "setSoundEffect(hasEffect="

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ", rotation="

    const-string v5, ")"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4499
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4500
    if-nez p1, :cond_0

    .line 4501
    const-string v0, "Mono"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    .line 4517
    :goto_0
    return-void

    .line 4504
    :cond_0
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4513
    const-string v0, "Portrait"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 4507
    :pswitch_0
    const-string v0, "Landscape_Left"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 4510
    :pswitch_1
    const-string v0, "Landscape_Right"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 4504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sinaCamera_IsGifMode()Z
    .locals 3

    .prologue
    .line 4393
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    .line 4394
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 4395
    .local v0, scene:Lcom/android/camera/effect/EffectBase;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/camera/sina/GifModeScene;

    if-eqz v1, :cond_0

    .line 4396
    const/4 v1, 0x1

    .line 4399
    .end local v0           #scene:Lcom/android/camera/effect/EffectBase;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;
    .locals 6
    .parameter "cameraType"

    .prologue
    const/4 v5, 0x0

    .line 1103
    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "StartPreview"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v0, handle:Lcom/android/camera/SessionHandle;
    const-string v1, "CameraThread"

    const-string v2, "startPreview() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 1109
    const-string v1, "CameraThread"

    const-string v2, "startPreview() - Start preview from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v2, 0x2711

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v5, v5, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1114
    :goto_0
    return-object v0

    .line 1113
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0
.end method

.method public final startPreviewDirectly()Lcom/android/camera/Handle;
    .locals 3

    .prologue
    .line 1271
    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "StartPreview"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 1272
    .local v0, handle:Lcom/android/camera/SessionHandle;
    const-string v1, "CameraThread"

    const-string v2, "startPreviewDirectly() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1275
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1276
    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal(Lcom/android/camera/Handle;)Lcom/android/camera/CameraPreviewStartResult;

    .line 1285
    :goto_0
    return-object v0

    .line 1279
    :cond_0
    const-string v1, "CameraThread"

    const-string v2, "startPreviewDirectly() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_1

    .line 1281
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v2, 0x2712

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1283
    :cond_1
    const-string v1, "CameraThread"

    const-string v2, "startPreviewDirectly() - No camera handler"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final startPreviewSilently()Lcom/android/camera/CameraPreviewStartResult;
    .locals 1

    .prologue
    .line 1402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->startPreviewSilently(Z)Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v0

    return-object v0
.end method

.method public final startPreviewSilently(Z)Lcom/android/camera/CameraPreviewStartResult;
    .locals 4
    .parameter "stopPreviewFirst"

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 1410
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 1412
    const-string v1, "CameraThread"

    const-string v2, "startPreviewSilently() - Camera is not open"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    .line 1443
    :goto_0
    return-object v1

    .line 1417
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1420
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1422
    const-string v1, "CameraThread"

    const-string v3, "startPreviewSilently() - Surface is unavailable"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    monitor-exit v2

    goto :goto_0

    .line 1440
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1429
    :cond_1
    if-eqz p1, :cond_2

    .line 1430
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController;->stopPreview()V

    .line 1431
    :cond_2
    const-string v1, "CameraThread"

    const-string v3, "startPreviewSilently() - mCameraDevice.startPreview() - Start"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController;->startPreview()V

    .line 1433
    const-string v1, "CameraThread"

    const-string v3, "startPreviewSilently() - mCameraDevice.startPreview() - End"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1440
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1443
    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0

    .line 1435
    :catch_0
    move-exception v0

    .line 1437
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "CameraThread"

    const-string v3, "startPreviewSilently() - Start preview failed"

    invoke-static {v1, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1438
    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->UnknownError:Lcom/android/camera/CameraPreviewStartResult;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final startVideoRecording()Lcom/android/camera/CaptureHandle;
    .locals 5

    .prologue
    .line 1823
    const-string v1, "CameraThread"

    const-string v2, "startVideoRecording()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    new-instance v0, Lcom/android/camera/CaptureHandle;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-direct {v0, v1}, Lcom/android/camera/CaptureHandle;-><init>(Lcom/android/camera/CameraMode;)V

    .line 1827
    .local v0, handle:Lcom/android/camera/CaptureHandle;
    const-string v1, "CameraThread"

    const-string v2, "startVideoRecording() - Create handle : \'"

    iget-object v3, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1830
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 1832
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_0

    .line 1834
    new-instance v1, Lcom/android/camera/CameraThread$12;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraThread$12;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1853
    .end local v0           #handle:Lcom/android/camera/CaptureHandle;
    :goto_0
    return-object v0

    .line 1845
    .restart local v0       #handle:Lcom/android/camera/CaptureHandle;
    :cond_0
    const-string v1, "CameraThread"

    const-string v2, "startVideoRecording() - No camera handler"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const/4 v0, 0x0

    goto :goto_0

    .line 1850
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->startVideoRecordingInternal(Lcom/android/camera/CaptureHandle;Z)V

    goto :goto_0
.end method

.method public final stopPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1491
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 1493
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1497
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 1498
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    .line 1501
    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1502
    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1505
    iget-object v0, p0, Lcom/android/camera/CameraThread;->previewStoppingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1508
    const-string v0, "CameraThread"

    const-string v1, "before stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->stopPreview()V

    .line 1510
    const-string v0, "CameraThread"

    const-string v1, "after stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lcom/android/camera/CameraThread;->previewStoppedEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1513
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1515
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    :goto_0
    return-void

    .line 1517
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_2

    .line 1519
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    new-instance v0, Lcom/android/camera/CameraThread$10;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$10;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1527
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1530
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "Cannot stop preview because there is no handler for camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final stopVideoRecording(Lcom/android/camera/CaptureHandle;ZZ)V
    .locals 8
    .parameter "handle"
    .parameter "playShutterSound"
    .parameter "wait"

    .prologue
    const/4 v3, 0x0

    .line 1539
    if-nez p1, :cond_1

    .line 1541
    const-string v3, "CameraThread"

    const-string v4, "stopVideoRecording() - Null handle"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1545
    :cond_1
    const-string v4, "CameraThread"

    const-string v5, "stopVideoRecording() - Handle : \'"

    iget-object v6, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v7, "\'"

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1548
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 1549
    .local v2, localSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v4, p0, :cond_2

    const/4 v1, 0x1

    .line 1550
    .local v1, isCameraThread:Z
    :goto_1
    if-nez v1, :cond_4

    .line 1552
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_3

    .line 1554
    const-string v3, "CameraThread"

    const-string v4, "stopVideoRecording() - Stop recording asynchronuously"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    new-instance v3, Lcom/android/camera/CameraThread$11;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/android/camera/CameraThread$11;-><init>(Lcom/android/camera/CameraThread;Ljava/util/concurrent/Semaphore;Lcom/android/camera/CaptureHandle;Z)V

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1577
    :goto_2
    if-eqz p3, :cond_0

    if-nez v1, :cond_0

    .line 1579
    const-string v3, "CameraThread"

    const-string v4, "stopVideoRecording() - Wait for recording stop - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1583
    iget-object v3, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1584
    iget-object v3, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    :goto_3
    const-string v3, "CameraThread"

    const-string v4, "stopVideoRecording() - Wait for recording stop - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #isCameraThread:Z
    :cond_2
    move v1, v3

    .line 1549
    goto :goto_1

    .line 1566
    .restart local v1       #isCameraThread:Z
    :cond_3
    const-string v3, "CameraThread"

    const-string v4, "stopVideoRecording() - No camera thread handler"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    .line 1572
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1573
    invoke-direct {p0, p1, p2, v3}, Lcom/android/camera/CameraThread;->stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    goto :goto_2

    .line 1586
    :catch_0
    move-exception v0

    .line 1588
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v3, "CameraThread"

    const-string v4, "stopVideoRecording() - Wait for recording stop - interrupted"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final takePicture(Z)Lcom/android/camera/CaptureHandle;
    .locals 7
    .parameter "checkStorage"

    .prologue
    .line 4662
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4665
    new-instance v6, Lcom/android/camera/CaptureHandle;

    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-direct {v6, v0}, Lcom/android/camera/CaptureHandle;-><init>(Lcom/android/camera/CameraMode;)V

    .line 4666
    .local v6, handle:Lcom/android/camera/CaptureHandle;
    const-string v0, "CameraThread"

    const-string v1, "takePicture() - Handle : \'"

    iget-object v2, v6, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4669
    new-instance v0, Lcom/android/camera/CameraThread$25;

    invoke-direct {v0, p0, v6, p1}, Lcom/android/camera/CameraThread$25;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4679
    return-object v6
.end method
