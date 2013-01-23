.class public Lcom/android/camera/HTCSnapbooth;
.super Landroid/app/Activity;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/HTCSnapbooth$MainHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ORIENTATION_LIGHT:Ljava/lang/String; = "com.htc.content.intent.action.ORIENTATION_LIGHT"

.field public static final CAPTURE_CANCELED:I = 0x4

.field public static final CAPTURE_COMPLETED:I = 0x5

.field private static final COUNTDOWN_INTERVAL:I = 0x320

.field public static final COUNT_DOWN_SELFTIMER:I = 0x6

.field public static final DCAP_RESET_CAPTURE_CANCELABLE:I = 0x1

.field public static final DCAP_UNFREEZE_ORIENTATION:I = 0x2

.field private static final EFFECT_SLIDE_DURATION:I = 0x190

.field public static final ENTER_SCREEN_SAVE:I = 0x2b

.field public static final EXTRA_MANUAL:Ljava/lang/String; = "manual"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final FIRST_PREVIEW_FRAME_ARRIVED:I = 0x8

.field public static final INIT_THUMBNAIL_CREATED:I = 0x64

.field private static final INTENT_MODE_CAMERA:Ljava/lang/String; = "camera"

.field private static final INTENT_MODE_KEY:Ljava/lang/String; = "capture_mode"

.field private static final INTENT_PREVIEW_FILMSTRIP:Ljava/lang/String; = "filmstrip"

.field private static final INTENT_PREVIEW_KEY:Ljava/lang/String; = "preview_mode"

.field public static final NOTIFY_STORAGE_STATE:I = 0x2a

.field private static final NO_KEEP_VOLUME:I = -0x1

.field public static final PLAY_SOUND:I = 0x22

.field public static final PREVIEW_STARTED:I = 0x2

.field public static final PREVIEW_STOPPED:I = 0x3

.field public static final RESET_SURFACEVIEW_LAYOUT:I = 0x1

.field public static final REVIEW_ANIMATION:I = 0xc

.field public static final REVIEW_SCREEN:I = 0xb

.field private static final REVIEW_SCREEN_DURATION:I = 0x7d0

.field private static final SCREEN_SAVE_TIMEOUT:I = 0x1d4c0

.field public static final SHOW_TOAST:I = 0x1f

.field private static final SHUTTER_SLIDE_DURATION:I = 0x190

.field public static final STORE_IMAGE_FAILED:I = 0x65

.field private static final TAG:Ljava/lang/String; = "HTCSnapbooth"

.field public static final UPDATE_MULTISHUTTER_BUBBLE:I = 0x7

.field private static mIsWaitKeyguardBeforePreview:Z


# instance fields
.field private mActivityOnPause:Z

.field private mAlertDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioStreamType:I

.field private mCaptureCancelable:Z

.field private mCaptureLandscapeBtn:Landroid/widget/Button;

.field private mCaptureLandscapeLayout:Landroid/view/View;

.field private mCaptureLayout:Landroid/view/View;

.field private mCapturePortraitBtn:Landroid/widget/Button;

.field private mCapturePortraitLayout:Landroid/view/View;

.field private mCountBubbleLandscapeLayout:Landroid/view/View;

.field private mCountBubbleLayout:Landroid/view/View;

.field private mCountBubblePortraitLayout:Landroid/view/View;

.field private mCountdownLandscapeLayout:Landroid/view/View;

.field private mCountdownLayout:Landroid/view/View;

.field private mCountdownPortraitLayout:Landroid/view/View;

.field private mCurrentAlertDialog:Landroid/app/Dialog;

.field private mCurrentShutterNum:I

.field private mCurrentThumbnail:Landroid/graphics/Bitmap;

.field private mEffectLandscapePanel:Landroid/view/View;

.field private mEffectPortraitPanel:Landroid/view/View;

.field private mFreezeOrientation:I

.field private mGalleryLandscapeAnimationThumbnail:Landroid/widget/ImageView;

.field private mGalleryLandscapeLayout:Landroid/view/View;

.field private mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

.field private mGalleryPortraitAnimationThumbnail:Landroid/widget/ImageView;

.field private mGalleryPortraitLayout:Landroid/view/View;

.field private mGalleryPortraitThumbnail:Landroid/widget/ImageView;

.field private mIntentManager:Lcom/android/camera/SnapboothIntentManager;

.field private mIsBackKeyDown:Z

.field private mIsCanceling:Z

.field private mIsCapturing:Z

.field private mIsFreezeOrientation:Z

.field private mIsKeyguardVisible:Z

.field private mIsMultiShutter:Z

.field private mIsPreviewFrameArrived:Z

.field private mIsPreviewStarted:Z

.field private mIsReviewAnimationCompleted:Z

.field private mIsReviewScreenVisible:Z

.field private mIsScreenSaveActivated:Z

.field private mIsShareDialogCanceled:Z

.field private mKeyguardEventReceiver:Landroid/content/BroadcastReceiver;

.field private mLastOrientation:I

.field private mMainLayout:Landroid/view/View;

.field private mNeedInitThumbnail:Z

.field private final mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnCreateIsCalled:Z

.field private final mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOriginalVolume_Alarm:I

.field private mOriginalVolume_Ring:I

.field private mReviewImage:Landroid/graphics/Bitmap;

.field private mReviewImageContainer:Landroid/view/View;

.field private mReviewImageView:Landroid/widget/ImageView;

.field private mReviewLayout:Landroid/view/View;

