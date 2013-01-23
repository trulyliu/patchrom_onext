.class public abstract Lcom/android/camera/HTCCamera;
.super Landroid/app/Activity;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/component/IComponentOwner;
.implements Lcom/android/camera/ISettingsOwner;
.implements Lcom/android/camera/property/PropertyChangedCallback;
.implements Lcom/android/camera/IAsyncOperationExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/HTCCamera$30;,
        Lcom/android/camera/HTCCamera$TVDisplayListener;,
        Lcom/android/camera/HTCCamera$MainHandler;,
        Lcom/android/camera/HTCCamera$ScaleListener;
    }
.end annotation


# static fields
.field public static final CAMERA_THREAD_RUNNING:I = 0x2776

.field public static final DEVICE_ORIENTATION_UNKNOWN:I = -0x1

.field public static final ENABLE_GARBAGE_COLLECTION:I = 0x38

.field public static final ENABLE_SENSOR_FOCUS:I = 0x1e

.field public static final FOCUSING_NO_ACTION:I = 0x1

.field public static final FOCUSING_PRESS_CAPTURE:I = 0x3

.field public static final FOCUSING_PRESS_RECORD:I = 0x4

.field public static final FOCUSING_TAP_CAPTURE:I = 0x2

.field public static final HTC_CAM_SWITCH_CHANGE:I = 0xe

.field public static final HW_3D_BUTTON_SWITCH:I = 0x48

.field public static final INTENT_ACTION_ALBUM:Ljava/lang/String; = "FROM_CAMERA"

.field private static final INTENT_KEY_JPEG_DATA:Ljava/lang/String; = "jpeg_data"

.field private static final INTENT_KEY_LAST_FILE_MIME:Ljava/lang/String; = "camera_last_file_mime"

.field private static final INTENT_KEY_LAST_FILE_PATH:Ljava/lang/String; = "camera_last_file_path"

.field private static final INTENT_KEY_ORIENTATION:Ljava/lang/String; = "camera_orientation"

.field public static final INTENT_MODE_CAMCORDER:Ljava/lang/String; = "comcorder"

.field public static final INTENT_MODE_CAMERA:Ljava/lang/String; = "camera"

.field public static final INTENT_MODE_KEY:Ljava/lang/String; = "capture_mode"

.field public static final INTENT_PREVIEW_CAPTURE:Ljava/lang/String; = "capture"

.field public static final INTENT_PREVIEW_FILMSTRIP:Ljava/lang/String; = "filmstrip"

.field public static final INTENT_PREVIEW_KEY:Ljava/lang/String; = "preview_mode"

.field public static final LONG_PRESS_AREA:I = 0xf

.field public static final LONG_PRESS_PERIOD:J = 0x190L

.field private static final MAX_STARTING_PREVIEW_FAILURE_COUNT:I = 0xa

.field public static final MENU_3D_CAMERA_SWITCH:I = 0x4f

.field private static final MSG_COMPLETE_CAPTURE:I = 0x277a

.field private static final MSG_COUNT_DOWN_SELFTIMER:I = 0x6

.field private static final MSG_INVOKE:I = 0x27d8

.field private static final MSG_LEAVE_QUICK_LAUNCH_STATE:I = 0x277b

.field private static final MSG_TOUCH_FOCUS:I = 0x283c

.field public static final NO_FOCUSING:I = 0x0

.field public static final PANEL_FADEOUT_TIMEOUT:I = 0x1f40

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_DIAGONAL_LENGTH:D = 0.0

.field public static final SCREEN_SAVE:I = 0x24

.field public static final SHOW_3D_HINT:I = 0x50

.field public static final SHOW_FOCUS_END:I = 0x53

.field public static final SINACAMERA_FIRST_LAUNCH_SHOW_TIPS:I = 0x26

.field public static final SINACAMERA_STOP_GIF_PHOTO:I = 0x55

.field public static final SWITCH_3D_PREVIEW_READY:I = 0x49

.field private static final TAG:Ljava/lang/String; = "HTCCamera"

.field private static final TIMEOUT_QUICK_LAUNCH_STATE:I = 0x1f4

.field private static final TOUCH_FOCUS_DELAY_THRESHOLD:I = 0x78

.field public static bFocusFromPress:Z

.field public static bHoldFocusKey:Z

.field private static mInitialPreferenceValues:[Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsSelfPortraitTask:Z


# instance fields
.field public Display_Orientation:I

.field public SCREEN_DELAY:I

.field private final TOUCH_CAPTURE_CANCEL_MOVEMENT_RATIO:D

.field public final accelerometerValues:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<[F>;"
        }
    .end annotation
.end field

.field public final actionScreenCloseReason:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/actionscreen/ActionScreenCloseReason;",
            ">;"
        }
    .end annotation
.end field

.field public final actionScreenState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final activatedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final autoDetectedScene:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/AutoDetectedScene;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusCancelingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final cameraClosedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final cameraMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field public final cameraType:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonLongPressedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonPressedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonReleasedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final closingMenuItemClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final currentEffect:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final currentScene:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final deactivatedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final deviceOrientation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final effectPanelState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final elapsedRecordingSeconds:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final externalCommendReceivedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/ExternalCommandEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final flashButtonClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final flashMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field public final focusMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/AutoFocusMode;",
            ">;"
        }
    .end annotation
.end field

.field public final focusPointUpdateEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Landroid/graphics/Point;",
            ">;>;"
        }
    .end annotation
.end field

.field public final hasDialog:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final hasFlash:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final hasPopupBubble:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAccelerometerStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isActivityPaused:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isActivityPausing:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoFocusing:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCameraThreadRunning:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCaptureUIBlocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCaptureUIOpen:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isFlashDisabled:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isFocusUIShowing:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isLowBatteryTemperature:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isLowPower:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isMirrorMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPreviewStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPreviewStarting:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isQuickLaunchState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isRemainingCounterVisible:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isResettingToDefault:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isRotationLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSelfTimerDisabled:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSelfTimerStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSwitchingCamera:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isVideoCaptureButtonPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isZoomLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final keyDownEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/KeyEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final keyUpEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/KeyEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mActionPerformedOnPreviewSurfaceCreated:Z

.field private mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

.field private mActionScreenDisableCounter:I

.field private mActivityOnPause:Z

.field private mAudioManager:Lcom/android/camera/IAudioManager;

.field private mAutoFocusController:Lcom/android/camera/IAutoFocusController;

.field private mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

.field public mAutoUploader:Lcom/android/camera/AutoUploader;

.field private mBaseZoom:I

.field private mBlockPowerWarning:Z

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mCanGSensorEnabled:Z

.field private mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

.field private mCaptureUiContainer:Landroid/view/ViewGroup;

.field private mChangingModeHandle:Lcom/android/camera/Handle;

.field private final mCloseActionScreenRunnable:Ljava/lang/Runnable;

.field private mCloseTouchEvent:Z

.field private mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

.field private mComponentManager:Lcom/android/camera/component/UIComponentManager;

.field private mCountDownEndSoundHandle:Lcom/android/camera/Handle;

.field private mCountDownSoundHandle:Lcom/android/camera/Handle;

.field private mCurrentFocusHandle:Lcom/android/camera/Handle;

.field private mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

.field private mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

.field private mEffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

.field private mEffectManager:Lcom/android/camera/effect/IEffectManager;

.field private mEnableSensorFocus:Z

.field private mFlashDisableCounter:I

.field private mFocusingSoundHandle:Lcom/android/camera/Handle;

.field public mFocusingState:I

.field private final mGSensorListener:Landroid/hardware/SensorEventListener;

.field private mGSensorUsageCounter:I

.field private mIdle:Z

.field private mInitSpan:F

.field private mIntentManager:Lcom/android/camera/IntentManager;

.field private mIsBackQuit:Z

.field private mIsCaptureUiInitialized:Z

.field private mIsLaunching:Z

.field private mIsOnResumeCompleted:Z

.field private mIsPinchZoomed:Z

.field private mIsPowerWarning:Z

.field private mIsSipExist:Z

.field private volatile mIsSurfaceAvailable:Z

.field private mIsTouchScreen:Z

.field private mIsUIReady:Z

.field private mIsUpdatingStorageSlotSetting:Z

.field private final mLastTouchFocusPoint:Landroid/graphics/Point;

.field private mMainThread:Ljava/lang/Thread;

.field private mNeed_doOnResume:Z

.field private mNeed_unregisterReceiver:Z

.field private mObjectTracker:Lcom/android/camera/IObjectTracker;

.field private final mPartitonReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingTakingPictureStartTime:Ljava/lang/Long;

.field private mPopupBubbleCount:I

.field private mPreparedActionScreenSessionHandle:Lcom/android/camera/SessionHandle;

.field private final mPropertyOwnerKey:Ljava/lang/Object;

.field private mRecordingBlockHandle:Lcom/android/camera/Handle;

.field private mRecordingLockHandle:Lcom/android/camera/Handle;

.field private mRotateDialogManager:Lcom/android/camera/IRotateDialogManager;

.field private mRotationManager:Lcom/android/camera/IUIRotationManager;

.field private final mSIPReceiver:Landroid/content/BroadcastReceiver;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScreensave:Landroid/view/View;

.field private mScreensaveText:Landroid/widget/TextView;

.field private mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSelfTimerDisableCounter:I

.field private mSelfTimerStartTime:J

.field private mSensorFocusDisabledCounter:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionHandle:Lcom/android/camera/SessionHandle;

.field private mSettings:Lcom/android/camera/CameraSettings;

.field private mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

.field private final mStartAccelerometerRunnable:Ljava/lang/Runnable;

.field private mStartCountTime:J

.field private mStartMode:Lcom/android/camera/CameraStartMode;

.field private mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

.field private mStartingPreviewFailureCount:I

.field private mStartingPreviewHandle:Lcom/android/camera/Handle;

.field private final mStopAccelerometerRunnable:Ljava/lang/Runnable;

.field private volatile mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mSurfaceStateSyncRoot:Ljava/lang/Object;

.field private mSwitchingModeBlockHandle:Lcom/android/camera/Handle;

.field private mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

.field private mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

.field private mTakingPictureBlockHandle:Lcom/android/camera/Handle;

.field private mTakingPictureLockHandle:Lcom/android/camera/Handle;

.field private mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

.field private mTouchFocusDisabledCounter:I

.field private mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

.field private mUpdateCountDuration:J

.field private final mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

.field private mViewFinder:Lcom/android/camera/IViewFinder;

.field private mZoomLockCounter:I

.field private m_AecLockHandle:Lcom/android/camera/Handle;

.field private m_AwbLockHandle:Lcom/android/camera/Handle;

.field m_CancelFocusFromTouch:Z

.field private m_FocusLockHandle:Lcom/android/camera/Handle;

.field m_IsToastShownEnd:Z

.field private m_NeedTapCapture:Z

.field m_NeedTriggerRecord:Z

.field private m_TouchCaptureFingerDownPoint:Landroid/graphics/PointF;

.field public final mediaDeletedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSaveFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSavedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaScannerFinishedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaScannerStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final newIntentEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field public final pausingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final popupOpeningEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final popupOutsideTouchEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/MotionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final previewSize:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final previewStartingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final queryConfirmDeletingMediaMessageEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final queryMediaToSetAsEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final queryMediaToShareEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final recordingState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;"
        }
    .end annotation
.end field

.field public final resolutionSelectedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field public final restartingCameraEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final resumingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final reviewAnimationCompletedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final rotation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field public final selfFinishingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final selfTimerCountDownEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final selfTimerInterval:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Duration;",
            ">;"
        }
    .end annotation
.end field

.field public final settingsMenuState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final shareKeyForEffectListViewEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final shareKeyForScenesMenuEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final shareKeyForSettingMenuEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final showFocusEndEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final showFocusFailEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final showFocusSucessEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final showFocusingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private sinaCamera_tips:Lcom/htc/widget/QuickTips;

.field public final stoppingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final storageEjectedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;>;"
        }
    .end annotation
.end field

.field public final storageMountedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;>;"
        }
    .end annotation
.end field

.field public final storageState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/io/StorageState;",
            ">;"
        }
    .end annotation
.end field

.field public final storageUnmountedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;>;"
        }
    .end annotation
.end field

.field public final takingPictureState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;"
        }
    .end annotation
.end field

.field public final thumbnailButtonClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/ThumbnailButtonEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final touchPreviewEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/MotionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final zoomRange:Lcom/android/camera/property/Property;
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

.field public final zoomValue:Lcom/android/camera/property/Property;
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
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 432
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    mul-int/2addr v0, v1

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/HTCCamera;->SCREEN_DIAGONAL_LENGTH:D

    .line 513
    sput-boolean v5, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    .line 556
    sput-boolean v5, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 558
    sput-boolean v5, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    .line 600
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/AbstractMap$SimpleEntry;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v2, "pref_camera_self_portrait"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v3, "pref_camera_self_timer_main"

    const-string v4, "0s"

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v3, "pref_smile_capture"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v3, "pref_camera_face_number"

    const-string v4, "none"

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/HTCCamera;->mInitialPreferenceValues:[Ljava/util/AbstractMap$SimpleEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v3, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 739
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    .line 169
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    .line 202
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 208
    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    .line 212
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 217
    new-instance v0, Lcom/android/camera/SessionHandle;

    invoke-direct {v0}, Lcom/android/camera/SessionHandle;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSessionHandle:Lcom/android/camera/SessionHandle;

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    .line 339
    new-instance v0, Lcom/android/camera/HTCCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$1;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    .line 346
    new-instance v0, Lcom/android/camera/HTCCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$2;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartAccelerometerRunnable:Ljava/lang/Runnable;

    .line 374
    new-instance v0, Lcom/android/camera/HTCCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$3;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStopAccelerometerRunnable:Ljava/lang/Runnable;

    .line 396
    new-instance v0, Lcom/android/camera/HTCCamera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$4;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    .line 433
    const-wide v0, 0x3fb1eb851eb851ecL

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->TOUCH_CAPTURE_CANCEL_MOVEMENT_RATIO:D

    .line 470
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    .line 472
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    .line 475
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 481
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    .line 490
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z

    .line 516
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    .line 522
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    .line 526
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    .line 530
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    .line 532
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    .line 535
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    .line 539
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    .line 548
    iput v11, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 554
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    .line 557
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    .line 561
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    .line 563
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    .line 576
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    .line 579
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    .line 580
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    .line 583
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    .line 586
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 589
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    .line 595
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 596
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

    .line 614
    new-instance v0, Lcom/android/camera/HTCCamera$5;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$5;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mGSensorListener:Landroid/hardware/SensorEventListener;

    .line 2771
    new-instance v0, Lcom/android/camera/HTCCamera$14;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$14;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    .line 2786
    new-instance v0, Lcom/android/camera/HTCCamera$15;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$15;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    .line 740
    const-string v0, "HTCCamera"

    const-string v1, "Constructor() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v0, "HTCCamera"

    const-string v1, "Disable GC"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-static {v11}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 747
    new-instance v0, Lcom/android/camera/debug/ThreadMonitor;

    invoke-direct {v0}, Lcom/android/camera/debug/ThreadMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 751
    .local v6, t:J
    new-instance v0, Lcom/android/camera/HTCCamera$6;

    const-string v2, "HTCCamera.AccelerometerValues"

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    new-array v5, v3, [F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/HTCCamera$6;-><init>(Lcom/android/camera/HTCCamera;Ljava/lang/String;ILjava/lang/Object;[F)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->accelerometerValues:Lcom/android/camera/property/Property;

    .line 778
    const-string v0, "HTCCamera.ActionScreenCloseReason"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->Unknown:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->actionScreenCloseReason:Lcom/android/camera/property/Property;

    .line 779
    const-string v0, "HTCCamera.ActionScreenState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    .line 780
    const-string v0, "HTCCamera.AutoDetectedScene"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    .line 781
    const-string v0, "HTCCamera.CameraMode"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    .line 782
    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v0, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_0

    .line 783
    const-string v0, "HTCCamera.CameraType"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    .line 786
    :goto_0
    const-string v0, "HTCCamera.CurrentEffect"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v11, v1, v9}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    .line 787
    const-string v0, "HTCCamera.CurrentScene"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v11, v1, v9}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    .line 788
    const-string v0, "HTCCamera.DeviceOrientation"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->deviceOrientation:Lcom/android/camera/property/Property;

    .line 789
    const-string v0, "HTCCamera.EffectPanelState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    .line 790
    const-string v0, "HTCCamera.ElapsedRecordingSeconds"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    .line 791
    const-string v0, "HTCCamera.FlashMode"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    .line 792
    const-string v0, "HTCCamera.AutoFocusMode"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    .line 793
    const-string v0, "HTCCamera.HasDialog"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    .line 794
    const-string v0, "HTCCamera.HasFlash"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    .line 795
    const-string v0, "HTCCamera.HasPopupBubble"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    .line 796
    const-string v0, "HTCCamera.IsAccelerometerStarted"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    .line 797
    const-string v0, "HTCCamera.IsActivityPaused"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1, v11}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    .line 798
    const-string v0, "HTCCamera.IsActivityPausing"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    .line 799
    const-string v0, "HTCCamera.IsAutoFocusing"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    .line 800
    const-string v0, "HTCCamera.IsCameraThreadRunning"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    .line 801
    const-string v0, "HTCCamera.IsCaptureUIBlocked"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    .line 802
    const-string v0, "HTCCamera.IsCaptureUIOpen"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    .line 803
    const-string v0, "HTCCamera.IsFlashDisabled"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    .line 804
    const-string v0, "HTCCamera.IsFocusUIShowing"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isFocusUIShowing:Lcom/android/camera/property/Property;

    .line 805
    const-string v0, "HTCCamera.IsLowBatteryTemperature"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    .line 806
    const-string v0, "HTCCamera.IsLowPower"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    .line 807
    const-string v0, "HTCCamera.IsMirrorMode"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    .line 808
    const-string v0, "HTCCamera.IsPhotoCaptureButtonPressed"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;

    .line 809
    const-string v0, "HTCCamera.IsPreviewStarted"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    .line 810
    const-string v0, "HTCCamera.IsPreviewStarting"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    .line 811
    const-string v0, "HTCCamera.IsQuickLaunchState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1, v11}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    .line 812
    const-string v0, "HTCCamera.IsRemainingCounterVisible"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    .line 813
    const-string v0, "HTCCamera.IsResettingToDefault"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    .line 814
    const-string v0, "HTCCamera.IsRotationLocked"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isRotationLocked:Lcom/android/camera/property/Property;

    .line 815
    const-string v0, "HTCCamera.IsSelfTimerDisabled"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerDisabled:Lcom/android/camera/property/Property;

    .line 816
    const-string v0, "HTCCamera.IsSelfTimerStarted"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    .line 817
    const-string v0, "HTCCamera.IsSwitchingCamera"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isSwitchingCamera:Lcom/android/camera/property/Property;

    .line 818
    const-string v0, "HTCCamera.IsVideoCaptureButtonPressed"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isVideoCaptureButtonPressed:Lcom/android/camera/property/Property;

    .line 819
    const-string v0, "HTCCamera.IsZoomLocked"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    .line 820
    const-string v0, "HTCCamera.LastTakingPictureTriggerSource"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v11, v1, v9}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    .line 821
    const-string v0, "HTCCamera.PreviewSize"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v11, v1, v9}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    .line 822
    const-string v0, "HTCCamera.RecordingState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    .line 823
    const-string v0, "HTCCamera.Rotation"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    .line 824
    const-string v0, "HTCCamera.SelfTimerInterval"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    .line 825
    const-string v0, "HTCCamera.SettingsMenuState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    .line 826
    const-string v0, "HTCCamera.StorageState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    .line 827
    const-string v0, "HTCCamera.TakingPictureState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    .line 828
    const-string v0, "HTCCamera.ZoomRange"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v11, v1, v9}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    .line 829
    const-string v0, "HTCCamera.ZoomValue"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->zoomValue:Lcom/android/camera/property/Property;

    .line 830
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, v0, v6

    .line 831
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor() - Create properties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 835
    const-string v0, "HTCCamera.Activated"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->activatedEvent:Lcom/android/camera/event/Event;

    .line 836
    const-string v0, "HTCCamera.AutoFocusCanceled"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    .line 837
    const-string v0, "HTCCamera.AutoFocusCanceling"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->autoFocusCancelingEvent:Lcom/android/camera/event/Event;

    .line 838
    const-string v0, "HTCCamera.CameraClosed"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->cameraClosedEvent:Lcom/android/camera/event/Event;

    .line 839
    const-string v0, "HTCCamera.CaptureButtonCanceled"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonCanceledEvent:Lcom/android/camera/event/Event;

    .line 840
    const-string v0, "HTCCamera.CaptureButtonClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonClickedEvent:Lcom/android/camera/event/Event;

    .line 841
    const-string v0, "HTCCamera.CaptureButtonLongPressed"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonLongPressedEvent:Lcom/android/camera/event/Event;

    .line 842
    const-string v0, "HTCCamera.CaptureButtonPressed"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonPressedEvent:Lcom/android/camera/event/Event;

    .line 843
    const-string v0, "HTCCamera.CaptureButtonReleased"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonReleasedEvent:Lcom/android/camera/event/Event;

    .line 844
    const-string v0, "HTCCamera.ClosingMenuItemClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->closingMenuItemClickedEvent:Lcom/android/camera/event/Event;

    .line 845
    const-string v0, "HTCCamera.Deactivated"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    .line 846
    const-string v0, "HTCCamera.ExternalCommentReceived"

    sget-object v1, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/android/camera/event/Event;

    .line 847
    const-string v0, "HTCCamera.FlashButtonClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->flashButtonClickedEvent:Lcom/android/camera/event/Event;

    .line 848
    const-string v0, "HTCCamera.KeyDown"

    sget-object v1, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    .line 849
    const-string v0, "HTCCamera.KeyUp"

    sget-object v1, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->keyUpEvent:Lcom/android/camera/event/Event;

    .line 850
    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "HTCCamera.MediaDeleted"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    .line 851
    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "HTCCamera.MediaSaved"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mediaSavedEvent:Lcom/android/camera/event/Event;

    .line 852
    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "HTCCamera.MediaSaveFailed"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    .line 853
    const-string v0, "HTCCamera.MediaScannerFinished"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mediaScannerFinishedEvent:Lcom/android/camera/event/Event;

    .line 854
    const-string v0, "HTCCamera.MediaScannerStarted"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mediaScannerStartedEvent:Lcom/android/camera/event/Event;

    .line 855
    const-string v0, "HTCCamera.NewIntent"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    .line 856
    const-string v0, "HTCCamera.Pausing"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    .line 857
    const-string v0, "HTCCamera.PopupOpening"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->popupOpeningEvent:Lcom/android/camera/event/Event;

    .line 858
    const-string v0, "HTCCamera.PopupOutsideTouched"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->popupOutsideTouchEvent:Lcom/android/camera/event/Event;

    .line 859
    const-string v0, "HTCCamera.PreviewStarting"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->previewStartingEvent:Lcom/android/camera/event/Event;

    .line 860
    const-string v0, "HTCCamera.QueryConfirmDeletingMediaMessage"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->queryConfirmDeletingMediaMessageEvent:Lcom/android/camera/event/Event;

    .line 861
    const-string v0, "HTCCamera.QueryMediaToSetAs"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->queryMediaToSetAsEvent:Lcom/android/camera/event/Event;

    .line 862
    const-string v0, "HTCCamera.QueryMediaToShare"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->queryMediaToShareEvent:Lcom/android/camera/event/Event;

    .line 863
    const-string v0, "HTCCamera.ResolutionSelected"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->resolutionSelectedEvent:Lcom/android/camera/event/Event;

    .line 864
    const-string v0, "HTCCamera.RestartingCamera"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->restartingCameraEvent:Lcom/android/camera/event/Event;

    .line 865
    const-string v0, "HTCCamera.Resuming"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    .line 866
    const-string v0, "HTCCamera.ReviewAnimationCompleted"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->reviewAnimationCompletedEvent:Lcom/android/camera/event/Event;

    .line 867
    const-string v0, "HTCCamera.SelfFinishing"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    .line 868
    const-string v0, "HTCCamera.SelfTimerCountDown"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/android/camera/event/Event;

    .line 869
    const-string v0, "HTCCamera.Stopping"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    .line 870
    const-string v0, "HTCCamera.StorageEjected"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->storageEjectedEvent:Lcom/android/camera/event/Event;

    .line 871
    const-string v0, "HTCCamera.StorageMounted"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->storageMountedEvent:Lcom/android/camera/event/Event;

    .line 872
    const-string v0, "HTCCamera.StorageUnmounted"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->storageUnmountedEvent:Lcom/android/camera/event/Event;

    .line 873
    const-string v0, "HTCCamera.ThumbnailButtonClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->thumbnailButtonClickedEvent:Lcom/android/camera/event/Event;

    .line 874
    const-string v0, "HTCCamera.TouchPreview"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->touchPreviewEvent:Lcom/android/camera/event/Event;

    .line 876
    const-string v0, "HTCCamera.FocusPointUpdate"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->focusPointUpdateEvent:Lcom/android/camera/event/Event;

    .line 877
    const-string v0, "HTCCamera.ShowFocusing"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusingEvent:Lcom/android/camera/event/Event;

    .line 878
    const-string v0, "HTCCamera.ShowFocusSucess"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusSucessEvent:Lcom/android/camera/event/Event;

    .line 879
    const-string v0, "HTCCamera.ShowFocusFail"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusFailEvent:Lcom/android/camera/event/Event;

    .line 880
    const-string v0, "HTCCamera.ShowFocusEnd"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusEndEvent:Lcom/android/camera/event/Event;

    .line 882
    const-string v0, "ScenesMenu.ShareKeyForSettingMenuEvent"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->shareKeyForEffectListViewEvent:Lcom/android/camera/event/Event;

    .line 883
    const-string v0, "ScenesMenu.ShareKeyForSettingMenuEvent"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->shareKeyForScenesMenuEvent:Lcom/android/camera/event/Event;

    .line 884
    const-string v0, "SettingsMenu.ShareKeyForSettingMenuEvent"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->shareKeyForSettingMenuEvent:Lcom/android/camera/event/Event;

    .line 886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, v0, v6

    .line 887
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor() - Create events : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 891
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 892
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 893
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 894
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 895
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 896
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 897
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 898
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 899
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 900
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 901
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 904
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->touchPreviewEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, v3}, Lcom/android/camera/event/Event;->disableLogs(I)V

    .line 906
    const-string v0, "HTCCamera"

    const-string v1, "Constructor() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    return-void

    .line 785
    :cond_0
    const-string v0, "HTCCamera.CameraType"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    goto/16 :goto_0