.field private mReviewScreenButtons:[Landroid/view/View;

.field private mReviewScreenButtonsPanel:Landroid/view/View;

.field private mReviewThumbnail:Landroid/graphics/Bitmap;

.field private mRotation:Lcom/android/camera/rotate/UIRotation;

.field private mScreenSaveLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSecondLayout:Landroid/view/View;

.field private mSettings:Lcom/android/camera/Settings;

.field private mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

.field private mSnapboothHandler:Landroid/os/Handler;

.field private mSnapboothThread:Lcom/android/camera/SnapboothThread;

.field private mStorageCardEventReceiver:Landroid/content/BroadcastReceiver;

.field private mSurfaceCreated:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCSnapbooth;->mIsWaitKeyguardBeforePreview:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    .line 86
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    .line 90
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    .line 91
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    .line 93
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    .line 96
    iput v3, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    .line 97
    iput v3, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    .line 98
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    .line 100
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    .line 101
    iput v3, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Alarm:I

    .line 102
    iput v3, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Ring:I

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    .line 105
    iput v2, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I

    .line 114
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    .line 115
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 116
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    .line 117
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    .line 118
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    .line 119
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    .line 120
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    .line 122
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    .line 123
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    .line 124
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

    .line 125
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeAnimationThumbnail:Landroid/widget/ImageView;

    .line 126
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    .line 127
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitAnimationThumbnail:Landroid/widget/ImageView;

    .line 129
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeLayout:Landroid/view/View;

    .line 130
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitLayout:Landroid/view/View;

    .line 132
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeBtn:Landroid/widget/Button;

    .line 133
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitBtn:Landroid/widget/Button;

    .line 135
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLandscapeLayout:Landroid/view/View;

    .line 136
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownPortraitLayout:Landroid/view/View;

    .line 138
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLandscapeLayout:Landroid/view/View;

    .line 139
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubblePortraitLayout:Landroid/view/View;

    .line 141
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    .line 142
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    .line 144
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewLayout:Landroid/view/View;

    .line 145
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    .line 146
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageView:Landroid/widget/ImageView;

    .line 148
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Landroid/view/View;

    .line 149
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtons:[Landroid/view/View;

    .line 161
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    .line 166
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    .line 186
    new-instance v0, Lcom/android/camera/HTCSnapbooth$1;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCSnapbooth$1;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mStorageCardEventReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v0, Lcom/android/camera/HTCSnapbooth$2;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCSnapbooth$2;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mKeyguardEventReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    new-instance v0, Lcom/android/camera/HTCSnapbooth$3;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCSnapbooth$3;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 237
    new-instance v0, Lcom/android/camera/HTCSnapbooth$4;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCSnapbooth$4;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsKeyguardVisible:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsKeyguardVisible:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->unfreezeUIRotation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/rotate/UIRotation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/HTCSnapbooth;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/camera/HTCSnapbooth;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/camera/HTCSnapbooth;->mIsWaitKeyguardBeforePreview:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/HTCSnapbooth;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCSnapbooth;->showToast(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/HTCSnapbooth;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->cancelCapture()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCSnapbooth;->showReviewScreen(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mNeedInitThumbnail:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/camera/HTCSnapbooth;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCSnapbooth;->showStorageToast(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/HTCSnapbooth;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->enterScreenSave()V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/camera/HTCSnapbooth;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$3302(Lcom/android/camera/HTCSnapbooth;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/camera/HTCSnapbooth;Lcom/android/camera/rotate/UIRotation;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->onRotateChanged(Lcom/android/camera/rotate/UIRotation;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->capture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsScreenSaveActivated:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->exitScreenSave()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/HTCSnapbooth;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/camera/HTCSnapbooth;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceCreated:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsShareDialogCanceled:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsShareDialogCanceled:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->deleteCurrentImageFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4202(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewAnimationCompleted:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/camera/HTCSnapbooth;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->showShareImageChooser(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/HTCSnapbooth;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->doneForServiceMode(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/HTCSnapbooth;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->confirmDeletingCurrentImageFile(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->reCaptureForServiceMode()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewStarted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewStarted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z

    return p1
.end method

.method private broadcastStopFM()V
    .locals 3

    .prologue
    .line 1516
    const-string v1, "HTCSnapbooth"

    const-string v2, "!!!! @@@@ broadcastStopFM() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.servicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1518
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1519
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 1520
    const-string v1, "HTCSnapbooth"

    const-string v2, "!!!! @@@@ broadcastStopFM() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    return-void
.end method

.method private broadcastStopVoiceRecording()V
    .locals 3

    .prologue
    .line 1504
    const-string v1, "HTCSnapbooth"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.soundrecorder.recordingservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1506
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 1508
    const-string v1, "HTCSnapbooth"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    return-void
.end method

.method private cancelCapture()V
    .locals 2

    .prologue
    .line 2237
    const-string v0, "HTCSnapbooth"

    const-string v1, "Cancel capture!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsCapturing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    if-eqz v0, :cond_1

    .line 2250
    :cond_0
    :goto_0
    return-void

    .line 2242
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z

    .line 2245
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2246
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2249
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->closeCaptureUI()V

    goto :goto_0
.end method

.method private capture()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1122
    const-string v1, "HTCSnapbooth"

    const-string v4, "Start capture"

    invoke-static {v1, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothThread;->getCurrentStorageState()I

    move-result v0

    .line 1128
    .local v0, storageState:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1130
    if-eqz v0, :cond_0

    .line 1132
    invoke-direct {p0, v0, v2}, Lcom/android/camera/HTCSnapbooth;->showStorageToast(IZ)V

    move v1, v2

    .line 1180
    .end local v0           #storageState:I
    :goto_0
    return v1

    .line 1139
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z

    if-nez v1, :cond_1

    move v1, v2

    .line 1140
    goto :goto_0

    .line 1143
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mNeedInitThumbnail:Z

    .line 1146
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothCustomize;->isMultiShutter()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    .line 1147
    iput v3, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I

    .line 1150
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    .line 1151
    iput-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z

    .line 1154
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    if-eqz v1, :cond_2

    .line 1156
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubblePortraitLayout:Landroid/view/View;

    :goto_1
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    .line 1157
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->setCancelableCaptureUI()V

    .line 1164
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    iput-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mIsCapturing:Z

    .line 1168
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    if-eqz v1, :cond_3

    .line 1170
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    invoke-static {v1, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1171
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    iget v5, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I

    invoke-static {v1, v4, v5, v2, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1173
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-static {v1, v4, v6, v2, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1177
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->restartScreenSaveTimer()V

    move v1, v3

    .line 1180
    goto :goto_0

    .line 1156
    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLandscapeLayout:Landroid/view/View;

    goto :goto_1
.end method

.method private closeCaptureUI()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1200
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v0}, Lcom/android/camera/SnapboothCustomize;->disableCountBubbles()V

    .line 1203
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1209
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->slideOutShutterBar()V

    .line 1212
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->enableGalleryButton(Z)V

    .line 1213
    return-void
.end method

.method private closeReviewScreen(ZZ)V
    .locals 23
    .parameter "showAnimation"
    .parameter "updateThumbnail"

    .prologue
    .line 2023
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    if-nez v4, :cond_0

    .line 2191
    :goto_0
    return-void

    .line 2027
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    .line 2030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 2031
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/HTCSnapbooth;->mNeedInitThumbnail:Z

    .line 2034
    :cond_1
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCSnapbooth;->getFreezeOrientation()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;IZ)Lcom/android/camera/rotate/UIRotation;

    move-result-object v4

    iget v0, v4, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    move/from16 v18, v0

    .line 2035
    .local v18, freezeUIOrientation:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/camera/HTCSnapbooth;->isOrientationPortrait(I)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v19, 0x1

    .line 2038
    .local v19, isLandscape:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2043
    if-eqz v19, :cond_6

    .line 2044
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeAnimationThumbnail:Landroid/widget/ImageView;

    .line 2049
    .local v14, aniThumbImageView:Landroid/widget/ImageView;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 2050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeAnimationThumbnail:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2051
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitAnimationThumbnail:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 2052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitAnimationThumbnail:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2055
    :cond_3
    const/16 v17, 0x2bc

    .line 2056
    .local v17, duration:I
    const/4 v4, 0x2

    new-array v15, v4, [Z

    .line 2057
    .local v15, animationCompleted:[Z
    if-eqz p1, :cond_7

    .line 2059
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2060
    .local v12, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const/16 v4, 0x190

    int-to-long v4, v4

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2061
    const-wide/16 v4, 0x12c

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 2062
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3fe66666

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3fc0

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2063
    .local v2, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    const/16 v4, 0x190

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2064
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 2065
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2066
    .local v16, animationSet:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2067
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2069
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2071
    new-instance v4, Lcom/android/camera/HTCSnapbooth$19;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v4, v0, v1, v14, v15}, Lcom/android/camera/HTCSnapbooth$19;-><init>(Lcom/android/camera/HTCSnapbooth;ZLandroid/widget/ImageView;[Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2125
    .end local v2           #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    .end local v12           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    .end local v16           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/camera/SnapboothCustomize;->hideViewfinderCover(Z)V

    .line 2128
    if-eqz p1, :cond_a

    .line 2130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 2131
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2132
    .local v13, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f80

    const v5, 0x3e4ccccd

    const/high16 v6, 0x3f80

    const v7, 0x3e19999a

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2134
    .local v3, anim:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 2135
    const/16 v4, 0x1f4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2136
    invoke-virtual {v13, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2137
    new-instance v22, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const v5, 0x3dcccccd

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2138
    .local v22, showBarAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x1f4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 2139
    const/16 v4, 0xc8

    int-to-long v4, v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2140
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2142
    if-eqz v19, :cond_9

    .line 2143
    new-instance v21, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    sget v5, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DX_LAND:I

    int-to-float v5, v5

    const/4 v6, 0x0

    sget v7, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DY_LAND:I

    int-to-float v7, v7

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2146
    .local v21, showAni:Landroid/view/animation/TranslateAnimation;
    :goto_4
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2147
    const-wide/16 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2148
    move/from16 v0, v17

    int-to-long v4, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2149
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    invoke-virtual {v4, v13}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2152
    new-instance v4, Lcom/android/camera/HTCSnapbooth$20;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/android/camera/HTCSnapbooth$20;-><init>(Lcom/android/camera/HTCSnapbooth;[Z)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 2035
    .end local v3           #anim:Landroid/view/animation/ScaleAnimation;
    .end local v13           #aniSet:Landroid/view/animation/AnimationSet;
    .end local v14           #aniThumbImageView:Landroid/widget/ImageView;
    .end local v15           #animationCompleted:[Z
    .end local v17           #duration:I
    .end local v19           #isLandscape:Z
    .end local v21           #showAni:Landroid/view/animation/TranslateAnimation;
    .end local v22           #showBarAni:Landroid/view/animation/AlphaAnimation;
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2046
    .restart local v19       #isLandscape:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitAnimationThumbnail:Landroid/widget/ImageView;

    .restart local v14       #aniThumbImageView:Landroid/widget/ImageView;
    goto/16 :goto_2

    .line 2107
    .restart local v15       #animationCompleted:[Z
    .restart local v17       #duration:I
    :cond_7
    if-eqz p2, :cond_8

    .line 2109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    .line 2110
    .local v20, oldBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    .line 2113
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    .line 2114
    if-eqz v20, :cond_4

    .line 2115
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    .line 2119
    .end local v20           #oldBitmap:Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 2120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    .line 2145
    .restart local v3       #anim:Landroid/view/animation/ScaleAnimation;
    .restart local v13       #aniSet:Landroid/view/animation/AnimationSet;
    .restart local v22       #showBarAni:Landroid/view/animation/AlphaAnimation;
    :cond_9
    new-instance v21, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    sget v5, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DY_PORT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    sget v7, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DX_PORT:I

    neg-int v7, v7

    int-to-float v7, v7

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v21       #showAni:Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_4

    .line 2178
    .end local v3           #anim:Landroid/view/animation/ScaleAnimation;
    .end local v13           #aniSet:Landroid/view/animation/AnimationSet;
    .end local v21           #showAni:Landroid/view/animation/TranslateAnimation;
    .end local v22           #showBarAni:Landroid/view/animation/AlphaAnimation;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImageView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b

    .line 2184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2185
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;

    .line 2189
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/HTCSnapbooth;->unfreezeUIRotation()V

    goto/16 :goto_0
.end method

.method private confirmDeletingCurrentImageFile(I)V
    .locals 10
    .parameter "freezeUIOrientation"

    .prologue
    .line 1718
    iget-object v4, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1

    .line 1769
    :cond_0
    :goto_0
    return-void

    .line 1722
    :cond_1
    iget-object v4, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1725
    new-instance v3, Lcom/android/camera/HTCSnapbooth$13;

    invoke-direct {v3, p0}, Lcom/android/camera/HTCSnapbooth$13;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    .line 1734
    .local v3, yesButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/HTCSnapbooth$14;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCSnapbooth$14;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    .line 1742
    .local v2, noButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p0}, Lcom/android/camera/SnapboothFileManager;->getCurrentImageFileIndex(Landroid/app/Activity;)I

    move-result v0

    .line 1743
    .local v0, fileIndex:I
    if-ltz v0, :cond_0

    .line 1745
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/android/camera/SnapboothFileManager;->DCFInfo:Lcom/android/camera/io/DCFInfo;

    new-instance v8, Lcom/android/camera/io/FileCounter;

    invoke-direct {v8, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    sget-object v9, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    invoke-static {v7, v8, v9}, Lcom/android/camera/io/DCFUtility;->getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1750
    .local v1, msg:Ljava/lang/String;
    new-instance v4, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x2040214

    invoke-virtual {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x2040151

    invoke-virtual {v4, v5, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x2040152

    invoke-virtual {v4, v5, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/HTCSnapbooth;->mAlertDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    .line 1759
    iget-object v4, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    new-instance v5, Lcom/android/camera/HTCSnapbooth$15;

    invoke-direct {v5, p0}, Lcom/android/camera/HTCSnapbooth$15;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1768
    iget-object v4, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private deleteCurrentImageFile()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1903
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1906
    invoke-direct {p0, v2, v2}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    .line 1909
    const/4 v0, 0x1

    return v0
.end method

.method private doneForServiceMode(I)V
    .locals 9
    .parameter "freezeUIOrientation"

    .prologue
    .line 1776
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    invoke-virtual {v6}, Lcom/android/camera/SnapboothIntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v5

    .line 1778
    .local v5, saveUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1779
    .local v3, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 1780
    .local v1, data:[B
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    if-eqz v6, :cond_0

    .line 1782
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v6}, Lcom/android/camera/SnapboothThread;->getJpegData()[B

    move-result-object v1

    .line 1785
    :cond_0
    sget-object v6, Lcom/android/camera/IntentRequestName;->Contacts:Lcom/android/camera/IntentRequestName;

    invoke-virtual {p0, v6}, Lcom/android/camera/HTCSnapbooth;->isRequestName(Lcom/android/camera/IntentRequestName;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1787
    if-nez v1, :cond_1

    .line 1788
    const-string v6, "HTCSnapbooth"

    const-string v7, "contacts - jpeg data is null !!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    :goto_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    .line 1880
    const/4 v1, 0x0

    .line 1881
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/android/camera/HTCSnapbooth;->setResult(ILandroid/content/Intent;)V

    .line 1882
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->finish()V

    .line 1883
    return-void

    .line 1791
    :cond_1
    const/4 v0, 0x0

    .line 1792
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->isOrientationPortrait(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1794
    sget v6, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    sget-object v8, Lcom/android/camera/Resolution;->CONTACT_1_1_272x272:Lcom/android/camera/Resolution;

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v8

    invoke-static {v1, v6, v7, v8}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1807
    :goto_1
    if-nez v0, :cond_3

    .line 1808
    const-string v6, "HTCSnapbooth"

    const-string v7, "return jpeg decode error!!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1801
    :cond_2
    sget v6, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    sget-object v8, Lcom/android/camera/Resolution;->CONTACT_1_1_272x272:Lcom/android/camera/Resolution;

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v8

    invoke-static {v1, v6, v7, v8}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 1811
    :cond_3
    const-string v6, "inline-data"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 1815
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    sget-object v6, Lcom/android/camera/IntentRequestName;->Square:Lcom/android/camera/IntentRequestName;

    invoke-virtual {p0, v6}, Lcom/android/camera/HTCSnapbooth;->isRequestName(Lcom/android/camera/IntentRequestName;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1817
    if-nez v1, :cond_5

    .line 1818
    const-string v6, "HTCSnapbooth"

    const-string v7, "contacts - jpeg data is null !!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1821
    :cond_5
    const/4 v0, 0x0

    .line 1822
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->isOrientationPortrait(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1824
    sget v6, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    sget v8, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-static {v1, v6, v7, v8}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1837
    :goto_2
    if-nez v0, :cond_7

    .line 1838
    const-string v6, "HTCSnapbooth"

    const-string v7, "return jpeg decode error!!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1831
    :cond_6
    sget v6, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    sget v8, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-static {v1, v6, v7, v8}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 1841
    :cond_7
    const-string v6, "inline-data"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1847
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_8
    if-eqz v5, :cond_a

    .line 1849
    if-eqz v1, :cond_9

    .line 1851
    const/4 v4, 0x0

    .line 1853
    .local v4, outputStream:Ljava/io/OutputStream;
    :try_start_0
    const-string v6, "HTCSnapbooth"

    const-string v7, "sent MediaStore.EXTRA_OUTPUT - start"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 1855
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1856
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1858
    const-string v6, "HTCSnapbooth"

    const-string v7, "sent MediaStore.EXTRA_OUTPUT - end"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    invoke-static {v4}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1859
    :catch_0
    move-exception v2

    .line 1860
    .local v2, ex:Ljava/io/IOException;
    :try_start_1
    const-string v6, "HTCSnapbooth"

    const-string v7, "sent JpegData fail"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1862
    invoke-static {v4}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {v4}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 1867
    .end local v4           #outputStream:Ljava/io/OutputStream;
    :cond_9
    const-string v6, "HTCSnapbooth"

    const-string v7, "EXTRA_OUTPUT - jpeg data is null !!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1872
    :cond_a
    invoke-static {p0}, Lcom/android/camera/SnapboothFileManager;->getLastContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1873
    const-string v6, "HTCSnapbooth"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "return request:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/android/camera/SnapboothFileManager;->getLastContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private enterScreenSave()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2497
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 2550
    :cond_0
    :goto_0
    return-void

    .line 2499
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsScreenSaveActivated:Z

    if-nez v0, :cond_0

    .line 2501
    iput-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mIsScreenSaveActivated:Z

    .line 2503
    const-string v0, "HTCSnapbooth"

    const-string v1, "enterScreenSave() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 2508
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 2509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    .line 2513
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mScreenSaveLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_3

    .line 2514
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v0}, Lcom/android/camera/SnapboothCustomize;->getScreenSaveLayout()Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mScreenSaveLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 2517
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mScreenSaveLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    iget v1, v1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 2518
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mScreenSaveLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 2521
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    if-eqz v0, :cond_4

    .line 2523
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2524
    invoke-direct {p0, v2, v3}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    .line 2530
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2533
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2534
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2537
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2544
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->setOldBrightness()V

    .line 2547
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x2b

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2549
    const-string v0, "HTCSnapbooth"

    const-string v1, "enterScreenSave() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2526
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->reCaptureForServiceMode()V

    goto :goto_1
.end method

.method private exitScreenSave()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2558
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 2594
    :cond_0
    :goto_0
    return-void

    .line 2560
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsScreenSaveActivated:Z

    if-eqz v0, :cond_0

    .line 2562
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsScreenSaveActivated:Z

    .line 2564
    const-string v0, "HTCSnapbooth"

    const-string v1, "exitScreenSave() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    iget v0, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    invoke-static {v3, v0, v2}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;IZ)Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/HTCSnapbooth;->onRotateChanged(Lcom/android/camera/rotate/UIRotation;)Z

    .line 2570
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mScreenSaveLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_2

    .line 2571
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mScreenSaveLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 2574
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z

    if-eqz v0, :cond_3

    .line 2576
    const-string v0, "HTCSnapbooth"

    const-string v1, "Activity is paused, cancel exiting screen save mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2581
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2584
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->setMaxBrightness()V

    .line 2587
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z

    .line 2588
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v2, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2591
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->restartScreenSaveTimer()V

    .line 2593
    const-string v0, "HTCSnapbooth"

    const-string v1, "exitScreenSave() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAdjustedVolume(I)I
    .locals 4
    .parameter "max"

    .prologue
    .line 1488
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/HeadsetHelper;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1495
    :goto_0
    return v0

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x3fd3333333333333L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private initEffectPanel()V
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->initLandEffectBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->initPortEffectBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    .line 1262
    :cond_1
    return-void
.end method

.method private initializeUILayout()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 956
    const-string v8, "HTCSnapbooth"

    const-string v9, "initializeUILayout() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const/4 v5, 0x0

    .line 960
    .local v5, stub:Landroid/view/ViewStub;
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    if-nez v8, :cond_0

    .line 962
    const-string v8, "HTCSnapbooth"

    const-string v9, "mMainLayout == null - initiate mMainLayout"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-static {}, Lcom/android/camera/SnapboothCustomize;->getSnapboothMainLayout()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #stub:Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 964
    .restart local v5       #stub:Landroid/view/ViewStub;
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    .line 966
    :cond_0
    const-string v8, "HTCSnapbooth"

    const-string v9, "initOnCreate_after_preview() - set mMainLayout visible"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 970
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    if-nez v8, :cond_1

    .line 972
    const-string v8, "HTCSnapbooth"

    const-string v9, "mSecondLayout == null - initiate mSecondLayout"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-static {}, Lcom/android/camera/SnapboothCustomize;->getSnapboothSecondLayout()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #stub:Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 974
    .restart local v5       #stub:Landroid/view/ViewStub;
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    .line 978
    :cond_1
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mReviewLayout:Landroid/view/View;

    if-nez v8, :cond_2

    .line 980
    const-string v8, "HTCSnapbooth"

    const-string v9, "mReviewLayout == null - initiate mReviewLayout"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-static {}, Lcom/android/camera/SnapboothCustomize;->getSnapboothReviewLayout()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #stub:Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 982
    .restart local v5       #stub:Landroid/view/ViewStub;
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mReviewLayout:Landroid/view/View;

    .line 986
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v8

    if-nez v8, :cond_4

    .line 988
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    if-nez v8, :cond_3

    .line 990
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v9, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/camera/SnapboothCustomize;->initLandGalleryBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    .line 991
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v8}, Lcom/android/camera/SnapboothCustomize;->getLandGalleryThumbnail()Landroid/widget/ImageView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

    .line 992
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v8}, Lcom/android/camera/SnapboothCustomize;->getLandGalleryAnimationThumbnail()Landroid/widget/ImageView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeAnimationThumbnail:Landroid/widget/ImageView;

    .line 994
    :cond_3
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    if-nez v8, :cond_4

    .line 996
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v9, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/camera/SnapboothCustomize;->initPortGalleryBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    .line 997
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v8}, Lcom/android/camera/SnapboothCustomize;->getPortGalleryThumbnail()Landroid/widget/ImageView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    .line 998
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v8}, Lcom/android/camera/SnapboothCustomize;->getPortGalleryAnimationThumbnail()Landroid/widget/ImageView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitAnimationThumbnail:Landroid/widget/ImageView;

    .line 1003
    :cond_4
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeLayout:Landroid/view/View;

    if-nez v8, :cond_5

    .line 1005
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v9, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/camera/SnapboothCustomize;->initLandShutterBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeLayout:Landroid/view/View;

    .line 1006
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v8}, Lcom/android/camera/SnapboothCustomize;->getLandShutterBtn()Landroid/widget/Button;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeBtn:Landroid/widget/Button;

    .line 1008
    :cond_5
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitLayout:Landroid/view/View;

    if-nez v8, :cond_6

    .line 1010
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v9, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/camera/SnapboothCustomize;->initPortShutterBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitLayout:Landroid/view/View;

    .line 1011
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v8}, Lcom/android/camera/SnapboothCustomize;->getPortShutterBtn()Landroid/widget/Button;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitBtn:Landroid/widget/Button;

    .line 1015
    :cond_6
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    if-nez v8, :cond_8

    .line 1017
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v9, p0, Lcom/android/camera/HTCSnapbooth;->mReviewLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v10

    if-nez v10, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {v8, v9, v6}, Lcom/android/camera/SnapboothCustomize;->initReviewImage(Landroid/view/View;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    .line 1018
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v6}, Lcom/android/camera/SnapboothCustomize;->getLandReviewImg()Landroid/widget/ImageView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageView:Landroid/widget/ImageView;

    .line 1022
    :cond_8
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Landroid/view/View;

    if-nez v6, :cond_9

    .line 1024
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v6}, Lcom/android/camera/SnapboothCustomize;->getReviewScreenButtonsPanel()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Landroid/view/View;

    .line 1025
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v6}, Lcom/android/camera/SnapboothCustomize;->getReviewScreenButtons()[Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtons:[Landroid/view/View;

    .line 1026
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtons:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_9

    aget-object v1, v0, v2

    .line 1028
    .local v1, button:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1029
    .local v3, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    sget v6, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTON_WIDTH:I

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1030
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1035
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #button:Landroid/view/View;
    .end local v2           #i$:I
    .end local v3           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #len$:I
    :cond_9
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLandscapeLayout:Landroid/view/View;

    if-nez v6, :cond_a

    .line 1036
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Lcom/android/camera/SnapboothCustomize;->initLandCountdownLayer(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLandscapeLayout:Landroid/view/View;

    .line 1037
    :cond_a
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownPortraitLayout:Landroid/view/View;

    if-nez v6, :cond_b

    .line 1038
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Lcom/android/camera/SnapboothCustomize;->initPortCountdownLayer(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownPortraitLayout:Landroid/view/View;

    .line 1041
    :cond_b
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLandscapeLayout:Landroid/view/View;

    if-nez v6, :cond_c

    .line 1042
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Lcom/android/camera/SnapboothCustomize;->initLandCountBubbleLayer(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLandscapeLayout:Landroid/view/View;

    .line 1043
    :cond_c
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubblePortraitLayout:Landroid/view/View;

    if-nez v6, :cond_d

    .line 1044
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Lcom/android/camera/SnapboothCustomize;->initPortCountBubbleLayer(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubblePortraitLayout:Landroid/view/View;

    .line 1047
    :cond_d
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->initEffectPanel()V

    .line 1050
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v6

    if-ne v6, v7, :cond_e

    .line 1051
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v6}, Landroid/view/OrientationEventListener;->enable()V

    .line 1054
    :cond_e
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->setupUIElements()V

    .line 1056
    const-string v6, "HTCSnapbooth"

    const-string v7, "initializeUILayout() - end"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    return-void
.end method

.method private isOrientationPortrait(I)Z
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1404
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    iget v0, v0, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->InversePortrait:Lcom/android/camera/rotate/UIRotation;

    iget v0, v0, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRotateChanged(Lcom/android/camera/rotate/UIRotation;)Z
    .locals 3
    .parameter "rotation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1301
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    if-eq v2, p1, :cond_0

    .line 1306
    iget-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsScreenSaveActivated:Z

    if-eqz v2, :cond_1

    .line 1308
    const-string v1, "HTCSnapbooth"

    const-string v2, "Screen save is activated, cancel UI rotation"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_0
    :goto_0
    return v0

    .line 1313
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->restartScreenSaveTimer()V

    .line 1316
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    .line 1319
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v2, v1}, Lcom/android/camera/SnapboothCustomize;->showPreviewCover(Z)V

    .line 1322
    iget v2, p1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    invoke-direct {p0, v2}, Lcom/android/camera/HTCSnapbooth;->setLayoutOrientation(I)V

    .line 1325
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1326
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v1, v0, v0, p1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1329
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1332
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->slideInEffectBar(Lcom/android/camera/rotate/UIRotation;)V

    .line 1335
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->slideInShutterBar()V

    move v0, v1

    .line 1338
    goto :goto_0
.end method

.method private reCaptureForServiceMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1891
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1894
    invoke-direct {p0, v2, v2}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    .line 1895
    return-void
.end method

.method private setCancelableCaptureUI()V
    .locals 2

    .prologue
    .line 1188
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->slideOutEffectBar()V

    .line 1189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    .line 1190
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->switchShutterBtn(Z)V

    .line 1191
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->enableGalleryButton(Z)V

    .line 1192
    return-void
.end method

.method private setLayoutOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 1348
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->isOrientationPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1350
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1351
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1352
    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeLayout:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1353
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1354
    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLandscapeLayout:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1355
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLandscapeLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1357
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    .line 1360
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownPortraitLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    .line 1361
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1362
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    iget v3, v3, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    if-ne p1, v3, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v2, v0}, Lcom/android/camera/SnapboothCustomize;->setBackground(Z)V

    .line 1396
    invoke-direct {p0, p1, v1}, Lcom/android/camera/HTCSnapbooth;->updateVirtualHwKeysOrientation(IZ)V

    .line 1397
    return-void

    .line 1366
    :cond_6
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1367
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1368
    :cond_7
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitLayout:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 1369
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    :cond_8
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownPortraitLayout:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 1371
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownPortraitLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    :cond_9
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 1373
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    :cond_a
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    .line 1376
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLandscapeLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    .line 1378
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1379
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMaxBrightness()V
    .locals 5

    .prologue
    .line 1528
    const-string v2, "HTCSnapbooth"

    const-string v3, "setMaxBrightness()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1530
    .local v1, mDateFormat:Ljava/text/SimpleDateFormat;
    const-string v2, "########## HtcSettingsReceiver ##########"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(ms) onReceive-start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1532
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings.request.BRIGHTNESS_MAX"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 1534
    return-void
.end method

.method private setOldBrightness()V
    .locals 5

    .prologue
    .line 1541
    const-string v2, "HTCSnapbooth"

    const-string v3, "setOldBrightness()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1543
    .local v1, mDateFormat:Ljava/text/SimpleDateFormat;
    const-string v2, "########## HtcSettingsReceiver ##########"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(ms) onReceive-start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1545
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings.request.BRIGHTNESS_NORMAL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1546
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 1547
    return-void
.end method

.method public static declared-synchronized setWaitKeyguardBeforePreview(Z)V
    .locals 2
    .parameter "isWait"

    .prologue
    .line 196
    const-class v0, Lcom/android/camera/HTCSnapbooth;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/camera/HTCSnapbooth;->mIsWaitKeyguardBeforePreview:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit v0

    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setupUIElements()V
    .locals 4

    .prologue
    .line 1064
    const-string v2, "HTCSnapbooth"

    const-string v3, "setupUIElements() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    new-instance v0, Lcom/android/camera/HTCSnapbooth$7;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCSnapbooth$7;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    .line 1083
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeBtn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1084
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitBtn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v2}, Lcom/android/camera/SnapboothCustomize;->getScreenSaveTouchReceiver()Landroid/view/View;

    move-result-object v1

    .line 1088
    .local v1, touchReceiver:Landroid/view/View;
    new-instance v2, Lcom/android/camera/HTCSnapbooth$8;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCSnapbooth$8;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1114
    const-string v2, "HTCSnapbooth"

    const-string v3, "setupUIElements() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    return-void
.end method

.method private showCaptureUI()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1221
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v0}, Lcom/android/camera/SnapboothCustomize;->disableCountBubbles()V

    .line 1224
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    .line 1232
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->switchShutterBtn(Z)V

    .line 1235
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1236
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->disableCountdowns(Lcom/android/camera/rotate/UIRotation;)V

    .line 1239
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->slideInShutterBar()V

    .line 1242
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->slideInEffectBar()V

    .line 1245
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->enableGalleryButton(Z)V

    .line 1246
    return-void
.end method

.method private showReviewScreen(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "reviewImage"
    .parameter "thumbnail"

    .prologue
    const v1, 0x3f8ccccd

    const/high16 v6, 0x3f00

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 1918
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getFreezeOrientation()I

    move-result v4

    invoke-static {v3, v4, v11}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;IZ)Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    iget v9, v3, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    .line 1919
    .local v9, freezeUIOrientation:I
    invoke-direct {p0, v9}, Lcom/android/camera/HTCSnapbooth;->isOrientationPortrait(I)Z

    move-result v3

    if-nez v3, :cond_3

    move v10, v5

    .line 1922
    .local v10, isLandscape:Z
    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    .line 1923
    iput-boolean v11, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewAnimationCompleted:Z

    .line 1926
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v3, v10}, Lcom/android/camera/SnapboothCustomize;->setReviewImageBounds(Z)V

    .line 1927
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v3, v10}, Lcom/android/camera/SnapboothCustomize;->setReviewButtonBounds(Z)V

    .line 1930
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v3, v10, v11}, Lcom/android/camera/SnapboothCustomize;->showViewfinderCover(ZZ)V

    .line 1933
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;

    .line 1934
    iput-object p2, p0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    .line 1935
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1937
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v3, v10, v5}, Lcom/android/camera/SnapboothCustomize;->setReviewImageShadow(ZZ)V

    .line 1943
    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1944
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1945
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1946
    .local v0, animation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0x320

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1947
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f4ccccd

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1948
    new-instance v1, Lcom/android/camera/HTCSnapbooth$16;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCSnapbooth$16;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1962
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1965
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtons:[Landroid/view/View;

    aget-object v1, v1, v11

    new-instance v3, Lcom/android/camera/HTCSnapbooth$17;

    invoke-direct {v3, p0, v9}, Lcom/android/camera/HTCSnapbooth$17;-><init>(Lcom/android/camera/HTCSnapbooth;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1981
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtons:[Landroid/view/View;

    aget-object v1, v1, v5

    new-instance v3, Lcom/android/camera/HTCSnapbooth$18;

    invoke-direct {v3, p0, v9}, Lcom/android/camera/HTCSnapbooth$18;-><init>(Lcom/android/camera/HTCSnapbooth;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1999
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Landroid/view/View;

    instance-of v1, v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    .line 2000
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    iget v3, v3, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 2001
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2004
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    if-eqz v1, :cond_1

    .line 2006
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLandscapeLayout:Landroid/view/View;

    const/4 v3, 0x0

    const/16 v4, 0x190

    invoke-static {v1, v2, v3, v11, v4}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    .line 2007
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothCustomize;->disableCountBubbles()V

    .line 2008
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLandscapeLayout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2012
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2013
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    const/4 v3, 0x2

    new-array v8, v3, [Landroid/graphics/Bitmap;

    aput-object p1, v8, v11

    aput-object p2, v8, v5

    const-wide/16 v6, 0x7d0

    move v3, v11

    move v4, v11

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 2014
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->restartScreenSaveTimer()V

    .line 2015
    return-void

    .end local v0           #animation:Landroid/view/animation/ScaleAnimation;
    .end local v10           #isLandscape:Z
    :cond_3
    move v10, v11

    .line 1919
    goto/16 :goto_0

    .line 1941
    .restart local v10       #isLandscape:Z
    :cond_4
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v3, v10, v11}, Lcom/android/camera/SnapboothCustomize;->setReviewImageShadow(ZZ)V

    goto/16 :goto_1
.end method

.method private showShareImageChooser(I)V
    .locals 4
    .parameter "freezeUIOrientation"

    .prologue
    .line 1666
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 1710
    :goto_0
    return-void

    .line 1670
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1674
    .local v0, mediaInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/MediaInfo;>;"
    new-instance v1, Lcom/android/camera/MediaInfo;

    invoke-static {p0}, Lcom/android/camera/SnapboothFileManager;->getLastContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v3, v3, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    const-string v1, "snapbooth_last_share"

    invoke-static {p0, v0, v1}, Lcom/android/camera/share/MediaShareDialogBuilder;->create(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    .line 1676
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 1678
    const-string v1, "HTCSnapbooth"

    const-string v2, "showShareImageChooser() - mCurrentAlertDialog == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1682
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mAlertDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1683
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/camera/HTCSnapbooth$11;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCSnapbooth$11;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1694
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/camera/HTCSnapbooth$12;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCSnapbooth$12;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1708
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsShareDialogCanceled:Z

    .line 1709
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showStorageToast(IZ)V
    .locals 2
    .parameter "storageState"
    .parameter "cancelCapture"

    .prologue
    .line 2288
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2300
    :goto_0
    return-void

    .line 2290
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2293
    :pswitch_0
    if-eqz p2, :cond_1

    .line 2294
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->cancelCapture()V

    .line 2295
    :cond_1
    const v0, 0x7f0a0204

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCSnapbooth;->showToast(ILjava/lang/String;)V

    goto :goto_0

    .line 2290
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private showToast(ILjava/lang/String;)V
    .locals 3
    .parameter "resId"
    .parameter "args"

    .prologue
    .line 2307
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCSnapbooth;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2308
    .local v0, text:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2309
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2310
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/HTCSnapbooth;->showToast(Ljava/lang/String;)V

    .line 2311
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 2314
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsScreenSaveActivated:Z

    if-eqz v0, :cond_0

    .line 2327
    :cond_0
    return-void
.end method

.method private slideInEffectBar()V
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCSnapbooth;->slideInEffectBar(Lcom/android/camera/rotate/UIRotation;)V

    .line 1608
    return-void
.end method

.method private slideInEffectBar(Lcom/android/camera/rotate/UIRotation;)V
    .locals 8
    .parameter "rotation"

    .prologue
    .line 1611
    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v7

    .line 1612
    .local v7, isLandscape:Z
    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    .line 1614
    .local v0, bar:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_3

    .line 1616
    if-eqz v7, :cond_2

    const/4 v1, 0x3

    :goto_1
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1617
    .local v6, animation:Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/camera/HTCSnapbooth$10;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCSnapbooth$10;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1637
    .end local v6           #animation:Landroid/view/animation/Animation;
    :cond_0
    :goto_2
    return-void

    .line 1612
    .end local v0           #bar:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    goto :goto_0

    .line 1616
    .restart local v0       #bar:Landroid/view/View;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 1634
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewStarted:Z

    if-eqz v1, :cond_0

    .line 1635
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/SnapboothCustomize;->showPreviewCover(Z)V

    goto :goto_2
.end method

.method private slideInShutterBar()V
    .locals 7

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1557
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1558
    .local v6, animation:Landroid/view/animation/Animation;
    new-instance v0, Lcom/android/camera/HTCSnapbooth$9;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCSnapbooth$9;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1572
    .end local v6           #animation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private slideOutEffectBar()V
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCSnapbooth;->slideOutEffectBar(Lcom/android/camera/rotate/UIRotation;)V

    .line 1645
    return-void
.end method

.method private slideOutEffectBar(Lcom/android/camera/rotate/UIRotation;)V
    .locals 6
    .parameter "rotation"

    .prologue
    const-wide/16 v4, 0x190

    const-wide/16 v2, 0x0

    .line 1648
    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1650
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    .line 1658
    :cond_0
    :goto_0
    return-void

    .line 1655
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    const/4 v1, 0x3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private slideOutShutterBar()V
    .locals 6

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1582
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    .line 1600
    :cond_0
    return-void
.end method

.method private unfreezeUIRotation()V
    .locals 3

    .prologue
    .line 2198
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;IZ)Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/HTCSnapbooth;->unfreezeUIRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 2199
    return-void
.end method

.method private unfreezeUIRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 3
    .parameter "rotation"

    .prologue
    const/4 v2, 0x0

    .line 2203
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z

    .line 2204
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->onRotateChanged(Lcom/android/camera/rotate/UIRotation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2206
    const-string v0, "HTCSnapbooth"

    const-string v1, "unfreezeUIRotation - UI rotated"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->closeCaptureUI()V

    .line 2208
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->slideInShutterBar()V

    .line 2209
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    .line 2210
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v0, v2}, Lcom/android/camera/SnapboothCustomize;->switchShutterBtn(Z)V

    .line 2211
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->enableGalleryButton(Z)V

    .line 2218
    :goto_0
    iget v0, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    iput v0, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    .line 2221
    iput v2, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I

    .line 2224
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsCapturing:Z

    .line 2225
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z

    .line 2228
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2229
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->restartScreenSaveTimer()V

    .line 2230
    :cond_0
    return-void

    .line 2215
    :cond_1
    const-string v0, "HTCSnapbooth"

    const-string v1, "unfreezeUIRotation - UI rotated"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->showCaptureUI()V

    goto :goto_0
.end method

.method private updateVirtualHwKeysOrientation(IZ)V
    .locals 4
    .parameter "orientation"
    .parameter "enabled"

    .prologue
    .line 944
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.content.intent.action.ORIENTATION_LIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package_name"

    const-string v3, "com.android.camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "manual"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 948
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 949
    return-void
.end method


# virtual methods
.method public PlaySound(I)V
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, -0x1

    .line 1412
    const-string v1, "HTCSnapbooth"

    const-string v2, "PlaySound() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 1425
    .local v0, player:Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 1426
    .local v7, afd:Landroid/content/res/AssetFileDescriptor;
    const-string v1, "HTCSnapbooth"

    const-string v2, "PlaySound() - set data source"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1429
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1431
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    .line 1432
    const-string v1, "HTCSnapbooth"

    const-string v2, "PlaySound() - StreamType : STREAM_ALARM"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    :goto_0
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1439
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1440
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1441
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1450
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCSnapbooth;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    .line 1452
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v10, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1456
    :cond_1
    const-string v1, "HTCSnapbooth"

    const-string v2, "Set stream volume"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    .line 1460
    .local v6, MaxVolume:I
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    if-ne v1, v11, :cond_5

    .line 1462
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Alarm:I

    if-ne v1, v9, :cond_2

    .line 1464
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Alarm:I

    .line 1465
    const-string v1, "HTCSnapbooth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOriginalVolume_Alarm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Alarm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    invoke-direct {p0, v6}, Lcom/android/camera/HTCSnapbooth;->getAdjustedVolume(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1481
    .end local v6           #MaxVolume:I
    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1483
    const-string v1, "HTCSnapbooth"

    const-string v2, "PlaySound() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    .end local v7           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_2
    return-void

    .line 1434
    .restart local v7       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_4
    const/4 v1, 0x2

    :try_start_1
    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    .line 1435
    const-string v1, "HTCSnapbooth"

    const-string v2, "PlaySound() - StreamType : STREAM_RING"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1443
    .end local v7           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v8

    .line 1444
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "HTCSnapbooth"

    const-string v2, "PlaySound failed"

    invoke-static {v1, v2, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1445
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_2

    .line 1470
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local v6       #MaxVolume:I
    .restart local v7       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_5
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Ring:I

    if-ne v1, v9, :cond_2

    .line 1472
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Ring:I

    .line 1473
    const-string v1, "HTCSnapbooth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOriginalVolume_Ring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Ring:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getFreezeOrientation()I
    .locals 1

    .prologue
    .line 1293
    iget v0, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    return v0
.end method

.method public getIntentManager()Lcom/android/camera/SnapboothIntentManager;
    .locals 1

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRequestName()Lcom/android/camera/IntentRequestName;
    .locals 2

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    if-nez v0, :cond_0

    .line 2422
    const-string v0, "HTCSnapbooth"

    const-string v1, "getRequestName() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    const/4 v0, 0x0

    .line 2426
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/SnapboothIntentManager;->getRequestName()Lcom/android/camera/IntentRequestName;

    move-result-object v0

    goto :goto_0
.end method

.method public final getRotation()Lcom/android/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    return-object v0
.end method

.method public final getSettings()Lcom/android/camera/Settings;
    .locals 1

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSettings:Lcom/android/camera/Settings;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public final isCapturing()Z
    .locals 1

    .prologue
    .line 2470
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsCapturing:Z

    return v0
.end method

.method public final isPreviewFrameArrived()Z
    .locals 1

    .prologue
    .line 2478
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z

    return v0
.end method

.method public isRequestName(Lcom/android/camera/IntentRequestName;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 2448
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    if-nez v1, :cond_1

    .line 2450
    const-string v1, "HTCSnapbooth"

    const-string v2, "isRequestName() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothIntentManager;->getRequestName()Lcom/android/camera/IntentRequestName;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRequestSquare()Z
    .locals 1

    .prologue
    .line 2462
    sget-object v0, Lcom/android/camera/IntentRequestName;->Contacts:Lcom/android/camera/IntentRequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->isRequestName(Lcom/android/camera/IntentRequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/IntentRequestName;->Square:Lcom/android/camera/IntentRequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->isRequestName(Lcom/android/camera/IntentRequestName;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceMode()Z
    .locals 2

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    if-nez v0, :cond_0

    .line 2436
    const-string v0, "HTCSnapbooth"

    const-string v1, "isServiceMode() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    const/4 v0, 0x0

    .line 2440
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/SnapboothIntentManager;->isServiceMode()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 515
    const-string v1, "HTCSnapbooth"

    const-string v2, "onCreate() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 521
    iput-boolean v4, p0, Lcom/android/camera/HTCSnapbooth;->mOnCreateIsCalled:Z

    .line 524
    iput-boolean v4, p0, Lcom/android/camera/HTCSnapbooth;->mNeedInitThumbnail:Z

    .line 527
    new-instance v1, Lcom/android/camera/HTCSnapbooth$MainHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/HTCSnapbooth$MainHandler;-><init>(Lcom/android/camera/HTCSnapbooth;Lcom/android/camera/HTCSnapbooth$1;)V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    .line 530
    new-instance v1, Lcom/android/camera/Settings;

    invoke-direct {v1, p0}, Lcom/android/camera/Settings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSettings:Lcom/android/camera/Settings;

    .line 533
    new-instance v1, Lcom/android/camera/SnapboothThread;

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/SnapboothThread;-><init>(Lcom/android/camera/HTCSnapbooth;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    .line 534
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothThread;->start()V

    .line 535
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    .line 538
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 542
    :cond_0
    new-instance v1, Lcom/android/camera/SnapboothCustomize;

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/SnapboothCustomize;-><init>(Lcom/android/camera/HTCSnapbooth;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    .line 545
    invoke-static {}, Lcom/android/camera/SnapboothCustomize;->getSnapbooth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCSnapbooth;->setContentView(I)V

    .line 546
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothCustomize;->initPreviewSurface()Landroid/view/SurfaceView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    .line 547
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 548
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 551
    new-instance v1, Lcom/android/camera/SnapboothIntentManager;

    invoke-direct {v1}, Lcom/android/camera/SnapboothIntentManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    .line 552
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/SnapboothIntentManager;->initManager(Landroid/content/Intent;)V

    .line 555
    new-instance v1, Lcom/android/camera/HTCSnapbooth$5;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCSnapbooth$5;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAlertDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 582
    const/16 v1, 0x10e

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    .line 585
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 587
    new-instance v1, Lcom/android/camera/HTCSnapbooth$6;

    invoke-direct {v1, p0, p0}, Lcom/android/camera/HTCSnapbooth$6;-><init>(Lcom/android/camera/HTCSnapbooth;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 609
    :cond_1
    const-string v1, "HTCSnapbooth"

    const-string v2, "onCreate() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 887
    const-string v0, "HTCSnapbooth"

    const-string v1, "onDestroy() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 891
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v0}, Lcom/android/camera/SnapboothThread;->releaseSnapboothThread()V

    .line 892
    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    .line 893
    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    .line 896
    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    .line 899
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 901
    const-string v0, "HTCSnapbooth"

    const-string v1, "onDestroy() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2336
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->restartScreenSaveTimer()V

    .line 2339
    sparse-switch p1, :sswitch_data_0

    .line 2352
    iput-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsBackKeyDown:Z

    .line 2357
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 2345
    :sswitch_0
    iput-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsBackKeyDown:Z

    goto :goto_1

    .line 2348
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 2349
    iput-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsBackKeyDown:Z

    goto :goto_0

    .line 2339
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 2367
    packed-switch p1, :pswitch_data_0

    .line 2404
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 2370
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsBackKeyDown:Z

    if-eqz v1, :cond_0

    .line 2372
    iput-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mIsBackKeyDown:Z

    .line 2373
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2375
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    if-eqz v1, :cond_3

    .line 2377
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewAnimationCompleted:Z

    if-eqz v1, :cond_1

    .line 2379
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2380
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2382
    invoke-direct {p0, v0, v0}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    goto :goto_1

    .line 2386
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2387
    invoke-direct {p0, v3, v3}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    goto :goto_1

    .line 2395
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 2396
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 2367
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 769
    const-string v1, "HTCSnapbooth"

    const-string v2, "onPause() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mStorageCardEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCSnapbooth;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 773
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mKeyguardEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCSnapbooth;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 776
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 779
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    .line 783
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    if-eqz v1, :cond_1

    .line 785
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 786
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->reCaptureForServiceMode()V

    .line 792
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v1, v4}, Lcom/android/camera/SnapboothCustomize;->showActivityCover(Z)V

    .line 795
    iput-boolean v4, p0, Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z

    .line 797
    iput-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mIsKeyguardVisible:Z

    .line 798
    sput-boolean v3, Lcom/android/camera/HTCSnapbooth;->mIsWaitKeyguardBeforePreview:Z

    .line 801
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->exitScreenSave()V

    .line 804
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 805
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 806
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x2b

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 809
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->setOldBrightness()V

    .line 812
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->cancelCapture()V

    .line 813
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->unfreezeUIRotation()V

    .line 816
    iput-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z

    .line 817
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 818
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    invoke-static {v1, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 821
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    .line 824
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 827
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 828
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 831
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.resumeSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.eas.extra.tag"

    const-string v2, "com.android.camera.HTCCamera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 842
    invoke-direct {p0, v3, v3}, Lcom/android/camera/HTCSnapbooth;->updateVirtualHwKeysOrientation(IZ)V

    .line 845
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_3

    .line 846
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 849
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 851
    const-string v1, "HTCSnapbooth"

    const-string v2, "onPause() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    return-void

    .line 788
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 644
    const-string v3, "HTCSnapbooth"

    const-string v4, "onResume() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 649
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    iget v3, v3, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    invoke-direct {p0, v3, v6}, Lcom/android/camera/HTCSnapbooth;->updateVirtualHwKeysOrientation(IZ)V

    .line 652
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.eas.intent.pauseSync"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.htc.eas.extra.tag"

    const-string v4, "com.android.camera.HTCCamera"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 657
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->broadcastStopVoiceRecording()V

    .line 660
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isHalfPCB()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 661
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->broadcastStopFM()V

    .line 664
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mOnCreateIsCalled:Z

    if-nez v3, :cond_1

    .line 666
    iput-boolean v6, p0, Lcom/android/camera/HTCSnapbooth;->mNeedInitThumbnail:Z

    .line 667
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 671
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->initializeUILayout()V

    .line 676
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 678
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    iput-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    .line 679
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {p0, v3}, Lcom/android/camera/HTCSnapbooth;->onRotateChanged(Lcom/android/camera/rotate/UIRotation;)Z

    .line 688
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->setMaxBrightness()V

    .line 691
    iput-boolean v5, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    .line 692
    iput-boolean v5, p0, Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z

    .line 693
    iput-boolean v5, p0, Lcom/android/camera/HTCSnapbooth;->mOnCreateIsCalled:Z

    .line 694
    iput-boolean v5, p0, Lcom/android/camera/HTCSnapbooth;->mIsBackKeyDown:Z

    .line 697
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 700
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 702
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 703
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 704
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v3}, Landroid/view/OrientationEventListener;->enable()V

    .line 708
    :cond_2
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v3, v5}, Lcom/android/camera/SnapboothCustomize;->showActivityCover(Z)V

    .line 711
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCSnapbooth;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 713
    .local v2, keyguardManager:Landroid/app/KeyguardManager;
    if-eqz v2, :cond_7

    check-cast v2, Landroid/app/HtcIfKeyguardManager;

    .end local v2           #keyguardManager:Landroid/app/KeyguardManager;
    invoke-interface {v2}, Landroid/app/HtcIfKeyguardManager;->keyguardIsShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 714
    const-string v3, "HTCSnapbooth"

    const-string v4, "keyguard is shown !!!!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iput-boolean v6, p0, Lcom/android/camera/HTCSnapbooth;->mIsKeyguardVisible:Z

    .line 727
    :goto_1
    iget-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mIsKeyguardVisible:Z

    if-nez v3, :cond_8

    .line 728
    const-string v3, "HTCSnapbooth"

    const-string v4, "mIsKeyguardVisible is false, activate"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 732
    iget-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceCreated:Z

    if-eqz v3, :cond_3

    .line 733
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, v5, v6, v5, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 742
    :cond_3
    :goto_2
    iget-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mIsKeyguardVisible:Z

    if-nez v3, :cond_4

    .line 743
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->restartScreenSaveTimer()V

    .line 746
    :cond_4
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 747
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 753
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mStorageCardEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/camera/HTCSnapbooth;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 756
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 757
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mKeyguardEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/camera/HTCSnapbooth;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 759
    invoke-static {}, Lcom/android/camera/DisplayDevice;->DisablePen()Z

    move-result v3

    if-ne v3, v6, :cond_5

    .line 760
    invoke-static {p0}, Lcom/android/camera/Util;->disableSketcher(Landroid/app/Activity;)V

    .line 761
    :cond_5
    return-void

    .line 683
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_6
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    iput-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    .line 684
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {p0, v3}, Lcom/android/camera/HTCSnapbooth;->onRotateChanged(Lcom/android/camera/rotate/UIRotation;)Z

    goto/16 :goto_0

    .line 717
    :cond_7
    const-string v3, "HTCSnapbooth"

    const-string v4, "keyguard is not shown !!!!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iput-boolean v5, p0, Lcom/android/camera/HTCSnapbooth;->mIsKeyguardVisible:Z

    goto :goto_1

    .line 736
    :cond_8
    const-string v3, "HTCSnapbooth"

    const-string v4, "mIsKeyguardVisible is true, setWaitKeyguardBeforePreview(true)"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {v6}, Lcom/android/camera/HTCSnapbooth;->setWaitKeyguardBeforePreview(Z)V

    goto :goto_2
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 619
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 620
    const-string v1, "HTCSnapbooth"

    const-string v2, "onStart() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 624
    .local v0, initOrientation:I
    const-string v1, "HTCSnapbooth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart() - initOrientation = getWindowManager().getDefaultDisplay().getRotation() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-static {v0}, Lcom/android/camera/rotate/UIRotation;->fromSurfaceRotation(I)Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    .line 630
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCSnapbooth;->setRequestedOrientation(I)V

    .line 633
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;

    iget v1, v1, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    .line 635
    const-string v1, "HTCSnapbooth"

    const-string v2, "onStart() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 860
    const-string v0, "HTCSnapbooth"

    const-string v1, "onStop() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 865
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 870
    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    .line 874
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->setRequestedOrientation(I)V

    .line 877
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 878
    const-string v0, "HTCSnapbooth"

    const-string v1, "onStop() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public final restartScreenSaveTimer()V
    .locals 4

    .prologue
    const/16 v3, 0x2b

    .line 2486
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2487
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsScreenSaveActivated:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsCapturing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    if-eqz v0, :cond_1

    .line 2488
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-static {v0, v3, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 2489
    :cond_1
    return-void
.end method

.method public startAlbum()V
    .locals 5

    .prologue
    .line 2259
    sget-object v2, Lcom/android/camera/IntentRequestName;->Album:Lcom/android/camera/IntentRequestName;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCSnapbooth;->isRequestName(Lcom/android/camera/IntentRequestName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2261
    new-instance v2, Landroid/content/Intent;

    const-string v3, "FROM_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "preview_mode"

    const-string v4, "filmstrip"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2263
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/HTCSnapbooth;->setResult(ILandroid/content/Intent;)V

    .line 2264
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->finish()V

    .line 2281
    :goto_0
    return-void

    .line 2269
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "capture_mode"

    const-string v4, "camera"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "preview_mode"

    const-string v4, "filmstrip"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2275
    .restart local v1       #intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/HTCSnapbooth;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2277
    :catch_0
    move-exception v0

    .line 2279
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "HTCSnapbooth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start - Go to album after pressing filmstrip button : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 908
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 915
    const-string v0, "HTCSnapbooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$$ surfaceCreated $$$$$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 918
    iput-boolean v4, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceCreated:Z

    .line 920
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsKeyguardVisible:Z

    if-nez v0, :cond_0

    .line 922
    const-string v0, "HTCSnapbooth"

    const-string v1, "$$$$$ surfaceCreated $$$$$  start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v3, v4, v3, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 927
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 934
    const-string v0, "HTCSnapbooth"

    const-string v1, "$$$$$ surfaceDestroyed $$$$$"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceCreated:Z

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 937
    return-void
.end method