.end method

.method private QueryToggleStorage()V
    .locals 5

    .prologue
    .line 4935
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v2, :cond_1

    .line 4968
    :cond_0
    :goto_0
    return-void

    .line 4938
    :cond_1
    const-string v1, ""

    .line 4939
    .local v1, szOut:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4940
    const v2, 0x7f0a01ec

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4945
    :goto_1
    new-instance v2, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a01ea

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x2040151

    new-instance v4, Lcom/android/camera/HTCCamera$18;

    invoke-direct {v4, p0}, Lcom/android/camera/HTCCamera$18;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x2040152

    new-instance v4, Lcom/android/camera/HTCCamera$17;

    invoke-direct {v4, p0}, Lcom/android/camera/HTCCamera$17;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 4966
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateDialogManager:Lcom/android/camera/IRotateDialogManager;

    if-eqz v2, :cond_0

    .line 4967
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateDialogManager:Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;)Lcom/android/camera/Handle;

    goto :goto_0

    .line 4942
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_2
    const v2, 0x7f0a01eb

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/camera/HTCCamera;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/HTCCamera;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/HTCCamera;Lcom/android/camera/CaptureHandle;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CaptureHandle;J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->leaveQuickLaunchState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showFocusEnd()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    return v0
.end method

.method static synthetic access$1404(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    return v0
.end method

.method static synthetic access$1406(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startAccelerometer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IViewFinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/HTCCamera;Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onPreviewSurfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/HTCCamera;Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onPreviewSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/HTCCamera;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onAutoFocusCanceled(Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/HTCCamera;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onAutoFocusFinished(Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/HTCCamera;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onAutoFocusStarting(Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnDestory()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/CameraSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->linkToCameraThread()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/HTCCamera;Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->onCameraThreadEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/HTCCamera;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->onCameraThreadPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/HTCCamera;Lcom/android/camera/RecordingLimitState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRecordingLimitStateChanged(Lcom/android/camera/RecordingLimitState;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/HTCCamera;Lcom/android/camera/imaging/Size;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/HTCCamera;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onZoomValueChanged(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/HTCCamera;Lcom/android/camera/ExternalCommandEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onExternalCommandReceived(Lcom/android/camera/ExternalCommandEventArgs;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/HTCCamera;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onStorageEjected(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/HTCCamera;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onStorageMounted(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/HTCCamera;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onStorageUnmounted(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThreadBlockReason;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onCameraThreadBlocked(Lcom/android/camera/CameraThreadBlockReason;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/HTCCamera;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/camera/HTCCamera;->mInitSpan:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/HTCCamera;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/android/camera/HTCCamera;->mInitSpan:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/camera/HTCCamera;->mBaseZoom:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/HTCCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/android/camera/HTCCamera;->mBaseZoom:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/HTCCamera;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->countDownSelfTimer(II)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onCameraThreadRunning()V

    return-void
.end method

.method private final autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;)Z
    .locals 1
    .parameter "focusMode"
    .parameter "focusLocations"

    .prologue
    .line 4393
    invoke-direct {p0, p1, p2, p2}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 15
    .parameter "focusMode"
    .parameter "focusLocations"
    .parameter "meteringLocations"

    .prologue
    .line 4402
    if-nez p1, :cond_0

    .line 4404
    const-string v10, "focusMode"

    invoke-static {v10}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4405
    const/4 v10, 0x0

    .line 4553
    .end local p2
    .end local p3
    :goto_0
    return v10

    .line 4407
    .restart local p2
    .restart local p3
    :cond_0
    if-nez p2, :cond_1

    .line 4409
    const-string v10, "focusPoints"

    invoke-static {v10}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4410
    const/4 v10, 0x0

    goto :goto_0

    .line 4412
    :cond_1
    if-nez p3, :cond_2

    .line 4414
    const-string v10, "meteringPoints"

    invoke-static {v10}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4415
    const/4 v10, 0x0

    goto :goto_0

    .line 4419
    :cond_2
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v10, :cond_3

    .line 4421
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - No camera thread"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4422
    const/4 v10, 0x0

    goto :goto_0

    .line 4424
    :cond_3
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v10, :cond_5

    .line 4426
    :cond_4
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - Activity is paused or idle"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4427
    const/4 v10, 0x0

    goto :goto_0

    .line 4431
    :cond_5
    iget v10, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v10, :cond_6

    .line 4433
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 4434
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 4442
    :cond_6
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v10, v10, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_8

    sget-object v10, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    move-object/from16 v0, p1

    if-ne v0, v10, :cond_8

    .line 4444
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - Focus mode is sensor, but canAutoFocus is false"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4445
    const/4 v10, 0x0

    goto :goto_0

    .line 4437
    :cond_7
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - Cannot cancel auto-focus"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4438
    const/4 v10, 0x0

    goto :goto_0

    .line 4448
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v10

    if-nez v10, :cond_9

    .line 4450
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - Cannot trigger focus"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4451
    const/4 v10, 0x0

    goto :goto_0

    .line 4455
    :cond_9
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - Block capture UI"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4456
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v11, "Auto focusing"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 4459
    const-string v10, "HTCCamera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoFocus() - Focus mode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4460
    move-object/from16 v0, p2

    instance-of v10, v0, [Landroid/graphics/PointF;

    if-eqz v10, :cond_a

    move-object/from16 v10, p2

    .line 4462
    check-cast v10, [Landroid/graphics/PointF;

    move-object v3, v10

    check-cast v3, [Landroid/graphics/PointF;

    .line 4463
    .local v3, focusPoints:[Landroid/graphics/PointF;
    array-length v10, v3

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    .line 4464
    const-string v10, "HTCCamera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoFocus() - Focus point = ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v3, v12

    iget v12, v12, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v3, v12

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4479
    .end local v3           #focusPoints:[Landroid/graphics/PointF;
    :cond_a
    :goto_1
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v10, v11, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4480
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4481
    iget v10, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v10, :cond_b

    .line 4482
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 4489
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4490
    .local v2, focusAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4493
    .local v5, meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    move-object/from16 v0, p2

    instance-of v10, v0, [Landroid/graphics/PointF;

    if-eqz v10, :cond_f

    .line 4495
    check-cast p2, [Landroid/graphics/PointF;

    .end local p2
    move-object/from16 v7, p2

    check-cast v7, [Landroid/graphics/PointF;

    .line 4496
    .local v7, points:[Landroid/graphics/PointF;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v10, v7

    if-ge v4, v10, :cond_10

    .line 4498
    aget-object v6, v7, v4

    .line 4499
    .local v6, point:Landroid/graphics/PointF;
    new-instance v8, Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    const/high16 v11, 0x3e00

    sub-float/2addr v10, v11

    iget v11, v6, Landroid/graphics/PointF;->y:F

    const/high16 v12, 0x3e00

    sub-float/2addr v11, v12

    iget v12, v6, Landroid/graphics/PointF;->x:F

    const/high16 v13, 0x3e00

    add-float/2addr v12, v13

    iget v13, v6, Landroid/graphics/PointF;->y:F

    const/high16 v14, 0x3e00

    add-float/2addr v13, v14

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4500
    .local v8, rect:Landroid/graphics/RectF;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4496
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4465
    .end local v2           #focusAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    .end local v4           #i:I
    .end local v5           #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    .end local v6           #point:Landroid/graphics/PointF;
    .end local v7           #points:[Landroid/graphics/PointF;
    .end local v8           #rect:Landroid/graphics/RectF;
    .restart local v3       #focusPoints:[Landroid/graphics/PointF;
    .restart local p2
    :cond_c
    sget-boolean v10, Lcom/android/camera/LOG;->DEBUG:Z

    if-eqz v10, :cond_a

    .line 4467
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4468
    .local v1, buffer:Ljava/lang/StringBuffer;
    const-string v10, "autoFocus() - Focus point = {"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4469
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    array-length v10, v3

    if-ge v4, v10, :cond_e

    .line 4471
    if-eqz v4, :cond_d

    .line 4472
    const/16 v10, 0x2c

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4473
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v4

    iget v11, v11, Landroid/graphics/PointF;->x:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v4

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4469
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4475
    :cond_e
    const-string v10, "}"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4476
    const-string v10, "HTCCamera"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4503
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #focusPoints:[Landroid/graphics/PointF;
    .end local v4           #i:I
    .restart local v2       #focusAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    .restart local v5       #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    :cond_f
    move-object/from16 v0, p2

    instance-of v10, v0, [Landroid/graphics/RectF;

    if-eqz v10, :cond_10

    .line 4505
    check-cast p2, [Landroid/graphics/RectF;

    .end local p2
    move-object/from16 v9, p2

    check-cast v9, [Landroid/graphics/RectF;

    .line 4507
    .local v9, rects:[Landroid/graphics/RectF;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    array-length v10, v9

    if-ge v4, v10, :cond_10

    .line 4508
    aget-object v10, v9, v4

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4507
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4512
    .end local v4           #i:I
    .end local v9           #rects:[Landroid/graphics/RectF;
    :cond_10
    move-object/from16 v0, p3

    instance-of v10, v0, [Landroid/graphics/PointF;

    if-eqz v10, :cond_11

    .line 4514
    check-cast p3, [Landroid/graphics/PointF;

    .end local p3
    move-object/from16 v7, p3

    check-cast v7, [Landroid/graphics/PointF;

    .line 4515
    .restart local v7       #points:[Landroid/graphics/PointF;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    array-length v10, v7

    if-ge v4, v10, :cond_12

    .line 4517
    aget-object v6, v7, v4

    .line 4518
    .restart local v6       #point:Landroid/graphics/PointF;
    new-instance v8, Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    const/high16 v11, 0x3e00

    sub-float/2addr v10, v11

    iget v11, v6, Landroid/graphics/PointF;->y:F

    const/high16 v12, 0x3e00

    sub-float/2addr v11, v12

    iget v12, v6, Landroid/graphics/PointF;->x:F

    const/high16 v13, 0x3e00

    add-float/2addr v12, v13

    iget v13, v6, Landroid/graphics/PointF;->y:F

    const/high16 v14, 0x3e00

    add-float/2addr v13, v14

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4519
    .restart local v8       #rect:Landroid/graphics/RectF;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4515
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4522
    .end local v4           #i:I
    .end local v6           #point:Landroid/graphics/PointF;
    .end local v7           #points:[Landroid/graphics/PointF;
    .end local v8           #rect:Landroid/graphics/RectF;
    .restart local p3
    :cond_11
    move-object/from16 v0, p3

    instance-of v10, v0, [Landroid/graphics/RectF;

    if-eqz v10, :cond_12

    .line 4524
    check-cast p3, [Landroid/graphics/RectF;

    .end local p3
    move-object/from16 v9, p3

    check-cast v9, [Landroid/graphics/RectF;

    .line 4526
    .restart local v9       #rects:[Landroid/graphics/RectF;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_6
    array-length v10, v9

    if-ge v4, v10, :cond_12

    .line 4527
    aget-object v10, v9, v4

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4526
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 4530
    .end local v4           #i:I
    .end local v9           #rects:[Landroid/graphics/RectF;
    :cond_12
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    if-eqz v10, :cond_14

    .line 4532
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v2, v5}, Lcom/android/camera/IAutoFocusController;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/android/camera/Handle;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    .line 4533
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    if-eqz v10, :cond_13

    .line 4534
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - Handle : \'"

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v12, v12, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v13, "\'"

    invoke-static {v10, v11, v12, v13}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4553
    :goto_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 4536
    :cond_13
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - No focus handle"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 4540
    :cond_14
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - No IAutoFocusController interface"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4543
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v10, v11}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 4544
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 4547
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 4548
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4549
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private broadcastStopFM()V
    .locals 0

    .prologue
    .line 4906
    return-void
.end method

.method private broadcastStopMusic()V
    .locals 0

    .prologue
    .line 4914
    return-void
.end method

.method private broadcastStopVoiceRecording()V
    .locals 3

    .prologue
    .line 4891
    const-string v1, "HTCCamera"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4892
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.soundrecorder.recordingservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4893
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4894
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 4895
    const-string v1, "HTCCamera"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4897
    return-void
.end method

.method private changetoCameraMode(Z)V
    .locals 4
    .parameter "isUiOnly"

    .prologue
    const/4 v3, 0x0

    .line 2348
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change mode to Camera, isUiOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 2350
    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Camera - but current mode is Camera !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    :goto_0
    return-void

    .line 2354
    :cond_0
    if-nez p1, :cond_1

    .line 2356
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->changeMode(Lcom/android/camera/CameraMode;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    .line 2357
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    .line 2358
    const-string v0, "HTCCamera"

    const-string v1, "changetoCameraMode() - Handle : "

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2361
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "changetoCameraMode() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    if-nez p1, :cond_2

    .line 2364
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2365
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    .line 2373
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2375
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_3

    .line 2376
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    .line 2379
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_0

    .line 2368
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v1, "Starting preview"

    invoke-interface {v0, v1, v3}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    .line 2369
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2370
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private changetoVideoMode(Z)V
    .locals 5
    .parameter "isUiOnly"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2384
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change mode to Video, isUiOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 2386
    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Video - but current mode is Video !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    :cond_0
    :goto_0
    return-void

    .line 2394
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    .line 2397
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopMusic()V

    .line 2400
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopNotesRecording()V

    .line 2402
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    .line 2403
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0, v4}, Lcom/android/camera/IAudioManager;->requestAudioFocus(I)V

    .line 2405
    :cond_2
    if-nez p1, :cond_3

    .line 2407
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->changeMode(Lcom/android/camera/CameraMode;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    .line 2408
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    .line 2409
    const-string v0, "HTCCamera"

    const-string v1, "changetoVideoMode() - Handle : "

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2412
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "changetoVideoMode() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    if-nez p1, :cond_4

    .line 2415
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2416
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    .line 2424
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2427
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    if-ne v0, v1, :cond_7

    .line 2428
    :cond_5
    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_0

    .line 2419
    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v1, "Starting preview"

    invoke-interface {v0, v1, v3}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    .line 2420
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2421
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 2429
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    if-ne v0, v1, :cond_0

    .line 2430
    sget-object v0, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto/16 :goto_0
.end method

.method private checkFlash()V
    .locals 4

    .prologue
    .line 3237
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3238
    .local v0, value:Z
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3239
    return-void

    .line 3237
    .end local v0           #value:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkStartMode(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1279
    instance-of v1, p0, Lcom/android/camera/CameraServiceEntry;

    if-eqz v1, :cond_1

    .line 1280
    sget-object v1, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    .line 1287
    :goto_0
    const-string v1, "RequestedFrom"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1288
    .local v0, requester:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1290
    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1291
    sget-object v1, Lcom/android/camera/CameraStartMode;->Album:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    .line 1314
    :cond_0
    :goto_1
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStartMode() - Start mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    return-void

    .line 1281
    .end local v0           #requester:Ljava/lang/String;
    :cond_1
    instance-of v1, p0, Lcom/android/camera/VideoServiceEntry;

    if-eqz v1, :cond_2

    .line 1282
    sget-object v1, Lcom/android/camera/CameraStartMode;->GenericServiceCamcorder:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_0

    .line 1284
    :cond_2
    sget-object v1, Lcom/android/camera/CameraStartMode;->Generic:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_0

    .line 1292
    .restart local v0       #requester:Ljava/lang/String;
    :cond_3
    const-string v1, "captureSquare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1293
    sget-object v1, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    .line 1294
    :cond_4
    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1295
    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    .line 1296
    :cond_5
    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1298
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v2, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    if-ne v1, v2, :cond_6

    .line 1299
    sget-object v1, Lcom/android/camera/CameraStartMode;->MmsPhoto:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    .line 1301
    :cond_6
    sget-object v1, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    .line 1303
    :cond_7
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1305
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v2, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    if-ne v1, v2, :cond_8

    .line 1306
    sget-object v1, Lcom/android/camera/CameraStartMode;->NotesPhoto:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    .line 1308
    :cond_8
    sget-object v1, Lcom/android/camera/CameraStartMode;->NotesVideo:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    .line 1311
    :cond_9
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStartMode() - Unknown service requester : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private closeCaptureUI()V
    .locals 3

    .prologue
    .line 3132
    const-string v0, "HTCCamera"

    const-string v1, "closeCaptureUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3137
    :cond_0
    return-void
.end method

.method private completeCapture(Lcom/android/camera/CaptureHandle;J)V
    .locals 12
    .parameter "captureHandle"
    .parameter "delay"

    .prologue
    const/16 v1, 0x277a

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 5084
    if-nez p1, :cond_0

    .line 5086
    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - Null capture handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5184
    :goto_0
    return-void

    .line 5089
    :cond_0
    const-string v0, "HTCCamera"

    const-string v4, "completeCapture() - Handle : "

    const-string v5, ", camera mode : "

    iget-object v6, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-static {v0, v4, p1, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5092
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v4, :cond_a

    .line 5095
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v4, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v4}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 5112
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x320

    cmp-long v0, v4, v8

    if-gtz v0, :cond_4

    move v7, v3

    .line 5113
    .local v7, hasPendingTakingPicture:Z
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v4, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v7, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionHandle:Lcom/android/camera/SessionHandle;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSessionHandle:Lcom/android/camera/SessionHandle;

    if-eq v0, v4, :cond_5

    .line 5119
    :cond_2
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v1, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 5132
    :goto_2
    if-nez v7, :cond_3

    .line 5133
    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 5136
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/CaptureHandle;)V

    goto :goto_0

    .line 5098
    .end local v7           #hasPendingTakingPicture:Z
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 5100
    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - Invalid photo capture handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5101
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeCapture() - Current photo capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5104
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 5106
    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - Invalid video capture handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5107
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeCapture() - Current video capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v7, v2

    .line 5112
    goto :goto_1

    .line 5122
    .restart local v7       #hasPendingTakingPicture:Z
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 5123
    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    goto :goto_2

    .line 5126
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 5127
    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    goto :goto_2

    .line 5141
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gtz v0, :cond_9

    .line 5144
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v1, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 5157
    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_6

    .line 5159
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_7

    .line 5160
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Reviewing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5166
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_8

    .line 5167
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->open()V

    goto/16 :goto_0

    .line 5147
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 5148
    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    goto :goto_3

    .line 5151
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 5152
    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    goto :goto_3

    .line 5162
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Reviewing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    .line 5170
    :cond_8
    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - No action screen to open"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5171
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/CaptureHandle;)V

    goto/16 :goto_0

    .line 5175
    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    new-array v4, v11, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    move v3, v2

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 5177
    .end local v7           #hasPendingTakingPicture:Z
    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_b

    .line 5179
    const-string v0, "HTCCamera"

    const-string v4, "completeCapture() - Called from another thread"

    invoke-static {v0, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5180
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    new-array v4, v11, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v1, v2, v2, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5183
    :cond_b
    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - Cannot show action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5095
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 5119
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5144
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private countDownSelfTimer(II)V
    .locals 11
    .parameter "totalSeconds"
    .parameter "remainingSeconds"

    .prologue
    .line 3300
    const-string v0, "HTCCamera"

    const-string v1, "countDownSelfTimer("

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "/"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3320
    if-lez p2, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/HTCCamera;->mSelfTimerStartTime:J

    sub-long v7, v0, v2

    .line 3324
    .local v7, actualElapsedTime:J
    sub-int v0, p1, p2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sub-long v9, v7, v0

    .line 3325
    .local v9, diff:J
    const-wide/16 v0, 0x3e8

    sub-long v5, v0, v9

    .line 3326
    .local v5, interval:J
    const-wide/16 v0, 0x384

    cmp-long v0, v5, v0

    if-gez v0, :cond_3

    .line 3327
    const-wide/16 v5, 0x384

    .line 3330
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/4 v1, 0x6

    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 3333
    if-ne p2, p1, :cond_1

    .line 3336
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3339
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 3340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    .line 3343
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    .line 3344
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->requestAudioFocus()V

    .line 3348
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/OneValueEventArgs;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3351
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    .line 3352
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCountDownSoundHandle:Lcom/android/camera/Handle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    .line 3381
    .end local v5           #interval:J
    .end local v7           #actualElapsedTime:J
    .end local v9           #diff:J
    :cond_2
    :goto_1
    return-void

    .line 3328
    .restart local v5       #interval:J
    .restart local v7       #actualElapsedTime:J
    .restart local v9       #diff:J
    :cond_3
    const-wide/16 v0, 0x44c

    cmp-long v0, v5, v0

    if-lez v0, :cond_0

    .line 3329
    const-wide/16 v5, 0x44c

    goto :goto_0

    .line 3357
    .end local v5           #interval:J
    .end local v7           #actualElapsedTime:J
    .end local v9           #diff:J
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v1, "Taking picture"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    .line 3360
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3363
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_5

    .line 3365
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCountDownEndSoundHandle:Lcom/android/camera/Handle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    .line 3366
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    .line 3370
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_6

    .line 3371
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    const-string v1, "Taking picture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    .line 3374
    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3375
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3378
    const-string v0, "HTCCamera"

    const-string v1, "countDownSelfTimer() - Take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3379
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->takePicture(Z)Lcom/android/camera/CaptureHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    goto :goto_1
.end method

.method private doOnDestory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2155
    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/UIComponentManager;->removeComponents()V

    .line 2159
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/UIComponentManager;->release()V

    .line 2162
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->exit()V

    .line 2164
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2167
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2175
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2177
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0}, Lcom/android/camera/IntentManager;->releaseIntentManager()V

    .line 2179
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    .line 2182
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 2183
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    .line 2185
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 2186
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->releaseCameraThread()V

    .line 2187
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    .line 2188
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 2192
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    .line 2194
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v1, "CAMCORDER_MODE=OFF"

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 2195
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    .line 2198
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_3

    .line 2200
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->releaseResource()V

    .line 2201
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    .line 2205
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "Destroy events"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 2209
    const-string v0, "HTCCamera"

    const-string v1, "Destroy properties"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 2213
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->release()V

    .line 2216
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera$MainHandler;->release()V

    .line 2219
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    if-eqz v0, :cond_4

    .line 2221
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    invoke-virtual {v0}, Lcom/android/camera/debug/ThreadMonitor;->abort()V

    .line 2222
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    .line 2225
    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    return-void

    .line 2165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doOnResume_after_preview()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1757
    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    if-nez v4, :cond_0

    .line 1760
    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - not need to do"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    :goto_0
    return-void

    .line 1763
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    .line 1767
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v4}, Lcom/android/camera/IntentManager;->resetLaunchedby()V

    .line 1769
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1770
    .local v1, partitionFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1771
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "HTC_IME_CURRENT_STATE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1775
    .local v2, sipFilter:Landroid/content/IntentFilter;
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1776
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1782
    :goto_1
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    .line 1785
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/CameraStorageLocationSettings;->readFromDatabase(Landroid/content/ContentResolver;)Lcom/android/camera/io/StorageSlot;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 1786
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v5, v4}, Lcom/android/camera/CameraThread;->changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V

    .line 1787
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    .line 1790
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v4, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1793
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 1795
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 1814
    sget-object v4, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v4}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v4}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1816
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    const-string v5, "pref_sdcard_state"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1818
    .local v3, state:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v4}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1820
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->QueryToggleStorage()V

    .line 1822
    .end local v3           #state:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    .line 1824
    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1777
    :catch_0
    move-exception v0

    .line 1778
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "HTCCamera"

    const-string v5, "registerReceiver failed!!"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private initializeCaptureUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1103
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUiInitialized:Z

    if-eqz v1, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1105
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUiInitialized:Z

    .line 1107
    const-string v1, "HTCCamera"

    const-string v2, "initializeCaptureUI() - Start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const v1, 0x7f08002c

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1111
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUiContainer:Landroid/view/ViewGroup;

    .line 1114
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

    sget-object v2, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/UIComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    .line 1117
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->enableAutoInitialization(Z)V

    .line 1120
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->linkToOptionalServiceComponents()V

    .line 1123
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 1125
    const-string v1, "HTCCamera"

    const-string v2, "initializeCaptureUI() - End"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTapCaptureEnabled()Z
    .locals 2

    .prologue
    .line 4134
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isTapCaptureEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isTapCaptureFrontEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveQuickLaunchState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8020
    const-string v0, "HTCCamera"

    const-string v1, "leaveQuickLaunchState()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8023
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8034
    :cond_0
    :goto_0
    return-void

    .line 8025
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8029
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_2

    .line 8030
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->setFirstFrameCacheState(Z)V

    .line 8033
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private linkToCameraThread()V
    .locals 10

    .prologue
    .line 5895
    const-string v8, "HTCCamera"

    const-string v9, "linkToCameraThread() - Start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5898
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 5899
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    if-nez v1, :cond_0

    .line 5901
    const-string v8, "HTCCamera"

    const-string v9, "linkToCameraThread() - No camera thread"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5997
    :goto_0
    return-void

    .line 5906
    :cond_0
    new-instance v2, Lcom/android/camera/HTCCamera$21;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$21;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 5921
    .local v2, eventHandler:Lcom/android/camera/event/EventHandler;
    iget-object v8, v1, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 5922
    iget-object v8, v1, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 5923
    iget-object v8, v1, Lcom/android/camera/CameraThread;->captureStartedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 5924
    iget-object v8, v1, Lcom/android/camera/CameraThread;->captureStoppedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 5925
    iget-object v8, v1, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 5926
    iget-object v8, v1, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 5927
    iget-object v8, v1, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 5928
    iget-object v8, v1, Lcom/android/camera/CameraThread;->modeChangedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 5929
    iget-object v8, v1, Lcom/android/camera/CameraThread;->modeChangeFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 5930
    iget-object v8, v1, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 5931
    iget-object v8, v1, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 5932
    iget-object v8, v1, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 5935
    new-instance v0, Lcom/android/camera/HTCCamera$22;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$22;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 5948
    .local v0, callback:Lcom/android/camera/property/PropertyChangedCallback;
    new-instance v4, Lcom/android/camera/HTCCamera$23;

    invoke-direct {v4, p0}, Lcom/android/camera/HTCCamera$23;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 5964
    .local v4, recLimitStateChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<Lcom/android/camera/RecordingLimitState;>;"
    iget-object v8, v1, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v8, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 5965
    iget-object v8, v1, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v8, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 5966
    iget-object v8, v1, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v8, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 5967
    iget-object v8, v1, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v8, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 5968
    iget-object v8, v1, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v8, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 5971
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v8

    const-class v9, Lcom/android/camera/IRecordingLimitController;

    invoke-virtual {v8, v9}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/IRecordingLimitController;

    .line 5972
    .local v5, recordingLimitController:Lcom/android/camera/IRecordingLimitController;
    if-eqz v5, :cond_1

    .line 5973
    iget-object v8, v5, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    invoke-virtual {v8, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 5978
    :goto_1
    iget-object v8, v1, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/imaging/Size;

    .line 5979
    .local v3, previewSize:Lcom/android/camera/imaging/Size;
    iget-object v8, v1, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 5980
    .local v7, zoomvalue:Ljava/lang/Integer;
    iget-object v8, v1, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Range;

    .line 5982
    .local v6, zoomRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    new-instance v8, Lcom/android/camera/HTCCamera$24;

    invoke-direct {v8, p0, v3, v7, v6}, Lcom/android/camera/HTCCamera$24;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/imaging/Size;Ljava/lang/Integer;Lcom/android/camera/Range;)V

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5996
    const-string v8, "HTCCamera"

    const-string v9, "linkToCameraThread() - End"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5975
    .end local v3           #previewSize:Lcom/android/camera/imaging/Size;
    .end local v6           #zoomRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    .end local v7           #zoomvalue:Ljava/lang/Integer;
    :cond_1
    const-string v8, "HTCCamera"

    const-string v9, "linkToCameraThread() - No IRecordingLimitController interface"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private linkToOptionalServiceComponents()V
    .locals 3

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/IAudioManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAudioManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    .line 1177
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-nez v0, :cond_0

    .line 1178
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    .line 1182
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    if-eqz v0, :cond_4

    .line 1184
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/android/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$8;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$8;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1192
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/android/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$9;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$9;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1200
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/android/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$10;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$10;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1213
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/effect/IEffectControlUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectControlUI;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    .line 1214
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    if-nez v0, :cond_1

    .line 1215
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IEffectControlUI interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/IEffectManager;

    .line 1219
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v0, :cond_5

    .line 1221
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 1222
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 1228
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IRotateDialogManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateDialogManager:Lcom/android/camera/IRotateDialogManager;

    .line 1229
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateDialogManager:Lcom/android/camera/IRotateDialogManager;

    if-eqz v0, :cond_6

    .line 1232
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateDialogManager:Lcom/android/camera/IRotateDialogManager;

    iget-object v1, v1, Lcom/android/camera/IRotateDialogManager;->hasDialog:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 1238
    :goto_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    if-nez v0, :cond_2

    .line 1240
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/IObjectTracker;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IObjectTracker;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    .line 1241
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    if-nez v0, :cond_2

    .line 1242
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IObjectTracker interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/IUIRotationManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    .line 1247
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_7

    .line 1250
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/HTCCamera$11;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$11;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1260
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->deviceOrientation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/android/camera/IUIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 1261
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isRotationLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 1262
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 1268
    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/ISharedBackgroundWorker;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ISharedBackgroundWorker;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    .line 1269
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    if-nez v0, :cond_3

    .line 1270
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find ISharedBackgroundWorker interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    :cond_3
    return-void

    .line 1210
    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1225
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IEffectManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1235
    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1265
    :cond_7
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IUIRotationManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private linkToRequiredServiceComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1134
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v2, Lcom/android/camera/ICaptureUIBlockManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ICaptureUIBlockManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    .line 1135
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    if-nez v0, :cond_0

    .line 1137
    const-string v0, "HTCCamera"

    const-string v2, "linkToRequiredServiceComponents() - No ICaptureUIBlockManager interface"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1167
    :goto_0
    return v0

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v2, Lcom/android/camera/IViewFinder;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IViewFinder;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;

    .line 1143
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;

    if-nez v0, :cond_1

    .line 1145
    const-string v0, "HTCCamera"

    const-string v2, "linkToRequiredServiceComponents() - No IViewFinder interface"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1146
    goto :goto_0

    .line 1148
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;

    iget-object v0, v0, Lcom/android/camera/IViewFinder;->isPreviewSurfaceCreated:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/HTCCamera$7;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$7;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1167
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onActionScreenClosed(Lcom/android/camera/CaptureHandle;)V
    .locals 6
    .parameter "captureHandle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5333
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5334
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Capture handle : \'"

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5335
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Camera mode : "

    iget-object v2, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5336
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionScreenClosed() - Current mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5339
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    .line 5341
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v1, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5367
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_3

    .line 5370
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Complete video snapshot"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5371
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5372
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 5375
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5377
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Complete video recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5378
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5379
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5380
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 5381
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->completeRecording(Lcom/android/camera/CaptureHandle;)V

    .line 5442
    :cond_2
    :goto_1
    return-void

    .line 5346
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    .line 5347
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    .line 5350
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    goto :goto_0

    .line 5356
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    .line 5357
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    .line 5360
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    goto :goto_0

    .line 5387
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5389
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5390
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5394
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5395
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Power warning"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5396
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    goto :goto_1

    .line 5401
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5403
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5406
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_2

    .line 5407
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v4, v0}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    goto :goto_1

    .line 5412
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_a

    .line 5415
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5417
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Take picture immediately"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5418
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 5419
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5420
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5423
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Cannot take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5427
    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5429
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionHandle:Lcom/android/camera/SessionHandle;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionHandle:Lcom/android/camera/SessionHandle;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSessionHandle:Lcom/android/camera/SessionHandle;

    if-ne v0, v1, :cond_b

    .line 5430
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->startPreview()Z

    .line 5439
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 5441
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5432
    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-direct {p0, v5, v0}, Lcom/android/camera/HTCCamera;->startPreview(ZLcom/android/camera/CameraType;)Z

    goto :goto_2

    .line 5435
    :cond_c
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v4, v0}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    goto :goto_2

    .line 5341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onActionScreenOpening()V
    .locals 0

    .prologue
    .line 5325
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 5326
    return-void
.end method

.method private onAutoFocusCanceled(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 7562
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusCanceled() - Handle : \'"

    iget-object v2, p1, Lcom/android/camera/AutoFocusEventArgs;->handle:Lcom/android/camera/Handle;

    iget-object v2, v2, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7565
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v1, p1, Lcom/android/camera/AutoFocusEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v0, v1, :cond_1

    .line 7567
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusCanceled() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7568
    const-string v1, "HTCCamera"

    const-string v2, "onAutoFocusCanceled() - Current handle : \'"

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v0, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7583
    :goto_1
    return-void

    .line 7568
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 7573
    :cond_1
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    .line 7574
    iput v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 7575
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7578
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7579
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 7582
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_1
.end method

.method private onAutoFocusFinished(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 7426
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusFinished() - Handle : \'"

    iget-object v2, p1, Lcom/android/camera/AutoFocusEventArgs;->handle:Lcom/android/camera/Handle;

    iget-object v2, v2, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7429
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v1, p1, Lcom/android/camera/AutoFocusEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v0, v1, :cond_1

    .line 7431
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusFinished() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7432
    const-string v1, "HTCCamera"

    const-string v2, "onAutoFocusFinished() - Current handle : \'"

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v0, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7457
    :goto_1
    return-void

    .line 7432
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 7435
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    .line 7438
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Face:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_2

    .line 7440
    iget-boolean v0, p1, Lcom/android/camera/AutoFocusEventArgs;->isSuccessful:Z

    if-eqz v0, :cond_3

    .line 7442
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7443
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusSucessEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 7450
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7454
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->performActionsAfterAutoFocus()V

    .line 7455
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v1, 0x53

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_1

    .line 7446
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusFailEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_2
.end method

.method private onAutoFocusStarting(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 7387
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v1, p1, Lcom/android/camera/AutoFocusEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v0, v1, :cond_1

    .line 7419
    :cond_0
    :goto_0
    return-void

    .line 7389
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7391
    iget-object v0, p1, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_0

    .line 7395
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_4

    .line 7398
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusingSoundHandle:Lcom/android/camera/Handle;

    if-nez v0, :cond_2

    .line 7399
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v1, 0x7f060007

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusingSoundHandle:Lcom/android/camera/Handle;

    .line 7401
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_3

    sget-boolean v0, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    if-eqz v0, :cond_6

    .line 7404
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "Play Focusing Sound"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7405
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFocusingSoundHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1, v2, v2}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    .line 7415
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7417
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 7407
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7409
    const-string v0, "HTCCamera"

    const-string v1, "Play Focusing Sound"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7410
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFocusingSoundHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1, v2, v2}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    goto :goto_1
.end method

.method private onCameraModeChangeFailed(Lcom/android/camera/CameraModeChangeEventArgs;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 7356
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to switing mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/CameraModeChangeEventArgs;->targetMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7359
    iget-object v1, p1, Lcom/android/camera/CameraModeChangeEventArgs;->targetMode:Lcom/android/camera/CameraMode;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    .line 7360
    .local v0, mode:Lcom/android/camera/CameraMode;
    :goto_0
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {v0}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 7371
    :goto_1
    iget-object v1, p1, Lcom/android/camera/CameraModeChangeEventArgs;->targetMode:Lcom/android/camera/CameraMode;

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7373
    const-string v1, "HTCCamera"

    const-string v2, "onCameraModeChangeFailed() - Cancel video recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7374
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7378
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onPreviewStarted(Lcom/android/camera/CameraPreviewEventArgs;)V

    .line 7379
    return-void

    .line 7359
    .end local v0           #mode:Lcom/android/camera/CameraMode;
    :cond_1
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    goto :goto_0

    .line 7363
    .restart local v0       #mode:Lcom/android/camera/CameraMode;
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->changetoCameraMode(Z)V

    goto :goto_1

    .line 7366
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->changetoVideoMode(Z)V

    goto :goto_1

    .line 7360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCameraModeChanged(Lcom/android/camera/CameraModeChangeEventArgs;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 7338
    const-string v0, "HTCCamera"

    const-string v1, "onCameraModeChanged() - Handle : "

    iget-object v2, p1, Lcom/android/camera/CameraModeChangeEventArgs;->handle:Lcom/android/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7341
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    iget-object v1, p1, Lcom/android/camera/CameraModeChangeEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v0, v1, :cond_0

    .line 7343
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraModeChanged() - Invalid handle, current handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7349
    :goto_0
    return-void

    .line 7348
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    goto :goto_0
.end method

.method private onCameraThreadBlocked(Lcom/android/camera/CameraThreadBlockReason;)V
    .locals 3
    .parameter "blockReason"

    .prologue
    .line 8093
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraThreadBlocked("

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

    .line 8095
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8096
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 8097
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 8098
    return-void
.end method

.method private onCameraThreadEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 1
    .parameter "event"
    .parameter "sender"
    .parameter "e"

    .prologue
    .line 6244
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    .line 6272
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 6248
    .restart local p3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_2

    .line 6249
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraClosedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, p0, p3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    .line 6250
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_3

    .line 6251
    check-cast p3, Lcom/android/camera/CaptureEventArgs;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onCaptureFailed(Lcom/android/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 6252
    .restart local p3
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureStartedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_4

    .line 6253
    check-cast p3, Lcom/android/camera/CaptureEventArgs;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onCaptureStarted(Lcom/android/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 6254
    .restart local p3
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureStoppedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_5

    .line 6255
    check-cast p3, Lcom/android/camera/CaptureEventArgs;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onCaptureStopped(Lcom/android/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 6256
    .restart local p3
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_6

    .line 6257
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    check-cast p3, Lcom/android/camera/MediaEventArgs;

    .end local p3
    invoke-virtual {v0, p0, p3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    .line 6258
    .restart local p3
    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_7

    .line 6259
    check-cast p3, Lcom/android/camera/io/MediaSaveEventArgs;

    .end local p3
    invoke-virtual {p0, p3}, Lcom/android/camera/HTCCamera;->onMediaSaved(Lcom/android/camera/io/MediaSaveEventArgs;)V

    goto :goto_0

    .line 6260
    .restart local p3
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_8

    .line 6261
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    check-cast p3, Lcom/android/camera/io/MediaSaveEventArgs;

    .end local p3
    invoke-virtual {v0, p0, p3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    .line 6262
    .restart local p3
    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->modeChangedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_9

    .line 6263
    check-cast p3, Lcom/android/camera/CameraModeChangeEventArgs;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onCameraModeChanged(Lcom/android/camera/CameraModeChangeEventArgs;)V

    goto :goto_0

    .line 6264
    .restart local p3
    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->modeChangeFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_a

    .line 6265
    check-cast p3, Lcom/android/camera/CameraModeChangeEventArgs;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onCameraModeChangeFailed(Lcom/android/camera/CameraModeChangeEventArgs;)V

    goto :goto_0

    .line 6266
    .restart local p3
    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_b

    .line 6267
    check-cast p3, Lcom/android/camera/CameraPreviewEventArgs;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onPreviewStarted(Lcom/android/camera/CameraPreviewEventArgs;)V

    goto :goto_0

    .line 6268
    .restart local p3
    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_c

    .line 6269
    check-cast p3, Lcom/android/camera/CameraPreviewEventArgs;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onPreviewStartFailed(Lcom/android/camera/CameraPreviewEventArgs;)V

    goto/16 :goto_0

    .line 6270
    .restart local p3
    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_0

    .line 6271
    check-cast p3, Lcom/android/camera/CameraPreviewEventArgs;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onPreviewStarting(Lcom/android/camera/CameraPreviewEventArgs;)V

    goto/16 :goto_0
.end method

.method private onCameraThreadPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .parameter "property"
    .parameter "e"

    .prologue
    .line 6281
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    .line 6301
    :cond_0
    :goto_0
    return-void

    .line 6285
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_2

    .line 6287
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 6288
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/imaging/Size;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V

    goto :goto_0

    .line 6290
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_3

    .line 6292
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 6293
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->onStorageSlotChanged(Lcom/android/camera/io/StorageSlot;Z)V

    goto :goto_0

    .line 6295
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_4

    .line 6296
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/StorageState;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onStorageStateChanged(Lcom/android/camera/io/StorageState;)V

    goto :goto_0

    .line 6297
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_5

    .line 6298
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onZoomValueChanged(Ljava/lang/Integer;)V

    goto :goto_0

    .line 6299
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_0

    .line 6300
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/Range;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onCameraThreadRunning()V
    .locals 3

    .prologue
    .line 5850
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5853
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_0

    .line 5855
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - No camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5887
    :goto_0
    return-void

    .line 5860
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 5863
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    new-instance v1, Lcom/android/camera/HTCCamera$20;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$20;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5872
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Cannot link to camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5876
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5879
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5881
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5882
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/HTCCamera;->startPreview(ZLcom/android/camera/CameraType;)Z

    .line 5883
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->performActionsOnPreviewSurfaceCreated()V

    .line 5886
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCaptureFailed(Lcom/android/camera/CaptureEventArgs;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 5266
    iget-object v0, p1, Lcom/android/camera/CaptureEventArgs;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 5267
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onTakingPictureFailed(Lcom/android/camera/CaptureEventArgs;)V

    .line 5270
    :goto_0
    return-void

    .line 5269
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRecordingFailed(Lcom/android/camera/CaptureEventArgs;)V

    goto :goto_0
.end method

.method private onCaptureStarted(Lcom/android/camera/CaptureEventArgs;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 5214
    const-string v1, "HTCCamera"

    const-string v2, "onCaptureStarted() - Capture handle : \'"

    iget-object v3, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v3, v3, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5215
    const-string v1, "HTCCamera"

    const-string v2, "onCaptureStarted() - Camera mode : "

    iget-object v3, p1, Lcom/android/camera/CaptureEventArgs;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5218
    const/4 v0, 0x0

    .line 5219
    .local v0, isVideoSnapshot:Z
    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_5

    .line 5221
    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v1, v2, :cond_2

    .line 5223
    const-string v1, "HTCCamera"

    const-string v2, "onCaptureStarted() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5224
    const-string v2, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureStarted() - Current capture handle : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, v1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5250
    :cond_0
    :goto_1
    return-void

    .line 5224
    :cond_1
    const-string v1, "null"

    goto :goto_0

    .line 5227
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5229
    const-string v1, "HTCCamera"

    const-string v2, "onCaptureStarted() - Video snapshot"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5230
    const/4 v0, 0x1

    .line 5244
    :cond_3
    if-nez v0, :cond_4

    .line 5245
    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->prepareActionScreen(Lcom/android/camera/CaptureHandle;)V

    .line 5248
    :cond_4
    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    .line 5249
    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onRecordingStarted(Lcom/android/camera/CaptureHandle;)V

    goto :goto_1

    .line 5235
    :cond_5
    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v1, v2, :cond_3

    .line 5237
    const-string v1, "HTCCamera"

    const-string v2, "onCaptureStarted() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5238
    const-string v2, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureStarted() - Current capture handle : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, v1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v1, "null"

    goto :goto_2
.end method

.method private onCaptureStopped(Lcom/android/camera/CaptureEventArgs;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 5257
    iget-object v0, p1, Lcom/android/camera/CaptureEventArgs;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 5258
    iget-object v0, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onRecordingStopped(Lcom/android/camera/CaptureHandle;)V

    .line 5259
    :cond_0
    return-void
.end method

.method private onEffectPanelStateChanged(Lcom/android/camera/UIState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 7699
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$UIState:[I

    invoke-virtual {p1}, Lcom/android/camera/UIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 7718
    :cond_0
    :goto_0
    return-void

    .line 7703
    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "Effect Panel is opening"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7705
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v2, :cond_0

    .line 7706
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 7707
    const-string v0, "HTCCamera"

    const-string v1, "onEffectPanelOpening when focusing, cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7708
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 7709
    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - onEffectPanelOpening and cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7711
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "onPanelMove when focusing, but device can\'t cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7699
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onExternalCommandReceived(Lcom/android/camera/ExternalCommandEventArgs;)V
    .locals 8
    .parameter "e"

    .prologue
    const/4 v7, 0x0

    .line 7904
    iget-object v1, p1, Lcom/android/camera/ExternalCommandEventArgs;->command:Ljava/lang/String;

    .line 7905
    .local v1, command:Ljava/lang/String;
    const-string v3, "activate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7906
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    .line 7944
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/ExternalCommandEventArgs;->setHandled()V

    .line 7945
    :cond_1
    :goto_1
    return-void

    .line 7907
    :cond_2
    const-string v3, "deactivate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7908
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->deactivate()V

    goto :goto_0

    .line 7909
    :cond_3
    const-string v3, "help"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7911
    const-string v3, "HTCCamera"

    const-string v4, "activate"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 7912
    const-string v3, "HTCCamera"

    const-string v4, "deactivate"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 7913
    const-string v3, "HTCCamera"

    const-string v4, "switch_camera CAMERA_TYPE(Main/Main3D/Front/Front3D)"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 7914
    const-string v3, "HTCCamera"

    const-string v4, "take_picture"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7917
    :cond_4
    const-string v3, "switch_camera"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7919
    iget-object v3, p1, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 7923
    :try_start_0
    const-class v3, Lcom/android/camera/CameraType;

    iget-object v4, p1, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    .line 7924
    .local v0, cameraType:Lcom/android/camera/CameraType;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7925
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot switch camera to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7927
    .end local v0           #cameraType:Lcom/android/camera/CameraType;
    :catch_0
    move-exception v2

    .line 7929
    .local v2, ex:Ljava/lang/Throwable;
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown camera \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7933
    .end local v2           #ex:Ljava/lang/Throwable;
    :cond_5
    const-string v3, "HTCCamera"

    const-string v4, "No camera specified"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7935
    :cond_6
    const-string v3, "take_picture"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7937
    const-string v3, "External Command"

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7938
    const-string v3, "HTCCamera"

    const-string v4, "Take one picture"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7940
    :cond_7
    const-string v3, "HTCCamera"

    const-string v4, "Cannot take picture"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onPopupBubbleShown()V
    .locals 1

    .prologue
    .line 5745
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5746
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    .line 5747
    :cond_0
    return-void
.end method

.method private onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V
    .locals 2
    .parameter "previewSize"

    .prologue
    .line 6406
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6407
    return-void
.end method

.method private onPreviewStartFailed(Lcom/android/camera/CameraPreviewEventArgs;)V
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 6414
    const-string v3, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewStartFailed() - Result : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p1, Lcom/android/camera/CameraPreviewEventArgs;->startResult:Lcom/android/camera/CameraPreviewStartResult;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/camera/CameraPreviewEventArgs;->startResult:Lcom/android/camera/CameraPreviewStartResult;

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6417
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_1

    .line 6419
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - No camera thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6499
    :goto_1
    return-void

    :cond_0
    move-object v1, v2

    .line 6414
    goto :goto_0

    .line 6422
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6424
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - Activity is pausing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6427
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6429
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - Activity is paused"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6432
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    iget-object v3, p1, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v1, v3, :cond_4

    .line 6434
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6435
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - Handle : "

    iget-object v3, p1, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6436
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - Current handle : "

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 6441
    :cond_4
    iget-object v1, p1, Lcom/android/camera/CameraPreviewEventArgs;->startResult:Lcom/android/camera/CameraPreviewStartResult;

    sget-object v3, Lcom/android/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/android/camera/CameraPreviewStartResult;

    if-ne v1, v3, :cond_5

    .line 6443
    const-string v1, "HTCCamera"

    const-string v3, "onPreviewStartFailed() - No camera token, start preview again"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6444
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->startPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    goto :goto_1

    .line 6449
    :cond_5
    iget v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    .line 6450
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewStartFailed() - FailureCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6451
    iget v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_6

    .line 6453
    const-string v1, "HTCCamera"

    const-string v3, "onPreviewStartFailed() - Start preview again"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6454
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->startPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    goto/16 :goto_1

    .line 6460
    :cond_6
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraPreviewStartResult:[I

    iget-object v2, p1, Lcom/android/camera/CameraPreviewEventArgs;->startResult:Lcom/android/camera/CameraPreviewStartResult;

    invoke-virtual {v2}, Lcom/android/camera/CameraPreviewStartResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 6484
    const/4 v0, 0x0

    .line 6487
    .local v0, stringId:I
    :goto_2
    if-eqz v0, :cond_7

    .line 6488
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6491
    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_8

    .line 6492
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->cancelStartingPreview()V

    .line 6495
    :cond_8
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - Finish activity"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6496
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6497
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 6498
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_1

    .line 6463
    .end local v0           #stringId:I
    :pswitch_0
    const v0, 0x7f0a0063

    .line 6464
    .restart local v0       #stringId:I
    goto :goto_2

    .line 6466
    .end local v0           #stringId:I
    :pswitch_1
    const v0, 0x7f0a0253

    .line 6467
    .restart local v0       #stringId:I
    goto :goto_2

    .line 6469
    .end local v0           #stringId:I
    :pswitch_2
    const v0, 0x7f0a0061

    .line 6470
    .restart local v0       #stringId:I
    goto :goto_2

    .line 6472
    .end local v0           #stringId:I
    :pswitch_3
    const v0, 0x7f0a005c

    .line 6473
    .restart local v0       #stringId:I
    goto :goto_2

    .line 6475
    .end local v0           #stringId:I
    :pswitch_4
    const v0, 0x7f0a005d

    .line 6476
    .restart local v0       #stringId:I
    goto :goto_2

    .line 6478
    .end local v0           #stringId:I
    :pswitch_5
    const v0, 0x7f0a005e

    .line 6479
    .restart local v0       #stringId:I
    goto :goto_2

    .line 6481
    .end local v0           #stringId:I
    :pswitch_6
    const v0, 0x7f0a0060

    .line 6482
    .restart local v0       #stringId:I
    goto :goto_2

    .line 6460
    nop

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

.method private onPreviewStarted(Lcom/android/camera/CameraPreviewEventArgs;)V
    .locals 9
    .parameter "e"

    .prologue
    const/16 v8, 0x277b

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 6552
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6553
    if-eqz p1, :cond_0

    .line 6554
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Handle : "

    iget-object v4, p1, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    invoke-static {v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6559
    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    iget-object v3, p1, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v2, v3, :cond_1

    .line 6561
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Invalid handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6562
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Current handle : "

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    invoke-static {v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6706
    :goto_1
    return-void

    .line 6556
    :cond_0
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - No preview starting information"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6567
    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 6568
    .local v0, isPreviewStarting:Z
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6569
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    .line 6570
    iput v7, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    .line 6573
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6575
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - isActivityPaused = true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6580
    :cond_2
    if-eqz v0, :cond_3

    .line 6582
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v2, v3}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 6583
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    .line 6584
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - UnBlock Capture UI - after start preview"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6588
    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isSwitchingCamera:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6590
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v1, "SWITCH_TO_MAIN_CAMERA"

    .line 6591
    .local v1, name:Ljava/lang/String;
    :goto_2
    invoke-static {v1}, Lcom/android/camera/LOG;->printPerformanceFinishLog(Ljava/lang/String;)V

    .line 6595
    .end local v1           #name:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFlash()V

    .line 6598
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6601
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->initializeCaptureUI()V

    .line 6605
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnResume_after_preview()V

    .line 6609
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6613
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v2, :cond_6

    .line 6614
    new-instance v2, Landroid/view/ScaleGestureDetector;

    new-instance v3, Lcom/android/camera/HTCCamera$ScaleListener;

    invoke-direct {v3, p0, v6}, Lcom/android/camera/HTCCamera$ScaleListener;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V

    invoke-direct {v2, p0, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 6617
    :cond_6
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6618
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6619
    :cond_7
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6624
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 6625
    iget v2, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    if-lez v2, :cond_8

    .line 6626
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startAccelerometer()V

    .line 6629
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 6630
    sput-boolean v7, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    .line 6631
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    .line 6632
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - mIsUIReady = true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6633
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    if-ne v2, v3, :cond_9

    .line 6634
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6635
    :cond_9
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    if-ne v2, v3, :cond_a

    .line 6636
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6650
    :cond_a
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Unblock UI to prevent unexpected behavior"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6651
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6653
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v2, v3}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 6654
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    .line 6655
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v2, :cond_b

    .line 6656
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    .line 6657
    :cond_b
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    .line 6659
    :cond_c
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6661
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v2, v3}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 6662
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 6663
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v2, :cond_d

    .line 6664
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    .line 6665
    :cond_d
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    .line 6669
    :cond_e
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 6671
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 6673
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Start recording"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6674
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    .line 6695
    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-virtual {v2, v8}, Lcom/android/camera/HTCCamera$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 6696
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v8, v3, v4}, Lcom/android/camera/HTCCamera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 6699
    :cond_10
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    if-eqz v2, :cond_11

    .line 6701
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->printDataReadyPerformanceLog()V

    .line 6702
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    .line 6705
    :cond_11
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6590
    :cond_12
    const-string v1, "SWITCH_TO_FRONT_CAMERA"

    goto/16 :goto_2

    .line 6678
    :cond_13
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Switch back to photo mode"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6679
    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    goto :goto_3

    .line 6682
    :cond_14
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v2, :cond_f

    .line 6684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gtz v2, :cond_15

    .line 6686
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Take picture immediately"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6687
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 6688
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    goto :goto_3

    .line 6691
    :cond_15
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    goto :goto_3
.end method

.method private onPreviewStarting(Lcom/android/camera/CameraPreviewEventArgs;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 6506
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarting() - Handle : "

    iget-object v2, p1, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6509
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6511
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarting() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6545
    :goto_0
    return-void

    .line 6514
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    .line 6516
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarting() - Screen-save mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6521
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    iget-object v1, p1, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v0, v1, :cond_2

    .line 6523
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarting() - Invalid handle, current handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6542
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->previewStartingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 6544
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarting() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPreviewStopped()V
    .locals 3

    .prologue
    .line 6713
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStopped() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 6717
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    .line 6720
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6721
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6722
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6723
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6725
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStopped() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6726
    return-void
.end method

.method private onPreviewSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const/4 v3, 0x1

    .line 6309
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewSurfaceCreated() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6310
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 6313
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6315
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewSurfaceCreated() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6358
    :cond_0
    :goto_0
    return-void

    .line 6320
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 6322
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    if-eqz v0, :cond_2

    .line 6324
    const-string v0, "HTCCamera"

    const-string v2, "onPreviewSurfaceCreated() - Surface is already created"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6325
    monitor-exit v1

    goto :goto_0

    .line 6328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6327
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    .line 6328
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6329
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsOnResumeCompleted:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_6

    .line 6330
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->setFirstFrameCacheState(Z)V

    .line 6331
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6333
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6335
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewSurfaceCreated() - Start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6336
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    .line 6356
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6357
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->performActionsOnPreviewSurfaceCreated()V

    goto :goto_0

    .line 6339
    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewSurfaceCreated() - Camera thread is not running, start preview later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6343
    :cond_5
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewSurfaceCreated() - Start preview later, taking picture state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recording state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6344
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    if-eqz v0, :cond_3

    .line 6346
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->printDataReadyPerformanceLog()V

    .line 6347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    goto :goto_1

    .line 6351
    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewSurfaceCreated() - SurfaceCreated before onResume, set mIdle = true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6352
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    goto :goto_1
.end method

.method private onPreviewSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 6365
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 6367
    :try_start_0
    const-string v0, "HTCCamera"

    const-string v2, "onPreviewSurfaceDestroyed()"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    .line 6369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 6370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActionPerformedOnPreviewSurfaceCreated:Z

    .line 6371
    monitor-exit v1

    .line 6372
    return-void

    .line 6371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onRecordingFailed(Lcom/android/camera/CaptureEventArgs;)V
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    .line 7101
    const-string v1, "HTCCamera"

    const-string v2, "onRecordingFailed() - Start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7102
    const-string v2, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordingFailed() - Handle : \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, v1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7103
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordingFailed() - Reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/CaptureEventArgs;->failedReason:Lcom/android/camera/CaptureFailedReason;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7106
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v2, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v1, v2, :cond_2

    .line 7108
    const-string v1, "HTCCamera"

    const-string v2, "onRecordingFailed() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7109
    const-string v2, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordingFailed() - Current handle : \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, v1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7167
    :goto_2
    return-void

    .line 7102
    :cond_0
    const-string v1, "null"

    goto :goto_0

    .line 7109
    :cond_1
    const-string v1, "null"

    goto :goto_1

    .line 7112
    :cond_2
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 7115
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7117
    const-string v1, "HTCCamera"

    const-string v2, "onRecordingFailed() - isActivityPaused = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7118
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 7123
    :cond_3
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CaptureFailedReason:[I

    iget-object v2, p1, Lcom/android/camera/CaptureEventArgs;->failedReason:Lcom/android/camera/CaptureFailedReason;

    invoke-virtual {v2}, Lcom/android/camera/CaptureFailedReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 7140
    :goto_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7141
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7144
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7145
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 7148
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v1, :cond_4

    .line 7150
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    .line 7151
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    .line 7155
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 7158
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7160
    const-string v1, "HTCCamera"

    const-string v2, "onRecordingFailed() - Switch back to photo mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7161
    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v5, v1}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    .line 7164
    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->setFingerGestureEnable(Z)V

    .line 7166
    const-string v1, "HTCCamera"

    const-string v2, "onRecordingFailed() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7126
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showStorageToast()V

    goto :goto_3

    .line 7130
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v2, Lcom/android/camera/IToastManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IToastManager;

    .line 7131
    .local v0, toastManager:Lcom/android/camera/IToastManager;
    if-eqz v0, :cond_6

    .line 7132
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "low_internal_storage_view_text"

    const-string v3, "string"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    goto :goto_3

    .line 7134
    :cond_6
    const-string v1, "HTCCamera"

    const-string v2, "onRecordingFailed() - No IToastManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 7123
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onRecordingLimitStateChanged(Lcom/android/camera/RecordingLimitState;)V
    .locals 5
    .parameter "limitState"

    .prologue
    .line 6887
    const-string v2, "HTCCamera"

    const-string v3, "onRecordingLimitStateChanged("

    const-string v4, ")"

    invoke-static {v2, v3, p1, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6891
    sget-object v2, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingLimitState:[I

    invoke-virtual {p1}, Lcom/android/camera/RecordingLimitState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 6909
    :goto_0
    return-void

    .line 6894
    :pswitch_0
    const v1, 0x7f0a0045

    .line 6904
    .local v1, toastMessageId:I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v3, Lcom/android/camera/IToastManager;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IToastManager;

    .line 6905
    .local v0, toastManager:Lcom/android/camera/IToastManager;
    if-eqz v0, :cond_0

    .line 6906
    invoke-virtual {v0, v1}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    goto :goto_0

    .line 6897
    .end local v0           #toastManager:Lcom/android/camera/IToastManager;
    .end local v1           #toastMessageId:I
    :pswitch_1
    const v1, 0x7f0a003a

    .line 6898
    .restart local v1       #toastMessageId:I
    goto :goto_1

    .line 6908
    .restart local v0       #toastManager:Lcom/android/camera/IToastManager;
    :cond_0
    const-string v2, "HTCCamera"

    const-string v3, "onRecordingLimitStateChanged() - No IToastManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6891
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onRecordingStarted(Lcom/android/camera/CaptureHandle;)V
    .locals 13
    .parameter "captureHandle"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 6743
    const-string v4, "HTCCamera"

    const-string v5, "onRecordingStarted() - Start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6744
    const-string v4, "HTCCamera"

    const-string v5, "onRecordingStarted() - Capture handle : \'"

    iget-object v6, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v7, "\'"

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6747
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v4, p1, :cond_1

    .line 6749
    const-string v5, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRecordingStarted() - Invalid handle, current handle : \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v4, v4, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6792
    :goto_1
    return-void

    .line 6749
    :cond_0
    const-string v4, "null"

    goto :goto_0

    .line 6754
    :cond_1
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    if-eq v4, v5, :cond_2

    .line 6756
    const-string v4, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRecordingStarted() - current state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6761
    :cond_2
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    .line 6765
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateRecordingTime()V

    .line 6768
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isSlowMotionMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 6770
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v4

    const-class v5, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v4, v5}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ICaptureResolutionManager;

    .line 6771
    .local v2, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-eqz v2, :cond_5

    .line 6773
    iget-object v4, v2, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Resolution;

    .line 6774
    .local v1, resolution:Lcom/android/camera/Resolution;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->isMmsVideo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6776
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v5, Lcom/android/camera/IToastManager;

    invoke-virtual {v4, v5}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IToastManager;

    .line 6777
    .local v3, toastManager:Lcom/android/camera/IToastManager;
    if-eqz v3, :cond_4

    .line 6779
    const-string v5, "%d %s"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v4, v2, Lcom/android/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v11

    const v4, 0x7f0a01da

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6780
    .local v0, message:Ljava/lang/String;
    const v4, 0x7f0a01db

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v0, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6781
    invoke-virtual {v3, v0}, Lcom/android/camera/IToastManager;->showToast(Ljava/lang/String;)Lcom/android/camera/Handle;

    .line 6791
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #resolution:Lcom/android/camera/Resolution;
    .end local v2           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    .end local v3           #toastManager:Lcom/android/camera/IToastManager;
    :cond_3
    :goto_2
    const-string v4, "HTCCamera"

    const-string v5, "onRecordingStarted() - End"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6784
    .restart local v1       #resolution:Lcom/android/camera/Resolution;
    .restart local v2       #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    .restart local v3       #toastManager:Lcom/android/camera/IToastManager;
    :cond_4
    const-string v4, "HTCCamera"

    const-string v5, "onRecordingStarted() - No IToastManager interface"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6788
    .end local v1           #resolution:Lcom/android/camera/Resolution;
    .end local v3           #toastManager:Lcom/android/camera/IToastManager;
    :cond_5
    const-string v4, "HTCCamera"

    const-string v5, "onRecordingStarted() - No ICaptureResolutionManager interface"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onRecordingStopped(Lcom/android/camera/CaptureHandle;)V
    .locals 5
    .parameter "captureHandle"

    .prologue
    const/4 v4, 0x0

    .line 6799
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopped() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6800
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopped() - Capture handle : \'"

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6803
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 6805
    const-string v1, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingStopped() - Invalid handle, current handle : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v0, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6880
    :goto_1
    return-void

    .line 6805
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 6810
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_2

    .line 6811
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6814
    :cond_2
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 6823
    :goto_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 6824
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 6827
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6830
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6831
    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 6850
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 6853
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 6859
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopped() - Waiting for video snapshot"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6818
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 6864
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6867
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6869
    new-instance v0, Lcom/android/camera/CaptureEventArgs;

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v0, v4, v1}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onTakingPictureFailed(Lcom/android/camera/CaptureEventArgs;)V

    .line 6873
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6874
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 6875
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->completeRecording(Lcom/android/camera/CaptureHandle;)V

    .line 6877
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->setFingerGestureEnable(Z)V

    .line 6879
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopped() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6814
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 6853
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 1509
    return-void
.end method

.method private onStorageEjected(Lcom/android/camera/io/StorageSlot;)V
    .locals 2
    .parameter "storageSlot"

    .prologue
    .line 5755
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    .line 5783
    :cond_0
    :goto_0
    return-void

    .line 5759
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    .line 5762
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v0, v1, :cond_0

    .line 5765
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5780
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 5781
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    goto :goto_0

    .line 5770
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5772
    const-string v0, "HTCCamera"

    const-string v1, "storage eject, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5773
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 5774
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    .line 5765
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onStorageMounted(Lcom/android/camera/io/StorageSlot;)V
    .locals 2
    .parameter "storageSlot"

    .prologue
    .line 5791
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    .line 5811
    :cond_0
    :goto_0
    return-void

    .line 5795
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    .line 5798
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5800
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5803
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->QueryToggleStorage()V

    goto :goto_0

    .line 5809
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 5810
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    goto :goto_0
.end method

.method private onStorageSlotChanged(Lcom/android/camera/io/StorageSlot;Z)V
    .locals 6
    .parameter "slot"
    .parameter "changeFromCameraThread"

    .prologue
    .line 7192
    const-string v0, "HTCCamera"

    const-string v1, "onStorageSlotChanged("

    const-string v3, ", "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7195
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    .line 7197
    const-string v0, "HTCCamera"

    const-string v1, "onStorageSlotChanged() - No settings"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7216
    :cond_0
    :goto_0
    return-void

    .line 7202
    :cond_1
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStorageSlotChanged() - Storage slot has been changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7203
    if-eqz p2, :cond_2

    .line 7205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z

    .line 7206
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z

    .line 7211
    :cond_2
    if-nez p2, :cond_0

    .line 7213
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraThread;->changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V

    .line 7214
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->checkStorageState()V

    goto :goto_0
.end method

.method private onStorageStateChanged(Lcom/android/camera/io/StorageState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 7223
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStorageStateChanged("

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

    .line 7226
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7250
    :cond_0
    :goto_0
    return-void

    .line 7230
    :cond_1
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    invoke-virtual {p1}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 7240
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showStorageToast()V

    .line 7243
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    if-eq v0, v1, :cond_0

    .line 7247
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "onStorageStateChanged() - Close self-timer"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7248
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    goto :goto_0

    .line 7234
    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "onStorageStateChanged() - Close action screen"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7235
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    goto :goto_1

    .line 7230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onStorageUnmounted(Lcom/android/camera/io/StorageSlot;)V
    .locals 2
    .parameter "storageSlot"

    .prologue
    .line 5819
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    .line 5843
    :cond_0
    :goto_0
    return-void

    .line 5823
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    .line 5826
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5841
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 5842
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    goto :goto_0

    .line 5831
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5833
    const-string v0, "HTCCamera"

    const-string v1, "storage unmounted, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5834
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 5835
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    .line 5826
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onTakingPictureFailed(Lcom/android/camera/CaptureEventArgs;)V
    .locals 9
    .parameter "e"

    .prologue
    const/4 v8, 0x0

    .line 7000
    const-string v4, "HTCCamera"

    const-string v5, "onTakingPictureFailed() - Start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7001
    const-string v5, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTakingPictureFailed() - Handle : \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v4, v4, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7002
    const-string v4, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTakingPictureFailed() - Reason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/camera/CaptureEventArgs;->failedReason:Lcom/android/camera/CaptureFailedReason;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7005
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v5, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v4, v5, :cond_2

    .line 7007
    const-string v4, "HTCCamera"

    const-string v5, "onTakingPictureFailed() - Invalid handle"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7008
    const-string v5, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTakingPictureFailed() - Current handle : \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v4, v4, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7094
    :goto_2
    return-void

    .line 7001
    :cond_0
    const-string v4, "null"

    goto :goto_0

    .line 7008
    :cond_1
    const-string v4, "null"

    goto :goto_1

    .line 7011
    :cond_2
    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 7014
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7016
    const-string v4, "HTCCamera"

    const-string v5, "onTakingPictureFailed() - isActivityPaused = true"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7017
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 7021
    :cond_3
    sget-object v5, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/RecordingState;

    invoke-virtual {v4}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 7028
    const/4 v1, 0x0

    .line 7034
    .local v1, isVideoSnapshot:Z
    :goto_3
    if-nez v1, :cond_7

    .line 7035
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->restartPreview()Z

    move-result v0

    .line 7040
    .local v0, isRestartingPreview:Z
    :goto_4
    if-eqz v0, :cond_8

    .line 7042
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7043
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7050
    :goto_5
    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CaptureFailedReason:[I

    iget-object v5, p1, Lcom/android/camera/CaptureEventArgs;->failedReason:Lcom/android/camera/CaptureFailedReason;

    invoke-virtual {v5}, Lcom/android/camera/CaptureFailedReason;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 7063
    const/4 v3, 0x0

    .line 7066
    .local v3, toastTextId:Ljava/lang/Integer;
    :goto_6
    if-eqz v3, :cond_4

    .line 7068
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v5, Lcom/android/camera/IToastManager;

    invoke-virtual {v4, v5}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IToastManager;

    .line 7069
    .local v2, toastManager:Lcom/android/camera/IToastManager;
    if-eqz v2, :cond_9

    .line 7070
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    .line 7076
    .end local v2           #toastManager:Lcom/android/camera/IToastManager;
    :cond_4
    :goto_7
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v4, v5}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7077
    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    .line 7080
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v4, :cond_5

    .line 7082
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v4, v5}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    .line 7083
    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    .line 7087
    :cond_5
    if-nez v1, :cond_6

    .line 7088
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 7091
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 7093
    const-string v4, "HTCCamera"

    const-string v5, "onTakingPictureFailed() - End"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7025
    .end local v0           #isRestartingPreview:Z
    .end local v1           #isVideoSnapshot:Z
    .end local v3           #toastTextId:Ljava/lang/Integer;
    :pswitch_0
    const/4 v1, 0x1

    .line 7026
    .restart local v1       #isVideoSnapshot:Z
    goto :goto_3

    .line 7037
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #isRestartingPreview:Z
    goto :goto_4

    .line 7046
    :cond_8
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    .line 7053
    :pswitch_1
    const v4, 0x7f0a0051

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7054
    .restart local v3       #toastTextId:Ljava/lang/Integer;
    goto :goto_6

    .line 7056
    .end local v3           #toastTextId:Ljava/lang/Integer;
    :pswitch_2
    const/4 v3, 0x0

    .line 7057
    .restart local v3       #toastTextId:Ljava/lang/Integer;
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showStorageToast()V

    goto :goto_6

    .line 7060
    .end local v3           #toastTextId:Ljava/lang/Integer;
    :pswitch_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "low_internal_storage_view_text"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7061
    .restart local v3       #toastTextId:Ljava/lang/Integer;
    goto :goto_6

    .line 7072
    .restart local v2       #toastManager:Lcom/android/camera/IToastManager;
    :cond_9
    const-string v4, "HTCCamera"

    const-string v5, "onTakingPictureFailed() - No IToastManager interface"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 7021
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 7050
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onTakingPictureStateChanged(Lcom/android/camera/TakingPictureState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 6979
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    invoke-virtual {p1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 6993
    :cond_0
    :goto_0
    return-void

    .line 6982
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6983
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0

    .line 6989
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    goto :goto_0

    .line 6979
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onZoomValueChanged(Ljava/lang/Integer;)V
    .locals 0
    .parameter "zoomValue"

    .prologue
    .line 7260
    return-void
.end method

.method private overrideSystemRotateAnimation()V
    .locals 1

    .prologue
    .line 5712
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->overrideSystemRotateAnimation(I)V

    .line 5713
    return-void
.end method

.method private overrideSystemRotateAnimation(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 5716
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideSystemRotateAnimation, type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5717
    invoke-static {p0, p1}, Lcom/htc/wrap/android/app/HtcWrapActivity;->overrideRotateAnimation(Landroid/app/Activity;I)V

    .line 5718
    return-void
.end method

.method private performActionsAfterAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 7472
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7475
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_0

    .line 7476
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - mIsUIReady = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7555
    :goto_0
    return-void

    .line 7479
    :cond_0
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v0, :cond_1

    .line 7480
    const-string v0, "HTCCamera"

    const-string v1, "Enter this state only when interrupt focus !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7481
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - mFocusingState = NO_FOCUSING"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7488
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    packed-switch v0, :pswitch_data_0

    .line 7545
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - unknown focus state !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7549
    :cond_2
    :goto_1
    const-string v0, "HTCCamera"

    const-string v1, "Finish Focus - mFocusingState = NO_FOCUSING"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7550
    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 7552
    sput-boolean v3, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 7554
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7490
    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - UnBlock Capture UI - take focus end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7491
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7492
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    goto :goto_1

    .line 7508
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_2

    .line 7509
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - take focus end, and then take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7510
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7511
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 7512
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - Freeze UI - take focus end, and then take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7513
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    goto :goto_1

    .line 7525
    :pswitch_2
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - UnBlock Capture UI - record after focusing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7526
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7527
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 7528
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_1

    .line 7533
    :pswitch_3
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - UnBlock Capture UI - take picture after focusing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7534
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7535
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 7537
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    goto :goto_1

    .line 7488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private performActionsOnPreviewSurfaceCreated()V
    .locals 2

    .prologue
    .line 6380
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActionPerformedOnPreviewSurfaceCreated:Z

    if-eqz v0, :cond_0

    .line 6398
    :goto_0
    return-void

    .line 6382
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActionPerformedOnPreviewSurfaceCreated:Z

    .line 6384
    const-string v0, "HTCCamera"

    const-string v1, "performActionsOnPreviewSurfaceCreated() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6387
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6390
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->initializeCaptureUI()V

    .line 6394
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "Enable GC"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6395
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 6397
    const-string v0, "HTCCamera"

    const-string v1, "performActionsOnPreviewSurfaceCreated() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private printDataReadyPerformanceLog()V
    .locals 4

    .prologue
    .line 8105
    const/16 v0, 0x130

    const-string v1, "LAUNCH_TIME"

    const-string v2, "LAUNCH"

    const-string v3, "DATA_READY"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->printPerformanceLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8106
    return-void
.end method

.method private saveAndFinish(Landroid/net/Uri;[B)V
    .locals 5
    .parameter "contentUri"
    .parameter "data"

    .prologue
    .line 2610
    if-eqz p1, :cond_2

    .line 2612
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAndFinish() - contentUri = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    if-eqz p2, :cond_1

    .line 2615
    const/4 v1, 0x0

    .line 2617
    .local v1, stream:Ljava/io/OutputStream;
    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2619
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() file - Check directory path"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->createDirectories(Ljava/lang/String;)Z

    .line 2625
    :cond_0
    :try_start_0
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Opening file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 2627
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Writing data"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 2629
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Writing completed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2637
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Closing file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    invoke-static {v1}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 2639
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - File closed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    .end local v1           #stream:Ljava/io/OutputStream;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v3, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2652
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 2653
    return-void

    .line 2631
    .restart local v1       #stream:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 2633
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAndFinish() - Cannot save data to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2637
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Closing file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    invoke-static {v1}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 2639
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - File closed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2637
    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    const-string v3, "HTCCamera"

    const-string v4, "saveAndFinish() - Closing file"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    invoke-static {v1}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 2639
    const-string v3, "HTCCamera"

    const-string v4, "saveAndFinish() - File closed"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 2643
    .end local v1           #stream:Ljava/io/OutputStream;
    :cond_1
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - data = NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2646
    :cond_2
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - contentUri = NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final saveSDCardState()V
    .locals 3

    .prologue
    .line 5735
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 5736
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    const-string v1, "pref_sdcard_state"

    sget-object v2, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5737
    :cond_0
    return-void
.end method

.method private setFingerGestureEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 8112
    :try_start_0
    const-string v2, "wireless_display"

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/WirelessDisplayManager;

    .line 8113
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v1, :cond_0

    .line 8114
    invoke-virtual {v1, p1}, Lcom/htc/service/WirelessDisplayManager;->setFingerGestureEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8122
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    :goto_0
    return-void

    .line 8117
    :catch_0
    move-exception v0

    .line 8119
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HTCCamera"

    const-string v3, "setFingerGestureEnable - not work"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMaxBrightness()V
    .locals 0

    .prologue
    .line 2664
    return-void
.end method

.method private setOldBrightness()V
    .locals 0

    .prologue
    .line 2675
    return-void
.end method

.method private setupEventHandlers()V
    .locals 2

    .prologue
    .line 6152
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$25;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$25;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6162
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageEjectedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$26;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$26;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6172
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageMountedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$27;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$27;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6182
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageUnmountedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$28;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$28;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6190
    return-void
.end method

.method private showFocusEnd()V
    .locals 2

    .prologue
    .line 7464
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusEndEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 7465
    return-void
.end method

.method private showStorageToast()V
    .locals 5

    .prologue
    .line 7268
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7323
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 7270
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v3, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    if-eq v2, v3, :cond_0

    .line 7274
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v3, Lcom/android/camera/IToastManager;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IToastManager;

    .line 7275
    .local v1, toastManager:Lcom/android/camera/IToastManager;
    if-nez v1, :cond_3

    .line 7277
    const-string v2, "HTCCamera"

    const-string v3, "showStorageToast() - No IToastManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7283
    :cond_3
    sget-object v3, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageState;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 7319
    :pswitch_1
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown storage state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7288
    :pswitch_2
    sget-object v2, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7289
    const v0, 0x20400a0

    .line 7322
    .local v0, resID:I
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    goto :goto_0

    .line 7294
    .end local v0           #resID:I
    :pswitch_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v2

    if-nez v2, :cond_5

    .line 7296
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_4

    .line 7297
    const v0, 0x7f0a003c

    .restart local v0       #resID:I
    goto :goto_1

    .line 7299
    .end local v0           #resID:I
    :cond_4
    const v0, 0x7f0a003d

    .restart local v0       #resID:I
    goto :goto_1

    .line 7303
    .end local v0           #resID:I
    :cond_5
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_6

    .line 7304
    const v0, 0x7f0a003e

    .restart local v0       #resID:I
    goto :goto_1

    .line 7306
    .end local v0           #resID:I
    :cond_6
    const v0, 0x7f0a003f

    .line 7308
    .restart local v0       #resID:I
    goto :goto_1

    .line 7310
    .end local v0           #resID:I
    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v2

    if-nez v2, :cond_7

    .line 7311
    const v0, 0x7f0a003a

    .restart local v0       #resID:I
    goto :goto_1

    .line 7313
    .end local v0           #resID:I
    :cond_7
    const v0, 0x7f0a003b

    .line 7314
    .restart local v0       #resID:I
    goto :goto_1

    .line 7316
    .end local v0           #resID:I
    :pswitch_5
    const v0, 0x7f0a0039

    .line 7317
    .restart local v0       #resID:I
    goto :goto_1

    .line 7283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private startAccelerometer()V
    .locals 3

    .prologue
    .line 4839
    const-string v0, "HTCCamera"

    const-string v1, "startAccelerometer() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4842
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    if-nez v0, :cond_0

    .line 4844
    const-string v0, "HTCCamera"

    const-string v1, "startAccelerometer() - CanGSensorEnabled = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4861
    :goto_0
    return-void

    .line 4847
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4849
    const-string v0, "HTCCamera"

    const-string v1, "startAccelerometer() - isAccelerometerStarted = true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4854
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    if-eqz v0, :cond_2

    .line 4855
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartAccelerometerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    .line 4858
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4860
    const-string v0, "HTCCamera"

    const-string v1, "startAccelerometer() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4857
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartAccelerometerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private startPreview(ZLcom/android/camera/CameraType;)Z
    .locals 8
    .parameter "directly"
    .parameter "cameraType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7780
    const-string v0, "HTCCamera"

    const-string v1, "startPreview("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ", "

    const-string v5, ")"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7783
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7785
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Preview is already starting"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7786
    const-string v0, "startPreview()"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    move v0, v6

    .line 7819
    :goto_0
    return v0

    .line 7789
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7791
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Activity is pausing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 7792
    goto :goto_0

    .line 7794
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7796
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 7797
    goto :goto_0

    .line 7799
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_3

    .line 7801
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Camera is deactivated"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 7802
    goto :goto_0

    .line 7804
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_4

    .line 7806
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - No camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 7807
    goto :goto_0

    .line 7811
    :cond_4
    iput v6, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    .line 7812
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v1, "Starting preview"

    invoke-interface {v0, v1, v6}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    .line 7813
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7814
    if-eqz p1, :cond_5

    .line 7815
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->startPreviewDirectly()Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    .line 7818
    :goto_1
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Handle : "

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v7

    .line 7819
    goto :goto_0

    .line 7817
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p2}, Lcom/android/camera/CameraThread;->startPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    goto :goto_1
.end method

.method private stopAccelerometer()V
    .locals 3

    .prologue
    .line 4868
    const-string v0, "HTCCamera"

    const-string v1, "stopAccelerometer() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4871
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4873
    const-string v0, "HTCCamera"

    const-string v1, "stopAccelerometer() - isAccelerometerStarted = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4886
    :goto_0
    return-void

    .line 4878
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    if-eqz v0, :cond_1

    .line 4879
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStopAccelerometerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    .line 4882
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4883
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->accelerometerValues:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [F

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4885
    const-string v0, "HTCCamera"

    const-string v1, "stopAccelerometer() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4881
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStopAccelerometerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private stopNotesRecording()V
    .locals 3

    .prologue
    .line 5725
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.notes.notesrecordingstopped"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5726
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5727
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 5728
    return-void
.end method

.method private stopRecordingIndicator()V
    .locals 2

    .prologue
    .line 3286
    const-string v0, "HTCCamera"

    const-string v1, "stopRecordingIndicator()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3288
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_0

    .line 3289
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3292
    :cond_0
    return-void
.end method

.method private threadAccessCheck()V
    .locals 2

    .prologue
    .line 5554
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 5555
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5556
    :cond_0
    return-void
.end method

.method private unlock3A()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3881
    const-string v2, "HTCCamera"

    const-string v3, "unlock3A()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3884
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v2

    const-class v3, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    .line 3885
    .local v0, afController:Lcom/android/camera/IAutoFocusController;
    if-eqz v0, :cond_0

    .line 3886
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_FocusLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/android/camera/IAutoFocusController;->unlockAutoFocus(Lcom/android/camera/Handle;)V

    .line 3887
    :cond_0
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->m_FocusLockHandle:Lcom/android/camera/Handle;

    .line 3890
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v2

    const-class v3, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IImageSettingsController;

    .line 3891
    .local v1, isController:Lcom/android/camera/IImageSettingsController;
    if-eqz v1, :cond_1

    .line 3893
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_AecLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/android/camera/IImageSettingsController;->unlockAutoExposure(Lcom/android/camera/Handle;)V

    .line 3894
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_AwbLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/android/camera/IImageSettingsController;->unlockAutoWhiteBalance(Lcom/android/camera/Handle;)V

    .line 3896
    :cond_1
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->m_AecLockHandle:Lcom/android/camera/Handle;

    .line 3897
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->m_AwbLockHandle:Lcom/android/camera/Handle;

    .line 3898
    return-void
.end method

.method private updateRecordingTime()V
    .locals 12

    .prologue
    .line 6916
    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6919
    iget-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v8, :cond_0

    .line 6921
    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - mIsUIReady = false"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6972
    :goto_0
    return-void

    .line 6924
    :cond_0
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-eq v8, v9, :cond_1

    .line 6926
    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - isRecording = false"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6931
    :cond_1
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long v6, v8, v10

    .line 6932
    .local v6, seconds:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    sub-long v0, v8, v10

    .line 6933
    .local v0, mCurrentRecordTime_System:J
    const-wide/16 v8, 0x3e8

    iput-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    .line 6934
    iget-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v6

    sub-long v10, v0, v10

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    .line 6935
    iget-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    const-wide/16 v10, 0x320

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 6936
    const-wide/16 v8, 0x320

    iput-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    .line 6943
    :cond_2
    :goto_1
    const-wide/16 v8, 0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_3

    .line 6945
    const-string v8, "HTCCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UnBlock Capture UI - start recorder, unblock time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6946
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v8, v9}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 6947
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 6951
    :cond_3
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6954
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v9, 0x24

    invoke-static {v8, v9}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6957
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v8

    const-class v9, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v8, v9}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ICaptureResolutionManager;

    .line 6958
    .local v5, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-eqz v5, :cond_6

    iget-object v8, v5, Lcom/android/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Duration;

    move-object v2, v8

    .line 6960
    .local v2, maxDuration:Lcom/android/camera/Duration;
    :goto_2
    invoke-virtual {v2}, Lcom/android/camera/Duration;->isInfinite()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 6961
    const-wide v3, 0x7fffffffffffffffL

    .line 6966
    .local v3, remainingTime:J
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_8

    .line 6967
    :cond_4
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    iget-wide v9, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

    .line 6971
    :goto_4
    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6937
    .end local v2           #maxDuration:Lcom/android/camera/Duration;
    .end local v3           #remainingTime:J
    .end local v5           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_5
    iget-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 6938
    const-wide/16 v8, 0x3e8

    iput-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    goto/16 :goto_1

    .line 6958
    .restart local v5       #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_6
    sget-object v2, Lcom/android/camera/Duration;->INFINITE:Lcom/android/camera/Duration;

    goto :goto_2

    .line 6963
    .restart local v2       #maxDuration:Lcom/android/camera/Duration;
    :cond_7
    invoke-virtual {v2}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v8

    sub-long v3, v8, v6

    .restart local v3       #remainingTime:J
    goto :goto_3

    .line 6969
    :cond_8
    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - Timeout"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private updateSelfTimerInterval()V
    .locals 3

    .prologue
    .line 6137
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_0

    .line 6139
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6140
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->mainSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6144
    :cond_0
    :goto_0
    return-void

    .line 6142
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public RequestVideoQualityLevel()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2754
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v1, :cond_1

    .line 2755
    const-string v1, "HTCCamera"

    const-string v2, "isRequestHighQualityVideo() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    :cond_0
    :goto_0
    return v0

    .line 2759
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2762
    :cond_2
    invoke-static {}, Lcom/android/camera/IntentManager;->IsHighVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2763
    const/4 v0, 0x1

    goto :goto_0

    .line 2765
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public activate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4651
    const-string v1, "HTCCamera"

    const-string v2, "activate!!!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4652
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 4653
    :cond_0
    const-string v1, "HTCCamera"

    const-string v2, "activate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4712
    :goto_0
    return-void

    .line 4657
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-nez v1, :cond_2

    .line 4658
    const-string v1, "HTCCamera"

    const-string v2, "activate - mUIHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4662
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v1, :cond_3

    .line 4663
    const-string v1, "HTCCamera"

    const-string v2, "activate in mIdle == false"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4667
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4669
    const-string v1, "HTCCamera"

    const-string v2, "activate() - Activity is pausing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4672
    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4674
    const-string v1, "HTCCamera"

    const-string v2, "activate() - Activity is paused"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4678
    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 4679
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 4680
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4682
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4686
    const-string v1, "HTCCamera"

    const-string v2, "activate() - Block Capture UI - activate!!!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4688
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraThread;->setFirstFrameCacheState(Z)V

    .line 4689
    const/4 v0, 0x0

    .line 4690
    .local v0, isStartPreviewCalled:Z
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4692
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4694
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    .line 4695
    const/4 v0, 0x1

    .line 4702
    :goto_1
    if-nez v0, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    if-eqz v1, :cond_7

    .line 4704
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->printDataReadyPerformanceLog()V

    .line 4705
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    .line 4707
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 4708
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setMaxBrightness()V

    .line 4711
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->activatedEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 4698
    :cond_8
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate() - Current taking picture state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", recording state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Start preview later"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4701
    :cond_9
    const-string v1, "HTCCamera"

    const-string v2, "activate() - Camera thread is not running, start preview later"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final autoFocus(Lcom/android/camera/AutoFocusMode;Landroid/graphics/PointF;)Z
    .locals 2
    .parameter "focusMode"
    .parameter "focusPoint"

    .prologue
    const/4 v0, 0x0

    .line 4374
    if-nez p2, :cond_0

    .line 4376
    const-string v1, "focusPoint"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4381
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/PointF;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/PointF;)Z

    move-result v0

    goto :goto_0
.end method

.method public final autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/PointF;)Z
    .locals 1
    .parameter "focusMode"
    .parameter "focusPoints"

    .prologue
    .line 4385
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/RectF;)Z
    .locals 1
    .parameter "focusMode"
    .parameter "focusAreas"

    .prologue
    .line 4389
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/RectF;[Landroid/graphics/RectF;)Z
    .locals 1
    .parameter "focusMode"
    .parameter "focusAreas"
    .parameter "meteringAreas"

    .prologue
    .line 4397
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 7665
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<*>;"
    .local p2, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<*>;"
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7668
    if-nez p1, :cond_0

    .line 7670
    const-string v0, "source"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 7671
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 7673
    :cond_0
    if-nez p2, :cond_1

    .line 7675
    const-string v0, "target"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 7676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 7678
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7680
    const-string v0, "HTCCamera"

    const-string v1, "bindProperty() - Cannot bind from HTCCamera\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 7683
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7685
    const-string v0, "HTCCamera"

    const-string v1, "bindProperty() - Can only bind to HTCCamera\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 7690
    :cond_3
    const-string v0, "HTCCamera"

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

    .line 7691
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 7692
    return-void
.end method

.method public canFaceFocus()Z
    .locals 2

    .prologue
    .line 4202
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4204
    :cond_0
    const/4 v0, 0x0

    .line 4206
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canSensorFocus()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4176
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_0

    move v0, v1

    .line 4198
    :goto_0
    return v0

    .line 4179
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    move v0, v1

    .line 4180
    goto :goto_0

    .line 4182
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    if-lez v0, :cond_2

    move v0, v1

    .line 4183
    goto :goto_0

    .line 4189
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 4190
    goto :goto_0

    .line 4192
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 4193
    goto :goto_0

    .line 4195
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    if-ne v0, v2, :cond_6

    :cond_5
    move v0, v1

    .line 4196
    goto :goto_0

    :cond_6
    move v0, v2

    .line 4198
    goto :goto_0
.end method

.method public canTriggerFocus()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4141
    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 4171
    :goto_0
    return v0

    .line 4144
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    move v0, v1

    .line 4145
    goto :goto_0

    .line 4154
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 4155
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 4156
    goto :goto_0

    .line 4159
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 4168
    goto :goto_0

    :cond_4
    move v0, v2

    .line 4171
    goto :goto_0
.end method

.method public cancelAutoFocus()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4239
    const-string v2, "HTCCamera"

    const-string v3, "cancelAutoFocus() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4241
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v2, :cond_0

    .line 4243
    const-string v1, "HTCCamera"

    const-string v2, "cancelAutoFocus() - No focusing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4273
    :goto_0
    return v0

    .line 4247
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4248
    const-string v0, "HTCCamera"

    const-string v2, "cancelAutoFocus() return - DisplayDevice.canCancelFocus() = false"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4249
    goto :goto_0

    .line 4252
    :cond_1
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v0, :cond_2

    .line 4253
    const-string v0, "HTCCamera"

    const-string v2, "cancelAutoFocus() return - mFocusingState != FOCUSING_NO_ACTION"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4254
    goto :goto_0

    .line 4257
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->autoFocusCancelingEvent:Lcom/android/camera/event/Event;

    sget-object v3, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4259
    sput-boolean v1, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 4262
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    if-eqz v2, :cond_3

    .line 4263
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/android/camera/IAutoFocusController;->cancelAutoFocus(Lcom/android/camera/Handle;)V

    .line 4264
    :cond_3
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    .line 4266
    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 4267
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4268
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 4269
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 4271
    const-string v1, "HTCCamera"

    const-string v2, "cancelAutoFocus() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final changeZoom(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 5458
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 5459
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5461
    const-string v1, "HTCCamera"

    const-string v2, "changeZoom() - Zoom is locked"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5488
    :goto_0
    return-void

    .line 5464
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_1

    .line 5466
    const-string v1, "HTCCamera"

    const-string v2, "changeZoom() - There is no camera thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5471
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Range;

    .line 5472
    .local v0, range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_4

    .line 5474
    iget-object v1, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 5475
    iget-object v1, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5484
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5487
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto :goto_0

    .line 5476
    :cond_3
    iget-object v1, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 5477
    iget-object v1, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    .line 5480
    :cond_4
    const-string v1, "HTCCamera"

    const-string v2, "changeZoom() - zoomRange is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final closeActionScreen()V
    .locals 2

    .prologue
    .line 5191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 5194
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_0

    .line 5196
    const-string v0, "HTCCamera"

    const-string v1, "No action screen to close"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5207
    :goto_0
    return-void

    .line 5201
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->close(Z)V

    goto :goto_0

    .line 5203
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_2

    .line 5204
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5206
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "Cannot close action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final closeSelfTimer()V
    .locals 3

    .prologue
    .line 3251
    const-string v0, "HTCCamera"

    const-string v1, "closeSelfTimer() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3252
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 3254
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3256
    const-string v0, "HTCCamera"

    const-string v1, "Self timer is not started"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    :goto_0
    return-void

    .line 3259
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3262
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    if-ne v0, v1, :cond_1

    .line 3264
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3265
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3270
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 3272
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 3275
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    .line 3276
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    .line 3278
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - close self timer"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 3280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    .line 3282
    const-string v0, "HTCCamera"

    const-string v1, "closeSelfTimer() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3267
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final completeRecording(Lcom/android/camera/CaptureHandle;)V
    .locals 2
    .parameter "captureHandle"

    .prologue
    .line 5079
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CaptureHandle;J)V

    .line 5080
    return-void
.end method

.method public final completeTakingPicture(Lcom/android/camera/CaptureHandle;)V
    .locals 2
    .parameter "captureHandle"

    .prologue
    .line 5071
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CaptureHandle;J)V

    .line 5072
    return-void
.end method

.method public final completeTakingPicture(Lcom/android/camera/CaptureHandle;J)V
    .locals 0
    .parameter "captureHandle"
    .parameter "delay"

    .prologue
    .line 5075
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CaptureHandle;J)V

    .line 5076
    return-void
.end method

.method public deactivate()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4715
    const-string v1, "HTCCamera"

    const-string v2, "deactivate!!!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4716
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 4717
    :cond_0
    const-string v1, "HTCCamera"

    const-string v2, "deactivate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4804
    :goto_0
    return-void

    .line 4721
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-nez v1, :cond_2

    .line 4722
    const-string v1, "HTCCamera"

    const-string v2, "deactivate - mUIHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4726
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v1, v3, :cond_3

    .line 4727
    const-string v1, "HTCCamera"

    const-string v2, "deactivate in mIdle = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4732
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4734
    const-string v1, "HTCCamera"

    const-string v2, "deactivate() - Activity is pausing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4737
    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4739
    const-string v1, "HTCCamera"

    const-string v2, "deactivate() - Activity is paused"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4743
    :cond_5
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 4745
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    .line 4748
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 4751
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 4753
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-nez v1, :cond_6

    .line 4754
    const v1, 0x7f08002e

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 4755
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    .line 4756
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    new-instance v2, Lcom/android/camera/HTCCamera$16;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$16;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4763
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const v2, 0x7f0800f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 4764
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f0800f2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    .line 4767
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_8

    .line 4768
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v2, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v2, :cond_7

    .line 4769
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a01d9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 4780
    :goto_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 4781
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4783
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 4786
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4788
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4789
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4790
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->cancelStartingPreview()V

    .line 4791
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->cancelOpeningCamera()V

    .line 4792
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 4794
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    .line 4797
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->leaveQuickLaunchState()V

    .line 4800
    new-instance v1, Lcom/android/camera/SessionHandle;

    invoke-direct {v1}, Lcom/android/camera/SessionHandle;-><init>()V

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mSessionHandle:Lcom/android/camera/SessionHandle;

    .line 4803
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 4771
    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a01d6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 4773
    :cond_8
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v2, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v2, :cond_9

    .line 4774
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a01d8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 4776
    :cond_9
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a01d5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public final disableActionScreen()V
    .locals 1

    .prologue
    .line 5055
    iget v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    .line 5056
    return-void
.end method

.method public final disableFlash()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3190
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 3197
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    .line 3200
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-ne v0, v2, :cond_0

    .line 3202
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3203
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 3204
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 3206
    :cond_0
    return-void
.end method

.method public final disableSelfTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 6115
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 6122
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    .line 6125
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-ne v0, v2, :cond_0

    .line 6127
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerDisabled:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6128
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6130
    :cond_0
    return-void
.end method

.method public final disableSensorFocus()V
    .locals 1

    .prologue
    .line 4317
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    .line 4318
    return-void
.end method

.method public final disableTouchFocus()V
    .locals 1

    .prologue
    .line 4333
    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    .line 4334
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 4808
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 4811
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    .line 4812
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    .line 4814
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 4819
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 4822
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 4823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    .line 4828
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->touchPreviewEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/input/MotionEventArgs;

    invoke-direct {v1, p1}, Lcom/android/camera/input/MotionEventArgs;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4831
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 4825
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    goto :goto_0
.end method

.method public doOnPause()V
    .locals 3

    .prologue
    .line 2060
    const-string v1, "HTCCamera"

    const-string v2, "doOnPause() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 2063
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    .line 2065
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2066
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    .line 2068
    :cond_0
    const-string v1, "HTCCamera"

    const-string v2, "OnPause - hide UI, set mMainLayout invisible"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2075
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2076
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2077
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2084
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-static {v2, v1}, Lcom/android/camera/CameraStorageLocationSettings;->writeToDatabase(Landroid/content/ContentResolver;Lcom/android/camera/io/StorageSlot;)V

    .line 2085
    const-string v1, "HTCCamera"

    const-string v2, "doOnPause() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    return-void

    .line 2079
    :catch_0
    move-exception v0

    .line 2080
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HTCCamera"

    const-string v2, "unregisterReceiver failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final enableActionScreen()V
    .locals 2

    .prologue
    .line 5038
    iget v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    if-nez v0, :cond_0

    .line 5040
    const-string v0, "HTCCamera"

    const-string v1, "Try to enable action screen, but counter is 0"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5041
    const-string v0, "enableActionScreen()"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    .line 5047
    :goto_0
    return-void

    .line 5046
    :cond_0
    iget v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    goto :goto_0
.end method

.method public final enableFlash()V
    .locals 3

    .prologue
    .line 3214
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 3217
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-gtz v0, :cond_1

    .line 3230
    :cond_0
    :goto_0
    return-void

    .line 3221
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    .line 3224
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-nez v0, :cond_0

    .line 3226
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3227
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 3228
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_0
.end method

.method public final enableSelfTimer()V
    .locals 3

    .prologue
    .line 6092
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 6095
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_1

    .line 6107
    :cond_0
    :goto_0
    return-void

    .line 6099
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    .line 6102
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_0

    .line 6104
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerDisabled:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6105
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateSelfTimerInterval()V

    goto :goto_0
.end method

.method public final enableSensorFocus()V
    .locals 1

    .prologue
    .line 4325
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    .line 4326
    return-void
.end method

.method public final enableTouchFocus(Z)V
    .locals 4
    .parameter "takeFocus"

    .prologue
    .line 4341
    iget v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    .line 4342
    iget v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v2, :cond_0

    if-eqz p1, :cond_0

    .line 4345
    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    if-ne v2, v3, :cond_1

    .line 4347
    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v2, 0x2

    .line 4348
    .local v0, x:I
    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v1, v2, 0x2

    .line 4355
    .local v1, y:I
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    .line 4357
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    return-void

    .line 4352
    :cond_1
    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v0, v2, 0x2

    .line 4353
    .restart local v0       #x:I
    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #y:I
    goto :goto_0
.end method

.method public gerCurrentVideoCaptureHandle()Lcom/android/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 8175
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object v0
.end method

.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    .prologue
    .line 5563
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method public final getCaptureUiContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 7952
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUiContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "name"

    .prologue
    .line 5587
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComponentFactory()Lcom/android/camera/component/ComponentFactory;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getComponentFactory()Lcom/android/camera/component/UIComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentFactory()Lcom/android/camera/component/UIComponentFactory;
    .locals 1

    .prologue
    .line 5571
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

    return-object v0
.end method

.method public bridge synthetic getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/UIComponentManager;
    .locals 1

    .prologue
    .line 5579
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    return-object v0
.end method

.method public getFocusingState()I
    .locals 1

    .prologue
    .line 4210
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    return v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    return-object v0
.end method

.method public final getMainThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public final getPreviewSurfaceHitRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 6733
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;

    if-eqz v0, :cond_0

    .line 6734
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;

    iget-object v0, v0, Lcom/android/camera/IViewFinder;->previewSurfaceBounds:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 6735
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public final getSettings()Lcom/android/camera/CameraSettings;
    .locals 1

    .prologue
    .line 7655
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method public bridge synthetic getSettings()Lcom/android/camera/Settings;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getStartMode()Lcom/android/camera/CameraStartMode;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    return-object v0
.end method

.method public final getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 2717
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public final getSurfaceStateSyncRoot()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2713
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method public final getThreadMonitor()Lcom/android/camera/debug/ThreadMonitor;
    .locals 1

    .prologue
    .line 7330
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    return-object v0
.end method

.method public handleByCameraAssistant(IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 2
    .parameter "msgType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "bundle"

    .prologue
    .line 8000
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 8001
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 8002
    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 8012
    :goto_0
    invoke-static {}, Lcom/android/camera/sina/HTCCameraAssistant;->getInst()Lcom/android/camera/sina/HTCCameraAssistant;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/sina/HTCCameraAssistant;->handleMessage(Landroid/os/Message;)V

    .line 8013
    return-void

    .line 8004
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUiContainer:Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8005
    iput p2, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 8002
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public handleSensorFocus()Z
    .locals 1

    .prologue
    .line 4278
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->handleSensorFocus(Z)Z

    move-result v0

    return v0
.end method

.method public handleSensorFocus(Z)Z
    .locals 9
    .parameter "checkFaces"

    .prologue
    const/high16 v2, 0x3f00

    .line 4281
    const-string v0, "HTCCamera"

    const-string v1, "handleSensorFocus() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4283
    if-eqz p1, :cond_1

    .line 4285
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    if-nez v0, :cond_0

    .line 4287
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/IObjectTracker;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IObjectTracker;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    .line 4290
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    iget-object v0, v0, Lcom/android/camera/IObjectTracker;->numberOfDetectedFaces:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 4292
    const-string v0, "HTCCamera"

    const-string v1, "handleSensorFocus() - there is face on screen. return."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4293
    const/4 v7, 0x0

    .line 4309
    :goto_0
    return v7

    .line 4297
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    iget-object v0, v0, Lcom/android/camera/effect/IEffectControlUI;->effectCenter:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    move-object v6, v0

    .line 4298
    .local v6, focusPoint:Landroid/graphics/PointF;
    :goto_1
    if-nez v6, :cond_2

    .line 4299
    new-instance v6, Landroid/graphics/PointF;

    .end local v6           #focusPoint:Landroid/graphics/PointF;
    invoke-direct {v6, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4302
    .restart local v6       #focusPoint:Landroid/graphics/PointF;
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/camera/HTCCamera;->normalizedPointToScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v8

    .line 4303
    .local v8, screenFocusPoint:Landroid/graphics/Point;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4304
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusPointUpdateEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v1, v8}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4306
    :cond_3
    sget-object v0, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {p0, v0, v6}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Landroid/graphics/PointF;)Z

    move-result v7

    .line 4308
    .local v7, result:Z
    const-string v0, "HTCCamera"

    const-string v1, "handleSensorFocus("

    iget v2, v8, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ","

    iget v4, v8, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ") - end"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 4297
    .end local v6           #focusPoint:Landroid/graphics/PointF;
    .end local v7           #result:Z
    .end local v8           #screenFocusPoint:Landroid/graphics/Point;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/16 v1, 0x283c

    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 3912
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v12, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3915
    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    .line 3916
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3917
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    .line 3918
    const-string v0, "HTCCamera"

    const-string v3, "UnBlock Capture UI - touch down and cancel focus"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3921
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    if-nez v0, :cond_1

    .line 3922
    const-string v0, "HTCCamera"

    const-string v1, "onTouchEvent - UI Block !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    .line 4113
    :goto_0
    return v0

    .line 3926
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v0, v12, :cond_2

    .line 3927
    const-string v0, "HTCCamera"

    const-string v1, "onTouchEvent - SIP is shown, UI Block !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    .line 3928
    goto :goto_0

    .line 3933
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-eq v0, v12, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3935
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_5

    .line 3937
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->hasMessages(Landroid/os/Handler;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3939
    const-string v0, "HTCCamera"

    const-string v3, "Remove MSG_TOUCH_FOCUS"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3940
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 3943
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3945
    const-string v0, "HTCCamera"

    const-string v3, "set mInitSpan to 0 "

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3946
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mInitSpan:F

    .line 3947
    iput v2, p0, Lcom/android/camera/HTCCamera;->mBaseZoom:I

    .line 3949
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3964
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4113
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 3967
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    .line 3969
    const-string v0, "HTCCamera"

    const-string v3, "handleTouchEvent() : ACTION_DOWN"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3975
    const-string v0, "HTCCamera"

    const-string v3, "handleTouchEvent() : ACTION_DOWN - send MSG_TOUCH_FOCUS"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3976
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v12

    const-wide/16 v5, 0x78

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 3985
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->isTapCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3989
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->hasMessages(Landroid/os/Handler;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3991
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_DOWN - isAutoFocusing() is false."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3997
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    if-eqz v0, :cond_8

    .line 3999
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_DOWN - m_NeedTapCapture is already set to true."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4003
    :cond_8
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_DOWN - set m_NeedTapCapture to true."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4004
    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    .line 4005
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->m_TouchCaptureFingerDownPoint:Landroid/graphics/PointF;

    goto/16 :goto_1

    .line 4026
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    if-ne v0, v12, :cond_6

    goto/16 :goto_1

    .line 4054
    :pswitch_2
    const-string v0, "HTCCamera"

    const-string v3, "handleTouchEvent() : ACTION_UP"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4056
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    if-eq v0, v12, :cond_6

    .line 4060
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->hasMessages(Landroid/os/Handler;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4062
    const-string v0, "HTCCamera"

    const-string v3, "handleTouchEvent() : ACTION_UP - There is pending touch focus, trigger it now"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4063
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4064
    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v0, :cond_d

    .line 4065
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    .line 4078
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->isTapCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4080
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_TouchCaptureFingerDownPoint:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/android/camera/Util;->distanceBetweenP2P(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v7

    .line 4081
    .local v7, distance:D
    sget-wide v0, Lcom/android/camera/HTCCamera;->SCREEN_DIAGONAL_LENGTH:D

    div-double v10, v7, v0

    .line 4082
    .local v10, ratio:D
    const-wide v0, 0x3fb1eb851eb851ecL

    cmpl-double v0, v10, v0

    if-ltz v0, :cond_e

    move v9, v12

    .line 4085
    .local v9, isFingerMoved:Z
    :goto_3
    if-nez v9, :cond_f

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z

    if-nez v0, :cond_f

    .line 4087
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    if-nez v9, :cond_b

    .line 4090
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_UP - m_NeedTapCapture is true || isSelfTimerStarted, take picture."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    const-string v0, "Tap Capture"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    .line 4102
    :cond_b
    :goto_4
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_UP - set m_NeedTapCapture to false."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4103
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    .line 4104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->m_TouchCaptureFingerDownPoint:Landroid/graphics/PointF;

    .line 4108
    .end local v7           #distance:D
    .end local v9           #isFingerMoved:Z
    .end local v10           #ratio:D
    :cond_c
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z

    goto/16 :goto_1

    .line 4068
    :cond_d
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_DOWN - Will not take focus due to Touch Focus is disabled."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .restart local v7       #distance:D
    .restart local v10       #ratio:D
    :cond_e
    move v9, v2

    .line 4082
    goto :goto_3

    .line 4099
    .restart local v9       #isFingerMoved:Z
    :cond_f
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent() : ACTION_UP - isFingerMoved is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,isPinchZoomed is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3964
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTouchFocus(II)Z
    .locals 5
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v1, 0x0

    .line 4633
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTouchFocus - X: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4635
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 4637
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->focusPointUpdateEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v3, v4}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4639
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/HTCCamera;->screenPointToNormalizedPoint(IIZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 4640
    .local v0, focusPoint:Landroid/graphics/PointF;
    if-eqz v0, :cond_0

    .line 4641
    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Landroid/graphics/PointF;)Z

    move-result v1

    .line 4643
    :goto_0
    return v1

    .line 4642
    :cond_0
    const-string v2, "HTCCamera"

    const-string v3, "handleTouchFocus - touch point not in mSurfaceView"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final hasFlash()Z
    .locals 1

    .prologue
    .line 3246
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 8041
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

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

    .line 8045
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v3, :cond_3

    .line 8047
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v4, 0x27d8

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8048
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gtz v3, :cond_1

    .line 8050
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera$MainHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8062
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return v1

    .line 8053
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-virtual {v3, v0, p2, p3}, Lcom/android/camera/HTCCamera$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8055
    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 8056
    const-string v1, "HTCCamera"

    const-string v3, "invokeAsync() - Fail to post to UI thread handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 8057
    goto :goto_0

    .line 8061
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    const-string v1, "HTCCamera"

    const-string v3, "invokeAsync() - No UI thread handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 8062
    goto :goto_0
.end method

.method public final is3DCameraActivated()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6031
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 6033
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final isActionScreenEnabled()Z
    .locals 1

    .prologue
    .line 5063
    iget v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActionScreenOpen()Z
    .locals 2

    .prologue
    .line 2729
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/UIState;

    .line 2730
    .local v0, state:Lcom/android/camera/UIState;
    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoCaptureTask()Z
    .locals 1

    .prologue
    .line 2695
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return v0
.end method

.method public final isAutoFocusing()Z
    .locals 1

    .prologue
    .line 4628
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlockPowerWarning()Z
    .locals 1

    .prologue
    .line 6069
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    return v0
.end method

.method public final isFastShotToShotMode()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7591
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v1, :cond_1

    .line 7642
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 7595
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_0

    .line 7599
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7603
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Duration;

    invoke-virtual {v1}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    .line 7605
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7608
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/sina/GifModeScene;

    if-eqz v1, :cond_2

    move v3, v2

    .line 7609
    goto :goto_0

    .line 7612
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7621
    :cond_3
    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$AutoDetectedScene:[I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1}, Lcom/android/camera/AutoDetectedScene;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 7641
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    move-object v0, v1

    .line 7642
    .local v0, scene:Lcom/android/camera/effect/EffectBase;
    :goto_1
    instance-of v1, v0, Lcom/android/camera/effect/BurstScene;

    if-nez v1, :cond_5

    instance-of v1, v0, Lcom/android/camera/effect/SmartShotScene;

    if-nez v1, :cond_5

    instance-of v1, v0, Lcom/android/camera/effect/PanoramaScene;

    if-nez v1, :cond_5

    instance-of v1, v0, Lcom/android/camera/effect/HdrScene;

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    move v3, v1

    goto/16 :goto_0

    .line 7641
    .end local v0           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0       #scene:Lcom/android/camera/effect/EffectBase;
    :cond_5
    move v1, v3

    .line 7642
    goto :goto_2

    .line 7621
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isIdle()Z
    .locals 1

    .prologue
    .line 5019
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    return v0
.end method

.method public final isIdleOrPaused()Z
    .locals 1

    .prologue
    .line 5027
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInMirrorMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 7960
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7974
    :cond_0
    :goto_0
    return v2

    .line 7965
    :cond_1
    :try_start_0
    const-string v3, "wireless_display"

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/WirelessDisplayManager;

    .line 7966
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v1, :cond_0

    .line 7967
    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 7971
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v0

    .line 7973
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "HTCCamera"

    const-string v4, "isInMirrorMode() - Error while getting mirror display status"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPowerWarning()Z
    .locals 1

    .prologue
    .line 6078
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    return v0
.end method

.method public final isSelfPortraitTask()Z
    .locals 1

    .prologue
    .line 2812
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return v0
.end method

.method public final isServiceMode()Z
    .locals 1

    .prologue
    .line 5449
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    return v0
.end method

.method public final isSlowMotionMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4975
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 4978
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final isSurfaceAvailable()Z
    .locals 1

    .prologue
    .line 2721
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    return v0
.end method

.method public final lockZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5495
    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5498
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 5503
    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    .line 5504
    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    if-le v0, v2, :cond_0

    .line 5518
    :goto_0
    return-void

    .line 5508
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 5509
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->resetZoom(Z)V

    .line 5514
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5515
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->isNull()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5517
    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5511
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - There is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5515
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Range;

    iget-object v0, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2
.end method

.method public final needsActionScreen()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4994
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v3, :cond_1

    move v1, v2

    .line 5011
    :cond_0
    :goto_0
    return v1

    .line 4997
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5000
    sget-boolean v3, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v3, :cond_0

    .line 5003
    invoke-static {p0}, Lcom/android/camera/sina/SinaWeiboStarter;->getInst(Landroid/content/Context;)Lcom/android/camera/sina/SinaWeiboStarter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/sina/SinaWeiboStarter;->getTrigger()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5007
    iget v3, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    if-lez v3, :cond_2

    move v1, v2

    .line 5008
    goto :goto_0

    .line 5010
    :cond_2
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->reviewDuration:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    .line 5011
    .local v0, duration:Lcom/android/camera/Duration;
    invoke-virtual {v0}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final normalizedPointToScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 7
    .parameter "normalizedPoint"

    .prologue
    .line 4602
    if-nez p1, :cond_0

    .line 4603
    const/4 v3, 0x0

    .line 4620
    :goto_0
    return-object v3

    .line 4606
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 4610
    .local v0, previewBounds:Landroid/graphics/Rect;
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4612
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    iget v6, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 4613
    .local v1, x:I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 4620
    .local v2, y:I
    :goto_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 4617
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 4618
    .restart local v1       #x:I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .restart local v2       #y:I
    goto :goto_1
.end method

.method public final notifyCameraThreadBlocked(Lcom/android/camera/CameraThreadBlockReason;)V
    .locals 3
    .parameter "blockReason"

    .prologue
    .line 8071
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraThreadBlocked("

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

    .line 8073
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 8074
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onCameraThreadBlocked(Lcom/android/camera/CameraThreadBlockReason;)V

    .line 8086
    :cond_0
    :goto_0
    return-void

    .line 8075
    :cond_1
    new-instance v0, Lcom/android/camera/HTCCamera$29;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/HTCCamera$29;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThreadBlockReason;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8084
    const-string v0, "HTCCamera"

    const-string v1, "notifyCameraThreadBlocked() - Cannot notify UI thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final notifyPopupBubbleClosed()V
    .locals 3

    .prologue
    .line 7871
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7874
    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    if-nez v0, :cond_1

    .line 7876
    const-string v0, "HTCCamera"

    const-string v1, "notifyPopupBubbleClosed() - Counter is 0"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7877
    const-string v0, "notifyPopupBubbleClosed()"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    .line 7885
    :cond_0
    :goto_0
    return-void

    .line 7882
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    .line 7883
    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    if-nez v0, :cond_0

    .line 7884
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final notifyPopupBubbleOpened()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7889
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7894
    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    .line 7895
    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    if-ne v0, v2, :cond_0

    .line 7896
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7897
    :cond_0
    return-void
.end method

.method public final notifyProcessingTakenPictures()V
    .locals 3

    .prologue
    .line 7175
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7176
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    if-eq v0, v1, :cond_0

    .line 7178
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyProcessingTakenPictures() - current state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7184
    :goto_0
    return-void

    .line 7183
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Processing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 2286
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 2288
    const-string v0, "HTCCamera"

    const-string v1, "onActivityResult: requestCode = AlbumGifStarter.ALBUM_REQUEST_CODE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    invoke-static {p0}, Lcom/android/camera/sina/AlbumGifStarter;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/AlbumGifStarter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/sina/AlbumGifStarter;->handleOnActivityResult(IILandroid/content/Intent;)V

    .line 2316
    :cond_0
    :goto_0
    return-void

    .line 2292
    :cond_1
    if-ne p2, v3, :cond_0

    .line 2295
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$Global$REQUEST_CODE:[I

    invoke-static {}, Lcom/android/camera/Global$REQUEST_CODE;->values()[Lcom/android/camera/Global$REQUEST_CODE;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2313
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult Unsupported REQUEST_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Global$REQUEST_CODE;->values()[Lcom/android/camera/Global$REQUEST_CODE;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2297
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0

    .line 2302
    :pswitch_1
    invoke-virtual {p0, v3, p3}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 2303
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    .line 2309
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0, p3}, Lcom/android/camera/AutoUploader;->handleAutoUploadSettingResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 2295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 2330
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2331
    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged LANDSCAPE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    iput v2, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    .line 2343
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2344
    return-void

    .line 2335
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 2336
    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged PORTRAIT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    goto :goto_0

    .line 2341
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged Other"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 917
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[press_widget]launch"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v2, "HTCCamera"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 922
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    :try_start_0
    const-string v2, "HTCCamera"

    const-string v3, "Initial remote screen orientation"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/htc/wrap/android/view/HtcWrapSurface;->setRemoteScreenOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/camera/HTCCamera$TVDisplayListener;

    invoke-direct {v2, p0, v5}, Lcom/android/camera/HTCCamera$TVDisplayListener;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

    .line 936
    new-instance v2, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

    invoke-direct {v2, v3, v4}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 945
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    .line 948
    new-instance v2, Lcom/android/camera/HTCCamera$MainHandler;

    invoke-direct {v2, p0, p0}, Lcom/android/camera/HTCCamera$MainHandler;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    .line 951
    new-instance v2, Lcom/android/camera/IntentManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/IntentManager;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    .line 952
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    .line 955
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->checkStartMode(Landroid/content/Intent;)V

    .line 958
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 961
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    .line 964
    new-instance v2, Lcom/android/camera/CameraSettings;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    .line 967
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2, p0}, Lcom/android/camera/CameraSettings;->bindPreferences(Lcom/android/camera/HTCCamera;)V

    .line 970
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 973
    new-instance v3, Lcom/android/camera/CameraThread;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraMode;

    invoke-direct {v3, p0, v4, v2}, Lcom/android/camera/CameraThread;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/android/camera/CameraMode;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 974
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->start()V

    .line 981
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->requestWindowFeature(I)Z

    .line 982
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->setContentView(I)V

    .line 985
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    invoke-virtual {v2}, Lcom/android/camera/debug/ThreadMonitor;->startMonitorCurrentThread()V

    .line 987
    new-instance v2, Lcom/android/camera/AutoUploader;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/AutoUploader;-><init>(Lcom/android/camera/HTCCamera;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    .line 1032
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    sget-object v3, Lcom/android/camera/HTCCamera;->mInitialPreferenceValues:[Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraSettings;->set([Ljava/util/AbstractMap$SimpleEntry;)V

    .line 1035
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1036
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->mainSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1037
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateSelfTimerInterval()V

    .line 1041
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1042
    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1045
    const-string v2, "HTCCamera"

    const-string v3, "addFlags FLAG_SHOW_WHEN_LOCKED & FLAG_DISMISS_KEYGUARD onCreate"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    new-instance v2, Lcom/android/camera/component/UIComponentFactory;

    invoke-direct {v2, p0}, Lcom/android/camera/component/UIComponentFactory;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

    .line 1051
    new-instance v2, Lcom/android/camera/component/UIComponentManager;

    invoke-direct {v2, p0}, Lcom/android/camera/component/UIComponentManager;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    .line 1052
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

    sget-object v3, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    .line 1076
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->linkToRequiredServiceComponents()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1078
    const-string v2, "HTCCamera"

    const-string v3, "onCreate() - [Fatal] Some required interface is missing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 1083
    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1084
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1085
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1086
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1087
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1090
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setupEventHandlers()V

    .line 1093
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v3, 0x38

    const-wide/16 v4, 0x1388

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 1094
    return-void

    .line 928
    .end local v1           #theWindow:Landroid/view/Window;
    :catch_0
    move-exception v0

    .line 930
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "HTCCamera"

    const-string v3, "Rotate remote Camera layout may not support"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1830
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2117
    const-string v0, "HTCCamera"

    const-string v1, "onDestroy() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v1, "[press_back]close"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_1

    .line 2124
    new-instance v0, Lcom/android/camera/HTCCamera$13;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$13;-><init>(Lcom/android/camera/HTCCamera;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

    .line 2135
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2139
    invoke-static {p0}, Lcom/android/camera/sina/GifGenerator;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/GifGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/sina/GifGenerator;->release()V

    .line 2141
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-eqz v0, :cond_0

    .line 2142
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->release()V

    .line 2143
    :cond_0
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 2144
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

    .line 2146
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2147
    const-string v0, "HTCCamera"

    const-string v1, "onDestroy() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v1, "[close_camera]complete"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    return-void

    .line 2131
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnDestory()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0x19

    const/16 v5, 0x18

    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 3530
    new-instance v0, Lcom/android/camera/input/KeyEventArgs;

    invoke-direct {v0, p2}, Lcom/android/camera/input/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    .line 3531
    .local v0, e:Lcom/android/camera/input/KeyEventArgs;
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3532
    invoke-virtual {v0}, Lcom/android/camera/input/KeyEventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 3819
    :goto_0
    return v1

    .line 3539
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x1b

    if-eq v1, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x83

    if-ne v1, v3, :cond_2

    :cond_1
    move v1, v2

    .line 3540
    goto :goto_0

    .line 3543
    :cond_2
    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v1, v2, :cond_3

    .line 3544
    sparse-switch p1, :sswitch_data_0

    .line 3632
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_c

    .line 3635
    :cond_4
    if-eq v6, p1, :cond_5

    if-ne v5, p1, :cond_c

    :cond_5
    move v1, v2

    .line 3637
    goto :goto_0

    .line 3546
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 3547
    sput-boolean v2, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    goto :goto_1

    .line 3551
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v2

    .line 3552
    goto :goto_0

    .line 3554
    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_7

    .line 3555
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3556
    const-string v1, "HTCCamera"

    const-string v3, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3560
    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v3, :cond_9

    .line 3561
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    .line 3562
    goto :goto_0

    .line 3564
    :cond_8
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 3565
    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    :goto_2
    move v1, v2

    .line 3574
    goto/16 :goto_0

    .line 3569
    :cond_9
    const-string v1, "HTCCamera"

    const-string v3, "Press Record when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3570
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 3572
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    goto :goto_2

    .line 3578
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_a

    move v1, v2

    .line 3579
    goto/16 :goto_0

    .line 3584
    :cond_a
    :sswitch_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_b

    .line 3585
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3586
    const-string v1, "HTCCamera"

    const-string v3, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3592
    :cond_b
    const-string v1, "HTCCamera"

    const-string v3, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3593
    iput v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 3595
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    move v1, v2

    .line 3598
    goto/16 :goto_0

    .line 3617
    :sswitch_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ge v1, v2, :cond_3

    .line 3618
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3619
    const-string v1, "HTCCamera"

    const-string v3, "UnBlock Capture UI - press back key and cancel focus"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3627
    :sswitch_5
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v1, v3, :cond_3

    move v1, v2

    .line 3628
    goto/16 :goto_0

    .line 3640
    :cond_c
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3641
    if-eq v6, p1, :cond_d

    if-ne v5, p1, :cond_e

    .line 3643
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 3645
    :cond_e
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown - UI Block !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3646
    goto/16 :goto_0

    .line 3650
    :cond_f
    sparse-switch p1, :sswitch_data_1

    .line 3819
    :cond_10
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 3654
    :sswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ne v1, v4, :cond_10

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v1

    if-ne v1, v2, :cond_10

    .line 3655
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->startFocusFromLongPressKey()V

    .line 3656
    sput-boolean v2, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    goto :goto_3

    .line 3663
    :sswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_11

    move v1, v2

    .line 3664
    goto/16 :goto_0

    .line 3666
    :cond_11
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v1, v2, :cond_14

    .line 3667
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v1, v3, :cond_12

    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v3, :cond_13

    .line 3670
    :cond_12
    const-string v1, "HTCCamera"

    const-string v3, "screen save mode -- action key pressed so activate camera"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3671
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    .line 3673
    :cond_13
    const-string v1, "HTCCamera"

    const-string v3, "save screen - block camcorder key"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3674
    goto/16 :goto_0

    .line 3678
    :cond_14
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v2

    .line 3680
    goto/16 :goto_0

    .line 3683
    :cond_15
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v1, v2, :cond_16

    .line 3684
    const-string v1, "HTCCamera"

    const-string v3, "SIP is shown, not handle center button"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3685
    goto/16 :goto_0

    .line 3688
    :cond_16
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v3, :cond_18

    .line 3689
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    .line 3690
    goto/16 :goto_0

    .line 3691
    :cond_17
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 3692
    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    :goto_4
    move v1, v2

    .line 3698
    goto/16 :goto_0

    .line 3695
    :cond_18
    const-string v1, "HTCCamera"

    const-string v3, "Press camcorder button to start video recording"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3696
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_4

    .line 3704
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_19

    move v1, v2

    .line 3705
    goto/16 :goto_0

    .line 3710
    :cond_19
    :sswitch_9
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v1, v2, :cond_1c

    .line 3711
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v1, v3, :cond_1a

    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v3, :cond_1b

    .line 3714
    :cond_1a
    const-string v1, "HTCCamera"

    const-string v3, "screen save mode -- action key pressed so activate camera"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3715
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    .line 3717
    :cond_1b
    const-string v1, "HTCCamera"

    const-string v3, "save screen - block capture key"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3718
    goto/16 :goto_0

    .line 3722
    :cond_1c
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3723
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    move v1, v2

    .line 3724
    goto/16 :goto_0

    .line 3727
    :cond_1d
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v1, v2, :cond_1e

    .line 3728
    const-string v1, "HTCCamera"

    const-string v3, "SIP is shown, not handle center button"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3729
    goto/16 :goto_0

    .line 3732
    :cond_1e
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v3, :cond_1f

    .line 3734
    const-string v1, "HTCCamera"

    const-string v3, "Press center button to take picture"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move v1, v2

    .line 3741
    goto/16 :goto_0

    .line 3738
    :cond_1f
    const-string v1, "HTCCamera"

    const-string v3, "Press center button to start video recording"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3739
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_5

    .line 3747
    :sswitch_a
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v1, v3, :cond_20

    move v1, v2

    .line 3748
    goto/16 :goto_0

    .line 3753
    :cond_20
    :sswitch_b
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v1, v3, :cond_21

    move v1, v2

    .line 3754
    goto/16 :goto_0

    .line 3760
    :cond_21
    :sswitch_c
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_22

    .line 3761
    const-string v1, "HTCCamera"

    const-string v3, "Press back key to stop video recording"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3762
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    move v1, v2

    .line 3763
    goto/16 :goto_0

    .line 3767
    :cond_22
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3768
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    move v1, v2

    .line 3769
    goto/16 :goto_0

    .line 3772
    :cond_23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ge v1, v2, :cond_10

    .line 3790
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_10

    .line 3791
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    goto/16 :goto_3

    .line 3797
    :sswitch_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_24

    move v1, v2

    .line 3798
    goto/16 :goto_0

    .line 3800
    :cond_24
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_25

    .line 3801
    const-string v1, "HTCCamera"

    const-string v3, "!! Menu Key block !! - mCameraThread = null"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3802
    goto/16 :goto_0

    .line 3805
    :cond_25
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_26

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 3808
    :cond_26
    const-string v1, "HTCCamera"

    const-string v3, "!! Menu Key block !!"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3809
    goto/16 :goto_0

    :cond_27
    move v1, v2

    .line 3812
    goto/16 :goto_0

    :sswitch_e
    move v1, v2

    .line 3815
    goto/16 :goto_0

    .line 3544
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x17 -> :sswitch_3
        0x1b -> :sswitch_2
        0x42 -> :sswitch_3
        0x50 -> :sswitch_0
        0x83 -> :sswitch_2
        0xe4 -> :sswitch_1
    .end sparse-switch

    .line 3650
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_c
        0x13 -> :sswitch_b
        0x14 -> :sswitch_a
        0x17 -> :sswitch_9
        0x1b -> :sswitch_8
        0x42 -> :sswitch_9
        0x50 -> :sswitch_6
        0x52 -> :sswitch_d
        0x54 -> :sswitch_e
        0x83 -> :sswitch_8
        0xe4 -> :sswitch_7
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7981
    const/16 v0, 0xe3

    if-ne p1, v0, :cond_0

    .line 7982
    const-string v0, "HTCCamera"

    const-string v1, "KEYCODE_HTC_SHARE_onKeyLongPress"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7983
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerLongPressShareKey()V

    .line 7986
    const/4 v0, 0x0

    .line 7988
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x19

    const/16 v4, 0x18

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3828
    new-instance v0, Lcom/android/camera/input/KeyEventArgs;

    invoke-direct {v0, p2}, Lcom/android/camera/input/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    .line 3829
    .local v0, e:Lcom/android/camera/input/KeyEventArgs;
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->keyUpEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3830
    invoke-virtual {v0}, Lcom/android/camera/input/KeyEventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3832
    const-string v1, "HTCCamera"

    const-string v3, "KeyUp event is handled by event handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3873
    :goto_0
    return v1

    .line 3836
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 3837
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 3839
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3840
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3842
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    .line 3843
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 3848
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    .line 3850
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_5

    .line 3853
    :cond_3
    if-eq v5, p1, :cond_4

    if-ne v4, p1, :cond_5

    :cond_4
    move v1, v2

    .line 3855
    goto :goto_0

    .line 3858
    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3859
    if-eq v5, p1, :cond_6

    if-ne v4, p1, :cond_7

    .line 3861
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 3863
    :cond_7
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp - UI Block !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3864
    goto :goto_0

    .line 3868
    :cond_8
    packed-switch p1, :pswitch_data_0

    .line 3873
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 3870
    goto/16 :goto_0

    .line 3868
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaSaved(Lcom/android/camera/io/MediaSaveEventArgs;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 2738
    const-string v0, "HTCCamera"

    const-string v1, "onMediaSaved() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2744
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_0

    .line 2745
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->setSaveDone()V

    .line 2747
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "onMediaSaved() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 2233
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2236
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    .line 2245
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    .line 2248
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2249
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 2251
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->changeMode(Lcom/android/camera/CameraMode;)Lcom/android/camera/Handle;

    .line 2252
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraThread;->resetZoom(Z)V

    .line 2256
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 2259
    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v0, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_2

    .line 2260
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2265
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    sget-object v1, Lcom/android/camera/HTCCamera;->mInitialPreferenceValues:[Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->set([Ljava/util/AbstractMap$SimpleEntry;)V

    .line 2268
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateSelfTimerInterval()V

    .line 2271
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 2272
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    .line 2275
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 2278
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v1, p1}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2280
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    return-void

    .line 2262
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1835
    const-string v3, "HTCCamera"

    const-string v4, "onPause() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const-string v3, "HTCCamera"

    const-string v4, "onPause() - Stop recording"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v3, :cond_0

    .line 1841
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/CameraThread;->stopVideoRecording(Lcom/android/camera/CaptureHandle;ZZ)V

    .line 1842
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v3, v4}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 1843
    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 1847
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 1850
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1853
    invoke-virtual {p0, v6, v6}, Lcom/android/camera/HTCCamera;->overridePendingTransition(II)V

    .line 1855
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v4, Lcom/android/camera/CameraStartMode;->Album:Lcom/android/camera/CameraStartMode;

    if-ne v3, v4, :cond_1

    .line 1856
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->overrideSystemRotateAnimation()V

    .line 1859
    :cond_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    sget-object v4, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1862
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1863
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1864
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1865
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1866
    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v3}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 1875
    :goto_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1876
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1877
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v4, 0x277b

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera$MainHandler;->removeMessages(I)V

    .line 1879
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsOnResumeCompleted:Z

    .line 1880
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    .line 1881
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    .line 1882
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 1883
    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 1884
    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    .line 1885
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    .line 1887
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z

    .line 1889
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    .line 1890
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isSwitchingCamera:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1893
    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    .line 1894
    iput v6, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    .line 1897
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1899
    const-string v3, "HTCCamera"

    const-string v4, "onPause() - Clear focus state"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1901
    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 1902
    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    .line 1916
    :cond_2
    const-string v3, "HTCCamera"

    const-string v4, "onPause() - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    .line 1929
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v3, :cond_3

    .line 1930
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v3}, Lcom/android/camera/IAudioManager;->restoreAudioStreamVolume()V

    .line 1932
    :cond_3
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1941
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v4, 0x1e

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1943
    sput-boolean v6, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 1945
    const-string v3, "HTCCamera"

    const-string v4, "onPause() - mFocusingState = NO_FOCUSING"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 1949
    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/RecordingState;

    invoke-virtual {v3}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    .line 1957
    :goto_1
    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v3, :cond_8

    .line 1962
    const-string v3, "HTCCamera"

    const-string v4, "onPause mIdle is false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 1971
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 1983
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v4, 0x24

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1986
    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1987
    :cond_5
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    .line 1997
    :goto_3
    const-string v3, "HTCCamera"

    const-string v4, "OnPause - Freeze UI !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    const/4 v2, 0x0

    .line 2000
    .local v2, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "com.htc.eas.intent.resumeSync"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2001
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "com.htc.eas.extra.tag"

    const-string v4, "com.android.camera.HTCCamera"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2002
    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 2005
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2007
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v4, 0x48

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2010
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->doOnPause()V

    .line 2011
    invoke-direct {p0, v7}, Lcom/android/camera/HTCCamera;->setFingerGestureEnable(Z)V

    .line 2014
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    monitor-enter v4

    .line 2016
    :try_start_0
    const-string v3, "HTCCamera"

    const-string v5, "onPause() - mIsSurfaceAvailable = false"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    .line 2018
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2021
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_7

    .line 2023
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 2024
    .local v0, camera:Landroid/hardware/Camera;
    if-eqz v0, :cond_a

    .line 2028
    :try_start_1
    const-string v3, "HTCCamera"

    const-string v4, "onPause +++stopPreview()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 2030
    const-string v3, "HTCCamera"

    const-string v4, "onPause ---stopPreview()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2040
    :goto_4
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->cancelTakingPicture()V

    .line 2041
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->cancelStartingPreview()V

    .line 2042
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->cancelOpeningCamera()V

    .line 2043
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 2047
    .end local v0           #camera:Landroid/hardware/Camera;
    :cond_7
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v4, 0x55

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2048
    invoke-static {p0}, Lcom/android/camera/sina/GifGenerator;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/GifGenerator;

    move-result-object v3

    sget-object v4, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->Undo:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    invoke-virtual {v3, v4}, Lcom/android/camera/sina/GifGenerator;->setState(Lcom/android/camera/sina/GifGenerator$GifGenerator_State;)V

    .line 2050
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2054
    new-instance v3, Lcom/android/camera/SessionHandle;

    invoke-direct {v3}, Lcom/android/camera/SessionHandle;-><init>()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSessionHandle:Lcom/android/camera/SessionHandle;

    .line 2056
    const-string v3, "HTCCamera"

    const-string v4, "onPause() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    return-void

    .line 1870
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1953
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1978
    :cond_8
    const-string v3, "HTCCamera"

    const-string v4, "onPause mIdle is true"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 1980
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1989
    :cond_9
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    goto/16 :goto_3

    .line 2018
    .restart local v2       #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2032
    .restart local v0       #camera:Landroid/hardware/Camera;
    :catch_0
    move-exception v1

    .line 2034
    .local v1, ex:Ljava/lang/Throwable;
    const-string v3, "HTCCamera"

    const-string v4, "onPause() - Cannot stop preview"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2038
    .end local v1           #ex:Ljava/lang/Throwable;
    :cond_a
    const-string v3, "HTCCamera"

    const-string v4, "onPause() - No open camera, no need to stop preview"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1866
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1949
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .parameter "property"
    .parameter "e"

    .prologue
    .line 6198
    const/4 v0, 0x1

    .line 6199
    .local v0, isHandled:Z
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_5

    .line 6201
    sget-object v2, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$UIState:[I

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/UIState;

    invoke-virtual {v1}, Lcom/android/camera/UIState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 6229
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_3

    .line 6231
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->mainSelfTimerInterval:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_2

    .line 6232
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateSelfTimerInterval()V

    .line 6233
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z

    if-nez v1, :cond_3

    .line 6234
    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/HTCCamera;->onStorageSlotChanged(Lcom/android/camera/io/StorageSlot;Z)V

    .line 6236
    :cond_3
    return-void

    .line 6204
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onActionScreenOpening()V

    goto :goto_0

    .line 6207
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v1}, Lcom/android/camera/actionscreen/ActionScreen;->getTargetCaptureHandle()Lcom/android/camera/CaptureHandle;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/CaptureHandle;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 6211
    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_6

    .line 6212
    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/UIState;

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onEffectPanelStateChanged(Lcom/android/camera/UIState;)V

    goto :goto_0

    .line 6213
    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_7

    .line 6215
    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6216
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onPopupBubbleShown()V

    goto :goto_0

    .line 6218
    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_8

    .line 6220
    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6221
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onPreviewStopped()V

    goto :goto_0

    .line 6223
    :cond_8
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_9

    .line 6224
    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/TakingPictureState;

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onTakingPictureStateChanged(Lcom/android/camera/TakingPictureState;)V

    goto :goto_0

    .line 6226
    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    .line 6201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 1528
    const-string v0, "HTCCamera"

    const-string v1, "onRestart() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1532
    const-string v0, "HTCCamera"

    const-string v1, "onRestart() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    return-void
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1545
    const-string v7, "HTCCamera"

    const-string v8, "onResume() - start"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1549
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    monitor-enter v8

    .line 1551
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v7, :cond_0

    .line 1552
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    .line 1553
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1556
    invoke-virtual {p0, v10, v10}, Lcom/android/camera/HTCCamera;->overridePendingTransition(II)V

    .line 1570
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1573
    :try_start_1
    const-string v7, "HTCCamera"

    const-string v8, "Initial remote screen orientation"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/htc/wrap/android/view/HtcWrapSurface;->setRemoteScreenOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1581
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 1582
    .local v3, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "com.htc.eas.intent.pauseSync"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1583
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v7, "com.htc.eas.extra.tag"

    const-string v8, "com.android.camera.HTCCamera"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1587
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopVoiceRecording()V

    .line 1589
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v7}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v7, v8, :cond_3

    .line 1591
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    .line 1594
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopMusic()V

    .line 1597
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopNotesRecording()V

    .line 1606
    :cond_2
    :goto_1
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 1607
    .local v4, mgr:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1608
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    iput v7, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    .line 1609
    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initial Display Orientation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const-string v7, "HTCCamera"

    const-string v8, "OnResume - reset UI, immediately set mMainLayout invisible"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    :goto_2
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v7, :cond_4

    .line 1614
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    goto :goto_2

    .line 1553
    .end local v0           #display:Landroid/view/Display;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #mgr:Landroid/view/WindowManager;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1575
    :catch_0
    move-exception v2

    .line 1577
    .local v2, ex:Ljava/lang/Throwable;
    const-string v7, "HTCCamera"

    const-string v8, "Rotate remote Camera layout may not support"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1599
    .end local v2           #ex:Ljava/lang/Throwable;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isHalfPCB()Z

    move-result v7

    if-ne v7, v11, :cond_2

    .line 1601
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    goto :goto_1

    .line 1622
    .restart local v0       #display:Landroid/view/Display;
    .restart local v4       #mgr:Landroid/view/WindowManager;
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setMaxBrightness()V

    .line 1668
    invoke-static {p0}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1670
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-string v8, "PowerWarning UI"

    invoke-virtual {v7, v8}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/component/Component;->initialize()V

    .line 1684
    :cond_5
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    .line 1686
    const-string v7, "HTCCamera"

    const-string v8, "onResume() - mFocusingState = NO_FOCUSING"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    iput v10, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 1695
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    sget-object v8, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v7, p0, v8}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1698
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1699
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1701
    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isInMirrorMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1705
    :cond_6
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    .line 1706
    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    .line 1709
    monitor-enter p0

    .line 1711
    :try_start_3
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 1712
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1714
    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume() - mIdle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-boolean v7, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v7, :cond_9

    .line 1717
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 1718
    .local v6, win:Landroid/view/Window;
    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1719
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 1727
    .end local v6           #win:Landroid/view/Window;
    :goto_3
    iget-boolean v7, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    if-eqz v7, :cond_7

    .line 1728
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->performActionsOnPreviewSurfaceCreated()V

    .line 1730
    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->DisablePen()Z

    move-result v7

    if-ne v7, v11, :cond_8

    .line 1731
    invoke-static {p0}, Lcom/android/camera/Util;->disableSketcher(Landroid/app/Activity;)V

    .line 1734
    :cond_8
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    .line 1736
    const-string v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1737
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v12}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1738
    const-string v7, "HTCCamera"

    const-string v8, "Camera is disabled by DevicePolicyManager"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    const v7, 0x7f0a0060

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 1740
    .local v5, mtoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1741
    new-instance v7, Lcom/android/camera/HTCCamera$12;

    invoke-direct {v7, p0}, Lcom/android/camera/HTCCamera$12;-><init>(Lcom/android/camera/HTCCamera;)V

    const-wide/16 v8, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

    .line 1753
    .end local v5           #mtoast:Landroid/widget/Toast;
    :goto_4
    return-void

    .line 1712
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 1722
    :cond_9
    const-string v7, "HTCCamera"

    const-string v8, "Start viewfinder directly, activate"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_3

    .line 1751
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_a
    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mIsOnResumeCompleted:Z

    .line 1752
    const-string v7, "HTCCamera"

    const-string v8, "onResume() - end"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1513
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1514
    const-string v0, "HTCCamera"

    const-string v1, "onStart() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 1520
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->requestAudioFocus(I)V

    .line 1523
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "onStart() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 2090
    const-string v1, "HTCCamera"

    const-string v2, "onStop() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2095
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2097
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    .line 2098
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v1}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    .line 2101
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2104
    :try_start_0
    const-string v1, "HTCCamera"

    const-string v2, "Reset remote screen orientation"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapSurface;->resetRemoteScreenOrientation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2112
    :cond_1
    :goto_0
    const-string v1, "HTCCamera"

    const-string v2, "onStop() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    return-void

    .line 2106
    :catch_0
    move-exception v0

    .line 2108
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "HTCCamera"

    const-string v2, "Rotate remote Camera layout may not support"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3904
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openCaptureUI()V
    .locals 3

    .prologue
    .line 3123
    const-string v0, "HTCCamera"

    const-string v1, "openCaptureUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3126
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3128
    :cond_0
    return-void
.end method

.method public powerWarningOn(Z)V
    .locals 3
    .parameter "isRec"

    .prologue
    .line 6039
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 6040
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "deactivate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6066
    :goto_0
    return-void

    .line 6044
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-nez v0, :cond_2

    .line 6045
    const-string v0, "HTCCamera"

    const-string v1, "deactivate - mUIHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6049
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setPowerWarning(Z)V

    .line 6051
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 6054
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6056
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6057
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->cancelStartingPreview()V

    .line 6058
    if-nez p1, :cond_3

    .line 6059
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 6061
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    .line 6064
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 6065
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    goto :goto_0
.end method

.method public final prepareActionScreen(Lcom/android/camera/CaptureHandle;)V
    .locals 2
    .parameter "captureHandle"

    .prologue
    .line 5277
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_5

    .line 5280
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSessionHandle:Lcom/android/camera/SessionHandle;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionHandle:Lcom/android/camera/SessionHandle;

    .line 5283
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    .line 5285
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "prepareActionScreen() - Action screen is not needed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5317
    :goto_0
    return-void

    .line 5288
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5290
    const-string v0, "HTCCamera"

    const-string v1, "prepareActionScreen() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5295
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_3

    .line 5296
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/actionscreen/ActionScreen;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    .line 5299
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_4

    .line 5300
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->prepare(Lcom/android/camera/CaptureHandle;)V

    goto :goto_0

    .line 5302
    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "No available action screen"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5304
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_6

    .line 5306
    new-instance v0, Lcom/android/camera/HTCCamera$19;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/HTCCamera$19;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5316
    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "Cannot prepare action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final prepareRecording()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3042
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3044
    const-string v1, "HTCCamera"

    const-string v3, "prepareRecording() - Activity is pausing"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3118
    :goto_0
    return v1

    .line 3047
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3049
    const-string v1, "HTCCamera"

    const-string v3, "prepareRecording() - Activity is paused"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3050
    goto :goto_0

    .line 3054
    :cond_1
    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 3060
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareRecording() - Taking picture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3061
    goto :goto_0

    .line 3065
    :pswitch_0
    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_1

    .line 3071
    :pswitch_1
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareRecording() - Recording state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3072
    goto :goto_0

    .line 3076
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v1, v1, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-nez v1, :cond_2

    .line 3078
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareRecording() - Cannot record video in current start mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3079
    goto/16 :goto_0

    .line 3082
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3083
    const-string v1, "HTCCamera"

    const-string v3, "Check MirrorMode :true"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3084
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v3, Lcom/android/camera/IToastManager;

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IToastManager;

    .line 3085
    .local v0, toastManager:Lcom/android/camera/IToastManager;
    if-eqz v0, :cond_3

    .line 3086
    const v1, 0x7f0a005f

    invoke-virtual {v0, v1}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    :goto_1
    move v1, v2

    .line 3089
    goto/16 :goto_0

    .line 3088
    :cond_3
    const-string v1, "HTCCamera"

    const-string v3, "prepareRecording() - No IToastManager interface"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3092
    .end local v0           #toastManager:Lcom/android/camera/IToastManager;
    :cond_4
    const-string v1, "HTCCamera"

    const-string v4, "Check MirrorMode :false"

    invoke-static {v1, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v1, v3, :cond_5

    .line 3099
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v1, v4, :cond_6

    .line 3101
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3102
    const-string v1, "HTCCamera"

    const-string v2, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v1, v3

    .line 3118
    goto/16 :goto_0

    .line 3106
    :cond_6
    const-string v1, "HTCCamera"

    const-string v3, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_RECORD"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 3109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 3112
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v1, v2

    .line 3113
    goto/16 :goto_0

    .line 3054
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3065
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetAutoCaptureTask()V
    .locals 1

    .prologue
    .line 2678
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    .line 2679
    return-void
.end method

.method public resetFocusMode()V
    .locals 3

    .prologue
    .line 4647
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4648
    return-void
.end method

.method public final resetScreenSaveTimer()V
    .locals 4

    .prologue
    .line 6004
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_0

    .line 6005
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v1, 0x24

    iget v2, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 6006
    :cond_0
    return-void
.end method

.method public final resetToDefault()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7725
    const-string v0, "HTCCamera"

    const-string v1, "resetToDefault() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7728
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7729
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 7731
    const-string v0, "HTCCamera"

    const-string v1, "resetToDefault() - No camera settings"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7765
    :goto_0
    return-void

    .line 7736
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7739
    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v0, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_3

    .line 7740
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7745
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 7748
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->resetToDefault()V

    .line 7749
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateSelfTimerInterval()V

    .line 7752
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_2

    .line 7754
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V

    .line 7755
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    .line 7759
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7762
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->restartCamera()V

    .line 7764
    const-string v0, "HTCCamera"

    const-string v1, "resetToDefault() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7741
    :cond_3
    sget-object v0, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    iget-boolean v0, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_1

    .line 7742
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final restartCamera()V
    .locals 3

    .prologue
    .line 6014
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->restartingCameraEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 6016
    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - restartCamera()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6017
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6018
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    .line 6019
    const-string v0, "HTCCamera"

    const-string v1, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6021
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 6023
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 6024
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->resetZoom(Z)V

    .line 6025
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    .line 6027
    :cond_0
    return-void
.end method

.method public final restartPreview()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7827
    const-string v0, "HTCCamera"

    const-string v3, "restartPreview()"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7830
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7832
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Preview is already starting"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7862
    :goto_0
    return v0

    .line 7835
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7837
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Activity is pausing"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7838
    goto :goto_0

    .line 7840
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7842
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Activity is paused"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7843
    goto :goto_0

    .line 7845
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_3

    .line 7847
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Camera is deactivated"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7848
    goto :goto_0

    .line 7850
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_4

    .line 7852
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - No camera thread"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7853
    goto :goto_0

    .line 7857
    :cond_4
    iput v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    .line 7858
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v3, "Starting preview"

    invoke-interface {v0, v3, v1}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    .line 7859
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7860
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->restartPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    .line 7861
    const-string v0, "HTCCamera"

    const-string v1, "restartPreview() - Handle : "

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    invoke-static {v0, v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v2

    .line 7862
    goto :goto_0
.end method

.method public restoreBackgrounddataSetting()V
    .locals 0

    .prologue
    .line 4930
    return-void
.end method

.method public final returnRequestedMedia()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v14, -0x1

    .line 2439
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2441
    const-string v10, "HTCCamera"

    const-string v11, "Returning media from non-service mode"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    :cond_0
    :goto_0
    return-void

    .line 2444
    :cond_1
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v10, :cond_0

    .line 2448
    invoke-static {}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v9

    .line 2449
    .local v9, saveUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/IntentManager;->getCropValue()Ljava/lang/String;

    move-result-object v3

    .line 2452
    .local v3, cropValue:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 2454
    const-string v10, "HTCCamera"

    const-string v11, "Has Crop Extras , pass to CropImage Activity"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2457
    .local v6, myExtras:Landroid/os/Bundle;
    if-eqz v6, :cond_2

    .line 2459
    if-eqz v9, :cond_4

    .line 2460
    const-string v10, "output"

    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2465
    :cond_2
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.android.camera.action.CROP"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2466
    .local v2, cropIntent:Landroid/content/Intent;
    const-string v10, "image/*"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2467
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2468
    if-eqz v6, :cond_3

    .line 2469
    invoke-virtual {v2, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2471
    :cond_3
    sget-object v10, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_CODE_CROP_MSG:Lcom/android/camera/Global$REQUEST_CODE;

    invoke-virtual {v10}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v10

    invoke-virtual {p0, v2, v10}, Lcom/android/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2462
    .end local v2           #cropIntent:Landroid/content/Intent;
    :cond_4
    const-string v10, "return-data"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2476
    .end local v6           #myExtras:Landroid/os/Bundle;
    :cond_5
    const/4 v5, 0x0

    .line 2477
    .local v5, jpegData:[B
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v10, :cond_6

    .line 2478
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getJpegData()[B

    move-result-object v5

    .line 2481
    :cond_6
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2482
    .local v4, intent:Landroid/content/Intent;
    sget-object v10, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraStartMode:[I

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v12}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v12

    aget v10, v10, v12

    packed-switch v10, :pswitch_data_0

    .line 2561
    if-eqz v9, :cond_14

    .line 2563
    invoke-virtual {p0, v14}, Lcom/android/camera/HTCCamera;->setResult(I)V

    .line 2564
    invoke-direct {p0, v9, v5}, Lcom/android/camera/HTCCamera;->saveAndFinish(Landroid/net/Uri;[B)V

    goto :goto_0

    .line 2486
    :pswitch_0
    if-nez v5, :cond_9

    .line 2487
    const-string v10, "HTCCamera"

    const-string v11, "contacts - jpeg data is null !!"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    :cond_7
    :goto_2
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v10, :cond_8

    .line 2599
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->resetJpegData()V

    .line 2600
    :cond_8
    invoke-virtual {p0, v14, v4}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 2601
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 2490
    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2492
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v10

    const-class v12, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v10, v12}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ICaptureResolutionManager;

    .line 2493
    .local v8, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-eqz v8, :cond_a

    iget-object v10, v8, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/Resolution;

    move-object v7, v10

    .line 2494
    .local v7, resolution:Lcom/android/camera/Resolution;
    :goto_3
    if-eqz v8, :cond_b

    iget-object v10, v8, Lcom/android/camera/ICaptureResolutionManager;->contactPhotoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/Resolution;

    move-object v1, v10

    .line 2496
    .local v1, contactResolution:Lcom/android/camera/Resolution;
    :goto_4
    if-eqz v7, :cond_c

    if-eqz v1, :cond_c

    .line 2498
    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v11

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v12

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v5, v10, v11, v12}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2509
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_5
    if-eqz v0, :cond_d

    .line 2510
    const-string v10, "inline-data"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "data"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #contactResolution:Lcom/android/camera/Resolution;
    .end local v7           #resolution:Lcom/android/camera/Resolution;
    :cond_a
    move-object v7, v11

    .line 2493
    goto :goto_3

    .restart local v7       #resolution:Lcom/android/camera/Resolution;
    :cond_b
    move-object v1, v11

    .line 2494
    goto :goto_4

    .line 2506
    .restart local v1       #contactResolution:Lcom/android/camera/Resolution;
    :cond_c
    const-string v10, "HTCCamera"

    const-string v11, "returnRequestedMedia() - Cannot get photo resolution"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    const/4 v0, 0x0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_5

    .line 2512
    :cond_d
    const-string v10, "HTCCamera"

    const-string v11, "return jpeg decode error!!"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2515
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #contactResolution:Lcom/android/camera/Resolution;
    .end local v7           #resolution:Lcom/android/camera/Resolution;
    .end local v8           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_e
    const-string v10, "jpeg_data"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2522
    :pswitch_1
    if-nez v5, :cond_f

    .line 2523
    const-string v10, "HTCCamera"

    const-string v11, "square - jpeg data is null !!"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2526
    :cond_f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 2528
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v10

    const-class v12, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v10, v12}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ICaptureResolutionManager;

    .line 2529
    .restart local v8       #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-eqz v8, :cond_10

    iget-object v10, v8, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/Resolution;

    move-object v7, v10

    .line 2531
    .restart local v7       #resolution:Lcom/android/camera/Resolution;
    :goto_6
    if-eqz v7, :cond_11

    .line 2533
    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v11

    sget v12, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-static {v5, v10, v11, v12}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2544
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :goto_7
    if-eqz v0, :cond_12

    .line 2545
    const-string v10, "inline-data"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "data"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #resolution:Lcom/android/camera/Resolution;
    :cond_10
    move-object v7, v11

    .line 2529
    goto :goto_6

    .line 2541
    .restart local v7       #resolution:Lcom/android/camera/Resolution;
    :cond_11
    const-string v10, "HTCCamera"

    const-string v11, "returnRequestedMedia() - Cannot get photo resolution"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    const/4 v0, 0x0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_7

    .line 2547
    :cond_12
    const-string v10, "HTCCamera"

    const-string v11, "return jpeg decode error!!"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2551
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #resolution:Lcom/android/camera/Resolution;
    .end local v8           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_13
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2552
    const-string v10, "HTCCamera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "return request:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v12}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2569
    :cond_14
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2570
    const-string v10, "HTCCamera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "return request:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v12}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v11, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    if-ne v10, v11, :cond_7

    .line 2576
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v10, v11, :cond_7

    .line 2578
    if-eqz v5, :cond_16

    .line 2580
    const v10, 0x19000

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v14, v10, v11}, Lcom/android/camera/Util;->makeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2584
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_15

    .line 2585
    const-string v10, "inline-data"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "data"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2587
    :cond_15
    const-string v10, "HTCCamera"

    const-string v11, "return jpeg decode error!!"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2590
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_16
    const-string v10, "HTCCamera"

    const-string v11, "inline-data - jpeg data is null !!"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final screenPointToNormalizedPoint(IIZ)Landroid/graphics/PointF;
    .locals 2
    .parameter "screenX"
    .parameter "screenY"
    .parameter "bringToBounds"

    .prologue
    .line 4561
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 4562
    .local v0, result:Landroid/graphics/PointF;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/HTCCamera;->screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4564
    .end local v0           #result:Landroid/graphics/PointF;
    :goto_0
    return-object v0

    .restart local v0       #result:Landroid/graphics/PointF;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z
    .locals 5
    .parameter "screenX"
    .parameter "screenY"
    .parameter "bringToBounds"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 4569
    if-nez p4, :cond_1

    .line 4597
    :cond_0
    :goto_0
    return v3

    .line 4573
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 4574
    .local v2, previewBounds:Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4576
    if-eqz p3, :cond_0

    .line 4578
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge p1, v3, :cond_4

    .line 4579
    iget p1, v2, Landroid/graphics/Rect;->left:I

    .line 4582
    :cond_2
    :goto_1
    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ge p2, v3, :cond_5

    .line 4583
    iget p2, v2, Landroid/graphics/Rect;->top:I

    .line 4589
    :cond_3
    :goto_2
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v3

    .line 4590
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v3

    .line 4591
    int-to-float v3, p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 4592
    .local v0, focusX:F
    int-to-float v3, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 4593
    .local v1, focusY:F
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4594
    const/high16 v3, 0x3f80

    sub-float/2addr v3, v0

    invoke-virtual {p4, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 4597
    :goto_3
    const/4 v3, 0x1

    goto :goto_0

    .line 4580
    .end local v0           #focusX:F
    .end local v1           #focusY:F
    :cond_4
    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-le p1, v3, :cond_2

    .line 4581
    iget p1, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 4584
    :cond_5
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-le p2, v3, :cond_3

    .line 4585
    iget p2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 4596
    .restart local v0       #focusX:F
    .restart local v1       #focusY:F
    :cond_6
    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0
    .parameter "newvalue"

    .prologue
    .line 4922
    return-void
.end method

.method public setBlockPowerWarning(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 6073
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6074
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    .line 6075
    return-void
.end method

.method public final setFlashMode(Lcom/android/camera/FlashMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 3145
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 3148
    const-string v0, "HTCCamera"

    const-string v1, "setFlashMode("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3149
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3151
    const-string v0, "HTCCamera"

    const-string v1, "setFlashMode() - Change to same mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    :cond_0
    :goto_0
    return-void

    .line 3156
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_3

    .line 3158
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "setFlashMode() - No camera thread or settings"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3161
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3163
    const-string v0, "HTCCamera"

    const-string v1, "setFlashMode() - Flash is disabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3168
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 3171
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3172
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3173
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v0, v1, :cond_0

    .line 3176
    sget-object v0, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    if-ne p1, v0, :cond_6

    .line 3177
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3178
    :cond_6
    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    if-ne p1, v0, :cond_0

    .line 3179
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPowerWarning(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 6082
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6083
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    .line 6084
    return-void
.end method

.method public final startAlbum(Landroid/content/Intent;Lcom/android/camera/MediaInfo;)Z
    .locals 12
    .parameter "intent"
    .parameter "mediaInfo"

    .prologue
    .line 5600
    if-nez p1, :cond_0

    .line 5602
    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - No intent specified"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5603
    const/4 v8, 0x0

    .line 5703
    :goto_0
    return v8

    .line 5607
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 5610
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v9, "Starting album"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v1

    .line 5616
    .local v1, blockHandle:Lcom/android/camera/Handle;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5617
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v9, Lcom/android/camera/CameraStartMode;->Album:Lcom/android/camera/CameraStartMode;

    if-ne v8, v9, :cond_3

    const/4 v5, 0x1

    .line 5618
    .local v5, returnToAlbum:Z
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 5620
    :cond_1
    if-eqz v5, :cond_4

    .line 5621
    const-string v0, "FROM_CAMERA"

    .line 5624
    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5630
    :goto_3
    if-nez v5, :cond_2

    .line 5632
    sget-object v9, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/CameraMode;

    invoke-virtual {v8}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_0

    .line 5642
    :cond_2
    :goto_4
    const-string v8, "preview_mode"

    const-string v9, "filmstrip"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5643
    const-string v9, "camera_orientation"

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/rotate/UIRotation;

    iget v8, v8, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5646
    if-eqz p2, :cond_7

    .line 5648
    iget-object v8, p2, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v9, p2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5649
    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - File path = \'"

    iget-object v10, p2, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    const-string v11, "\'"

    invoke-static {v8, v9, v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5650
    const-string v8, "camera_last_file_path"

    invoke-virtual {p2}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5651
    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - MIME type = \'"

    iget-object v10, p2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    const-string v11, "\'"

    invoke-static {v8, v9, v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5652
    const-string v8, "camera_last_file_mime"

    iget-object v9, p2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5661
    :goto_5
    if-eqz v5, :cond_8

    .line 5663
    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - Returning to album"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5664
    const/4 v8, -0x1

    invoke-virtual {p0, v8, p1}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 5665
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 5666
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v9, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v8, p0, v9}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 5673
    :goto_6
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->overrideSystemRotateAnimation()V

    .line 5674
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5675
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 5617
    .end local v5           #returnToAlbum:Z
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 5623
    .restart local v5       #returnToAlbum:Z
    :cond_4
    const-string v0, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    goto/16 :goto_2

    .line 5627
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 5635
    :pswitch_0
    const-string v8, "capture_mode"

    const-string v9, "camera"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 5677
    .end local v0           #action:Ljava/lang/String;
    .end local v5           #returnToAlbum:Z
    :catch_0
    move-exception v2

    .line 5679
    .local v2, ex:Ljava/lang/Throwable;
    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - Cannot start album"

    invoke-static {v8, v9, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5680
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    invoke-interface {v8, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 5683
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5684
    .local v4, intent_to_other_gallery:Landroid/content/Intent;
    const/4 v7, 0x0

    .line 5686
    .local v7, thumbUri:Landroid/net/Uri;
    if-eqz p2, :cond_6

    .line 5688
    new-instance v6, Ljava/io/File;

    invoke-virtual {p2}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5689
    .local v6, thumbFile:Ljava/io/File;
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 5692
    .end local v6           #thumbFile:Ljava/io/File;
    :cond_6
    if-nez p2, :cond_9

    sget-object v8, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v8, v8, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    :goto_7
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5696
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5703
    :goto_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 5638
    .end local v2           #ex:Ljava/lang/Throwable;
    .end local v4           #intent_to_other_gallery:Landroid/content/Intent;
    .end local v7           #thumbUri:Landroid/net/Uri;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v5       #returnToAlbum:Z
    :pswitch_1
    :try_start_2
    const-string v8, "capture_mode"

    const-string v9, "comcorder"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 5656
    :cond_7
    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - No media information"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5657
    const/4 v8, 0x0

    sget-object v9, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v9, v9, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 5670
    :cond_8
    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - Going to album"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5671
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 5692
    .end local v0           #action:Ljava/lang/String;
    .end local v5           #returnToAlbum:Z
    .restart local v2       #ex:Ljava/lang/Throwable;
    .restart local v4       #intent_to_other_gallery:Landroid/content/Intent;
    .restart local v7       #thumbUri:Landroid/net/Uri;
    :cond_9
    iget-object v8, p2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    goto :goto_7

    .line 5698
    :catch_1
    move-exception v3

    .line 5700
    .local v3, ex2:Landroid/content/ActivityNotFoundException;
    const-string v8, "HTCCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot start other album app: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 5632
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final startAlbum(Lcom/android/camera/MediaInfo;)Z
    .locals 1
    .parameter "mediaInfo"

    .prologue
    .line 5595
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/HTCCamera;->startAlbum(Landroid/content/Intent;Lcom/android/camera/MediaInfo;)Z

    move-result v0

    return v0
.end method

.method public startFocusFromLongPressKey()V
    .locals 2

    .prologue
    .line 4216
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 4236
    :cond_0
    :goto_0
    return-void

    .line 4218
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4221
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 4223
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4224
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    goto :goto_0

    .line 4235
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->handleSensorFocus()Z

    goto :goto_0
.end method

.method public final startPreview()Z
    .locals 2

    .prologue
    .line 7772
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->startPreview(ZLcom/android/camera/CameraType;)Z

    move-result v0

    return v0
.end method

.method public final startPreview(Lcom/android/camera/CameraType;)Z
    .locals 1
    .parameter "cameraType"

    .prologue
    .line 7776
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/camera/HTCCamera;->startPreview(ZLcom/android/camera/CameraType;)Z

    move-result v0

    return v0
.end method

.method public final switchMode(Lcom/android/camera/CameraMode;)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    move-result v0

    .line 1332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z
    .locals 8
    .parameter "cameraType"
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1337
    iget v3, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v3, v4, :cond_0

    .line 1339
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1341
    const-string v3, "HTCCamera"

    const-string v6, "change camera mode when focusing, cancel focus"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 1343
    const-string v3, "HTCCamera"

    const-string v6, "UnBlock Capture UI - change camera mode and cancel focus"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    :cond_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v3, :cond_2

    .line 1483
    :goto_0
    return v5

    .line 1345
    :cond_1
    const-string v3, "HTCCamera"

    const-string v4, "change camera mode when focusing, but device can\'t cancel focus"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1355
    :cond_2
    sget-object v6, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v3}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_0

    .line 1361
    const-string v3, "HTCCamera"

    const-string v4, "switchMode() - Taking picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1366
    :pswitch_0
    sget-object v6, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/RecordingState;

    invoke-virtual {v3}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_1

    .line 1375
    :cond_3
    const-string v3, "HTCCamera"

    const-string v4, "switchMode() - Recording"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1372
    :pswitch_1
    iget v3, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    .line 1382
    :pswitch_2
    if-nez p1, :cond_4

    .line 1384
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/camera/CameraType;

    .line 1385
    .restart local p1
    const/4 v0, 0x0

    .line 1396
    .local v0, isCameraChanged:Z
    :goto_1
    if-nez p2, :cond_7

    .line 1398
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/camera/CameraMode;

    .line 1399
    .restart local p2
    const/4 v1, 0x0

    .line 1403
    .local v1, isModeChanged:Z
    :goto_2
    if-nez v0, :cond_9

    if-nez v1, :cond_9

    move v5, v4

    .line 1404
    goto :goto_0

    .line 1389
    .end local v0           #isCameraChanged:Z
    .end local v1           #isModeChanged:Z
    :cond_4
    iget-boolean v3, p1, Lcom/android/camera/CameraType;->isSupported:Z

    if-nez v3, :cond_5

    .line 1391
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchMode() - Camera \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' is not supported"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1394
    :cond_5
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_6

    move v0, v4

    .restart local v0       #isCameraChanged:Z
    :goto_3
    goto :goto_1

    .end local v0           #isCameraChanged:Z
    :cond_6
    move v0, v5

    goto :goto_3

    .line 1402
    .restart local v0       #isCameraChanged:Z
    :cond_7
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eq p2, v3, :cond_8

    move v1, v4

    .restart local v1       #isModeChanged:Z
    :goto_4
    goto :goto_2

    .end local v1           #isModeChanged:Z
    :cond_8
    move v1, v5

    goto :goto_4

    .line 1407
    .restart local v1       #isModeChanged:Z
    :cond_9
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1409
    const-string v3, "HTCCamera"

    const-string v4, "switchMode() - Capture UI is blocked"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1412
    :cond_a
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v6, "Switching camera mode"

    invoke-interface {v3, v6, v5}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSwitchingModeBlockHandle:Lcom/android/camera/Handle;

    .line 1415
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->leaveQuickLaunchState()V

    .line 1418
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    .line 1422
    if-eqz v0, :cond_b

    .line 1425
    invoke-virtual {p1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v2, "SWITCH_TO_MAIN_CAMERA"

    .line 1426
    .local v2, name:Ljava/lang/String;
    :goto_5
    invoke-static {v2}, Lcom/android/camera/LOG;->printPerformanceStartLog(Ljava/lang/String;)V

    .line 1429
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isSwitchingCamera:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1430
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1433
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 1437
    .end local v2           #name:Ljava/lang/String;
    :cond_b
    if-eqz v1, :cond_e

    .line 1439
    sget-object v3, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p2}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_2

    .line 1453
    const-string v3, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try switching to unknown mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    if-eqz v0, :cond_c

    .line 1455
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    .line 1466
    :cond_c
    :goto_6
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v3, v5, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1469
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateSelfTimerInterval()V

    .line 1472
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFlash()V

    .line 1475
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSwitchingModeBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v3, v5}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 1476
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSwitchingModeBlockHandle:Lcom/android/camera/Handle;

    move v5, v4

    .line 1483
    goto/16 :goto_0

    .line 1425
    :cond_d
    const-string v2, "SWITCH_TO_FRONT_CAMERA"

    goto :goto_5

    .line 1443
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->changetoCameraMode(Z)V

    goto :goto_6

    .line 1448
    :pswitch_4
    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->changetoVideoMode(Z)V

    goto :goto_6

    .line 1461
    :cond_e
    if-eqz v0, :cond_c

    .line 1462
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    goto :goto_6

    .line 1355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1366
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1439
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final takeFocus(II)V
    .locals 1
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 4364
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4365
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    .line 4366
    :cond_0
    return-void
.end method

.method public final takePicture(Ljava/lang/String;)Z
    .locals 12
    .parameter "triggerSource"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2820
    const-string v5, "HTCCamera"

    const-string v8, "takePicture(\'"

    const-string v9, "\')"

    invoke-static {v5, v8, p1, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2823
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v5, :cond_0

    .line 2825
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - No camera thread"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 3033
    :goto_0
    return v5

    .line 2830
    :cond_0
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2832
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - Activity is pausing"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2833
    goto :goto_0

    .line 2835
    :cond_1
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2837
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - Activity is paused"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2838
    goto :goto_0

    .line 2842
    :cond_2
    iget-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v5, :cond_3

    .line 2844
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - Screen-save mode"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2845
    goto :goto_0

    .line 2849
    :cond_3
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->sinaCamera_IsGifMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0}, Lcom/android/camera/sina/GifModeController;->getTempFileSavingPath(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2851
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v7, Lcom/android/camera/IToastManager;

    invoke-virtual {v5, v7}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IToastManager;

    .line 2852
    .local v3, toastManager:Lcom/android/camera/IToastManager;
    if-eqz v3, :cond_4

    .line 2853
    const v5, 0x7f0a003a

    invoke-virtual {v3, v5}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    :goto_1
    move v5, v6

    .line 2856
    goto :goto_0

    .line 2855
    :cond_4
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - No IToastManager interface"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2860
    .end local v3           #toastManager:Lcom/android/camera/IToastManager;
    :cond_5
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v5, v8, :cond_c

    .line 2862
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v5, v8}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v5, v8}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2866
    :cond_6
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - Cannot take picture in video mode"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2867
    goto/16 :goto_0

    .line 2869
    :cond_7
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v5, v5, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2871
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - Cannot take picture in slow motion mode"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2872
    goto/16 :goto_0

    .line 2874
    :cond_8
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v5

    const-class v8, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v5, v8}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ICaptureResolutionManager;

    .line 2875
    .local v1, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-nez v1, :cond_9

    .line 2877
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - No ICaptureResolutionManager interface"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2878
    goto/16 :goto_0

    .line 2880
    :cond_9
    iget-object v5, v1, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Resolution;

    .line 2881
    .local v4, videoResolution:Lcom/android/camera/Resolution;
    sget-object v5, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v5, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2883
    :cond_a
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - Cannot take picture in MMS video recording"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2884
    goto/16 :goto_0

    .line 2886
    :cond_b
    const-string v5, "HTCCamera"

    const-string v8, "takePicture() - Take picture during video recording"

    invoke-static {v5, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    .end local v1           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    .end local v4           #videoResolution:Lcom/android/camera/Resolution;
    :cond_c
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v5, v5, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-nez v5, :cond_d

    .line 2892
    const-string v5, "HTCCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "takePicture() - Cannot take picture in current start mode ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2893
    goto/16 :goto_0

    .line 2897
    :cond_d
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2899
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - There is still a visible dialog"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2900
    goto/16 :goto_0

    .line 2902
    :cond_e
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2904
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - There is still a visible pop-up bubble"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2905
    goto/16 :goto_0

    .line 2909
    :cond_f
    iget v5, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v5, v7, :cond_11

    .line 2912
    const-string v5, "HTCCamera"

    const-string v6, "takePicture() - Taking picture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    iput v10, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 2916
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v6, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v5

    if-nez v5, :cond_10

    .line 2917
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 2920
    :cond_10
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v5, v6, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2921
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v8, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v5, v6, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v5, v7

    .line 2924
    goto/16 :goto_0

    .line 2928
    :cond_11
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2930
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    move v5, v6

    .line 2931
    goto/16 :goto_0

    .line 2935
    :cond_12
    sget-object v8, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v5}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v5

    aget v5, v8, v5

    packed-switch v5, :pswitch_data_0

    .line 2961
    :cond_13
    const-string v5, "HTCCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "takePicture() - Cannot take picture due to current taking picture state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2962
    goto/16 :goto_0

    .line 2941
    :pswitch_0
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v5, v8}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v5

    if-nez v5, :cond_15

    .line 2945
    const-string v5, "HTCCamera"

    const-string v6, "takePicture() - Take picture immediately after previous picture is completed"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v5, :cond_14

    .line 2947
    const-string v5, "HTCCamera"

    const-string v6, "takePicture() - Cancel previous pending taking picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 2949
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v5, v6, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v5, v7

    .line 2950
    goto/16 :goto_0

    .line 2954
    :cond_15
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - Cannot take picture immediately after previous picture is completed"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2955
    goto/16 :goto_0

    .line 2958
    :pswitch_1
    iget v5, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v5, v10, :cond_16

    iget v5, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_13

    .line 2966
    :cond_16
    :pswitch_2
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2968
    const-string v5, "HTCCamera"

    const-string v7, "takePicture() - Captutre UI is blocked"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2969
    goto/16 :goto_0

    .line 2973
    :cond_17
    iput-object v11, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 2976
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v8, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    if-eq v5, v8, :cond_19

    .line 2978
    :cond_18
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v5, v8, :cond_19

    .line 2980
    new-instance v5, Lcom/android/camera/CaptureEventArgs;

    sget-object v7, Lcom/android/camera/CaptureFailedReason;->StorageError:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v5, v11, v7}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->onTakingPictureFailed(Lcom/android/camera/CaptureEventArgs;)V

    move v5, v6

    .line 2981
    goto/16 :goto_0

    .line 2986
    :cond_19
    const-string v5, "HTCCamera"

    const-string v8, "takePicture() - Block Capture UI"

    invoke-static {v5, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v8, "Taking picture"

    invoke-interface {v5, v8, v7}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    .line 2990
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v5, v8}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    .line 2991
    .local v0, isPhotoMode:Z
    if-eqz v0, :cond_1a

    iget v5, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v5, v10, :cond_1a

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 2992
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 2995
    :cond_1a
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v5, v8, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2996
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v9, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v5, v8, v9}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2999
    if-eqz v0, :cond_1d

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/Duration;

    invoke-virtual {v5}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v8

    long-to-int v2, v8

    .line 3000
    .local v2, timer:I
    :goto_2
    if-gtz v2, :cond_1e

    .line 3003
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v5, :cond_1b

    .line 3004
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    const-string v8, "Taking picture"

    invoke-virtual {v5, v8, v11}, Lcom/android/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    .line 3007
    :cond_1b
    if-eqz v0, :cond_1c

    .line 3008
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3009
    :cond_1c
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v8, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v5, v6, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3012
    const-string v5, "HTCCamera"

    const-string v6, "takePicture() - Take picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5, v7}, Lcom/android/camera/CameraThread;->takePicture(Z)Lcom/android/camera/CaptureHandle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    :goto_3
    move v5, v7

    .line 3033
    goto/16 :goto_0

    .end local v2           #timer:I
    :cond_1d
    move v2, v6

    .line 2999
    goto :goto_2

    .line 3018
    .restart local v2       #timer:I
    :cond_1e
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCountDownSoundHandle:Lcom/android/camera/Handle;

    if-nez v5, :cond_1f

    .line 3020
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v6, 0x7f060008

    invoke-interface {v5, v6}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mCountDownSoundHandle:Lcom/android/camera/Handle;

    .line 3021
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v6, 0x7f060009

    invoke-interface {v5, v6}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mCountDownEndSoundHandle:Lcom/android/camera/Handle;

    .line 3025
    :cond_1f
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5, v7}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    .line 3028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/HTCCamera;->mSelfTimerStartTime:J

    .line 3029
    invoke-direct {p0, v2, v2}, Lcom/android/camera/HTCCamera;->countDownSelfTimer(II)V

    goto :goto_3

    .line 2935
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public triggerLongPressShareKey()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 7992
    const-string v0, "HTCCamera"

    const-string v1, "triggerLongPressShareKey_onKeyLongPress"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7993
    invoke-static {p0}, Lcom/android/camera/sina/SinaWeiboStarter;->getInst(Landroid/content/Context;)Lcom/android/camera/sina/SinaWeiboStarter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/sina/SinaWeiboStarter;->setTrigger(Z)V

    .line 7994
    invoke-static {p0}, Lcom/android/camera/sina/GifGenerator;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/GifGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/sina/GifGenerator;->startPhoto()V

    .line 7995
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v1, 0x55

    const/4 v4, 0x0

    const-wide/16 v5, 0x1770

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 7996
    return-void
.end method

.method public final triggerRecord()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 3384
    const-string v3, "HTCCamera"

    const-string v5, "triggerRecord() - start"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3387
    const-string v3, "HTCCamera"

    const-string v4, "triggerRecord() - end, UI Block !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    :goto_0
    return-void

    .line 3390
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3392
    const-string v3, "HTCCamera"

    const-string v4, "triggerRecord() - end, action screen open !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3396
    :cond_1
    sget-object v5, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/RecordingState;

    invoke-virtual {v3}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    .line 3517
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "triggerRecord() - current state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    :cond_2
    :goto_1
    const-string v3, "HTCCamera"

    const-string v4, "triggerRecord() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3402
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    if-nez v3, :cond_3

    .line 3404
    const-string v3, "HTCCamera"

    const-string v5, "triggerRecord() - Lock rotation"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3405
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v3, :cond_3

    .line 3407
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v3

    const-class v5, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v3, v5}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ICaptureResolutionManager;

    .line 3408
    .local v2, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    move-object v1, v3

    .line 3410
    .local v1, resolution:Lcom/android/camera/Resolution;
    :goto_2
    if-nez v2, :cond_5

    .line 3411
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    .line 3420
    .local v0, lockedRotation:Lcom/android/camera/rotate/UIRotation;
    :goto_3
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    const-string v5, "Recording"

    invoke-virtual {v3, v5, v0}, Lcom/android/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    .line 3425
    .end local v0           #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    .end local v1           #resolution:Lcom/android/camera/Resolution;
    .end local v2           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_3
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v5, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v3, v5}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 3427
    const-string v3, "HTCCamera"

    const-string v5, "triggerRecord() - Switch to video mode"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3428
    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3429
    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    sget-object v5, Lcom/android/camera/CaptureFailedReason;->Unknown:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->onRecordingFailed(Lcom/android/camera/CaptureEventArgs;)V

    goto/16 :goto_0

    .restart local v2       #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_4
    move-object v1, v4

    .line 3408
    goto :goto_2

    .line 3412
    .restart local v1       #resolution:Lcom/android/camera/Resolution;
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3413
    :cond_6
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    .restart local v0       #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    goto :goto_3

    .line 3414
    .end local v0           #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    :cond_7
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v5, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    if-ne v3, v5, :cond_8

    .line 3415
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    .restart local v0       #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    goto :goto_3

    .line 3416
    .end local v0           #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isSlowMotionMode()Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->isMmsVideo()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3417
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    .restart local v0       #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    goto :goto_3

    .line 3419
    .end local v0           #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    goto :goto_3

    .line 3432
    .end local v0           #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    .end local v1           #resolution:Lcom/android/camera/Resolution;
    .end local v2           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_a
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3448
    :cond_b
    const-string v3, "[ANALYTIC_com.android.camera]"

    const-string v5, "[press_jogball]recording"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3450
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3451
    :cond_c
    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    sget-object v5, Lcom/android/camera/CaptureFailedReason;->HasPopupOrDialog:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->onRecordingFailed(Lcom/android/camera/CaptureEventArgs;)V

    goto/16 :goto_0

    .line 3455
    :cond_d
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v3, v5, :cond_e

    .line 3456
    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    sget-object v5, Lcom/android/camera/CaptureFailedReason;->StorageError:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->onRecordingFailed(Lcom/android/camera/CaptureEventArgs;)V

    goto/16 :goto_0

    .line 3461
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3462
    const-string v3, "HTCCamera"

    const-string v4, "triggerRecord() - end, PowerWarning !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3465
    :cond_f
    invoke-virtual {p0, v6}, Lcom/android/camera/HTCCamera;->setBlockPowerWarning(Z)V

    .line 3467
    const-string v3, "HTCCamera"

    const-string v4, "Block Capture UI - Start Recorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v4, "Start recording"

    invoke-interface {v3, v4, v6}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 3476
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3479
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->startVideoRecording()Lcom/android/camera/CaptureHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 3481
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 3484
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 3485
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    .line 3487
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3488
    invoke-direct {p0, v7}, Lcom/android/camera/HTCCamera;->setFingerGestureEnable(Z)V

    goto/16 :goto_1

    .line 3497
    :pswitch_1
    const-string v3, "[ANALYTIC_com.android.camera]"

    const-string v4, "[press_jogball]stop_record"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3500
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3502
    const-string v3, "HTCCamera"

    const-string v4, "Block Capture UI - Stop Recorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v4, "Stop recording"

    invoke-interface {v3, v4, v6}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 3505
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/CameraThread;->stopVideoRecording(Lcom/android/camera/CaptureHandle;ZZ)V

    .line 3507
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V

    .line 3510
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 3511
    iget v3, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    if-lez v3, :cond_2

    .line 3512
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startAccelerometer()V

    goto/16 :goto_1

    .line 3396
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public triggerShortPressShareKey()V
    .locals 3

    .prologue
    .line 4117
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerShortPressShareKey_onKeyUp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/camera/sina/GifGenerator;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/GifGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/sina/GifGenerator;->getState()Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4118
    invoke-static {p0}, Lcom/android/camera/sina/GifGenerator;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/GifGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/sina/GifGenerator;->getState()Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    move-result-object v0

    sget-object v1, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->Photoing:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    if-ne v0, v1, :cond_1

    .line 4119
    const-string v0, "HTCCamera"

    const-string v1, "KEYCODE_HTC_SHARE_onKeyUp GifGenerator stopPhoto"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4120
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v1, 0x55

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4121
    invoke-static {p0}, Lcom/android/camera/sina/GifGenerator;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/GifGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/sina/GifGenerator;->stopPhoto()V

    .line 4130
    :cond_0
    :goto_0
    return-void

    .line 4123
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "KEYCODE_HTC_SHARE_onKeyUp takePicture1"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4124
    invoke-static {p0}, Lcom/android/camera/sina/GifGenerator;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/GifGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/sina/GifGenerator;->getState()Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    move-result-object v0

    sget-object v1, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->GifGenerating:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    if-eq v0, v1, :cond_0

    .line 4125
    const-string v0, "HTCCamera"

    const-string v1, "KEYCODE_HTC_SHARE_onKeyUp takePicture2"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4126
    invoke-static {p0}, Lcom/android/camera/sina/SinaWeiboStarter;->getInst(Landroid/content/Context;)Lcom/android/camera/sina/SinaWeiboStarter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/sina/SinaWeiboStarter;->setTrigger(Z)V

    .line 4127
    const-string v0, "Press HW camera key"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final unlockZoom()V
    .locals 3

    .prologue
    .line 5525
    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5528
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 5531
    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    if-nez v0, :cond_1

    .line 5533
    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - Counter is 0"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5534
    const-string v0, "unlockZoom()"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    .line 5547
    :cond_0
    :goto_0
    return-void

    .line 5539
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    .line 5540
    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    if-gtz v0, :cond_0

    .line 5544
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5546
    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
