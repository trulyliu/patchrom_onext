.class public final Lcom/android/camera/component/PanoramaController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/IPhotoCaptureHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/PanoramaController$12;,
        Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMER_INTERVAL:I = 0x12c

.field public static final DIRECTION_DOWN:I = 0x4

.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_UNKNOWN:I = 0x0

.field public static final DIRECTION_UP:I = 0x3

.field public static final MAX_FRAME_COUNT:I = 0x5

.field public static final MSG_CANCEL_CAPTURE:I = 0x3

.field private static final MSG_CREATE_PREVIEW:I = 0x4

.field public static final MSG_ENTER_PANORAMA_MODE:I = 0x1

.field public static final MSG_EXIT_PANORAMA_MODE:I = 0x2

.field private static final MSG_PREVIEW_CREATED:I = 0x6

.field public static final NAME:Ljava/lang/String; = "Panorama Controller"

.field static final PANORAMA_TYPE_BASIC:I = 0x0

.field static final PANORAMA_TYPE_SWEEP:I = 0x1

.field private static final TIMEOUT_STITCH:J = 0x3a98L

.field private static final TIMEOUT_TRACKING:J = 0x1388L

.field private static final m_PanoramaDCFInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field private m_Autorama:Lcom/scalado/camera/autorama/Autorama;

.field private final m_AutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

.field private m_CameraUsed:Landroid/hardware/Camera;

.field private m_CaptureCount:I

.field private m_CaptureHandle:Lcom/android/camera/CaptureHandle;

.field private m_CaptureRotation:Lcom/android/camera/rotate/UIRotation;

.field private m_CaptureTimerStartTime:J

.field private final m_ClearScaladoResTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private m_CurrentCaptureIndex:I

.field private m_Direction:I

.field private m_EffectController:Lcom/android/camera/effect/IEffectController;

.field private m_ExifTags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsCanceling:Z

.field private m_IsCapturing:Z

.field private m_IsCapturingFrame:Z

.field private m_IsEntered:Z

.field private m_IsLastFrame:Z

.field private m_IsReOpenCameraNeeded:Z

.field private m_IsStitching:Z

.field private m_IsSweepPanorama:Z

.field private final m_JpegTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private m_JpegTimerHandle:Lcom/android/camera/Handle;

.field private m_LatestContentUri:Landroid/net/Uri;

.field private m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

.field private m_PreviewThumbnailImage:Landroid/graphics/Bitmap;

.field private m_PreviousDeltaX:F

.field private m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

.field private m_SceneController:Lcom/android/camera/effect/ISceneController;

.field private final m_StitchTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private m_StitchTimerHandle:Lcom/android/camera/Handle;

.field private m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

.field private final m_TrackingTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private m_TrackingTimerHandle:Lcom/android/camera/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 136
    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "PANOR"

    const-string v2, "IMAG"

    const-string v3, "panorama_dir_counter"

    const-string v4, "panorama_file_counter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/component/PanoramaController;->m_PanoramaDCFInfo:Lcom/android/camera/io/DCFInfo;

    .line 678
    sget-object v0, Lcom/android/camera/component/PanoramaController;->m_PanoramaDCFInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {v0}, Lcom/android/camera/io/DCFUtility;->registerDCFInfo(Lcom/android/camera/io/DCFInfo;)V

    .line 679
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 4
    .parameter "cameraThread"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 686
    const-string v2, "Panorama Controller"

    invoke-direct {p0, v2, v0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 101
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I

    .line 104
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J

    .line 105
    new-instance v2, Lcom/android/camera/component/PanoramaController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$1;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_ClearScaladoResTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    .line 116
    iput v1, p0, Lcom/android/camera/component/PanoramaController;->m_Direction:I

    .line 119
    new-instance v2, Lcom/android/camera/component/PanoramaController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$2;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    .line 146
    new-instance v2, Lcom/android/camera/component/PanoramaController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$3;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_StitchTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    .line 157
    new-instance v2, Lcom/android/camera/component/PanoramaController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$4;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    .line 351
    new-instance v2, Lcom/android/camera/component/PanoramaController$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$5;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_AutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    .line 687
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->getPanoramaType()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z

    .line 688
    return-void

    :cond_0
    move v0, v1

    .line 687
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/PanoramaController;Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/PanoramaController;->createReviewImage(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/autorama/Autorama;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/PanoramaController;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/component/PanoramaController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/component/PanoramaController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/component/PanoramaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_Direction:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/component/PanoramaController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/camera/component/PanoramaController;->m_Direction:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/component/PanoramaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/component/PanoramaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaController;->m_IsReOpenCameraNeeded:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/component/PanoramaController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/camera/component/PanoramaController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/camera/component/PanoramaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I

    return v0
.end method

.method static synthetic access$2204(Lcom/android/camera/component/PanoramaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/PanoramaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->onCancelCapture()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/component/PanoramaController;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/component/PanoramaController;Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/camera/component/PanoramaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/component/PanoramaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/camera/component/PanoramaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->stopPreview()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/camera/component/PanoramaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->deleteCapturedImage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/CaptureHandle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/FeatureCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/camera/component/PanoramaController;Lcom/scalado/camera/FeatureCamera;)Lcom/scalado/camera/FeatureCamera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_StitchTimerHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_StitchTimerHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/CaptureHandle;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/PanoramaController;->onStitchCompleted(Lcom/android/camera/CaptureHandle;[B)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/component/PanoramaController;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/component/PanoramaController;Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v0

    return-object v0
.end method

.method private clearScaladoResources()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 695
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "clearScaladoResources()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "Clear Scalado resources"

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/android/camera/component/PanoramaController;->m_ClearScaladoResTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v7

    .line 707
    .local v7, timerHandle:Lcom/android/camera/Handle;
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    .line 708
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera;->setFeature(Lcom/scalado/camera/Feature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    if-eqz v7, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v0, v7}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 715
    :cond_0
    return-void

    .line 702
    .end local v7           #timerHandle:Lcom/android/camera/Handle;
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #timerHandle:Lcom/android/camera/Handle;
    goto :goto_0

    .line 712
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 713
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v1, v7}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_2
    throw v0
.end method

.method private createJpegDecoder(Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 3
    .parameter "buffer"

    .prologue
    .line 724
    :try_start_0
    new-instance v1, Lcom/scalado/stream/BufferStream;

    invoke-virtual {p1}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 729
    :goto_0
    return-object v1

    .line 726
    :catch_0
    move-exception v0

    .line 728
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot create JPEG decoder"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 729
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 4
    .parameter "stream"

    .prologue
    .line 736
    :try_start_0
    invoke-static {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v1

    .line 737
    .local v1, iter:Lcom/scalado/base/Iterator;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/scalado/base/Iterator;->step(I)F

    .line 738
    invoke-virtual {v1}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/caps/codec/decoder/JpegDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .end local v1           #iter:Lcom/scalado/base/Iterator;
    :goto_0
    return-object v2

    .line 740
    :catch_0
    move-exception v0

    .line 742
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot create JPEG decoder"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 743
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createPreview()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff8

    .line 753
    iget-object v11, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    .line 754
    .local v11, ui:Lcom/android/camera/component/PanoramaUI;
    if-eqz v11, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/component/PanoramaController;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PreviewThumbnailImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 763
    :try_start_0
    invoke-virtual {v11}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 764
    .local v7, res:Landroid/content/res/Resources;
    const v0, 0x7f0b0083

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 765
    .local v10, thumbWidth:I
    const v0, 0x7f0b0084

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 768
    .local v9, thumbHeight:I
    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I

    mul-int/2addr v0, v10

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-double v1, v9

    mul-double/2addr v1, v4

    double-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PreviewThumbnailImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    .end local v7           #res:Landroid/content/res/Resources;
    .end local v9           #thumbHeight:I
    .end local v10           #thumbWidth:I
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    if-eqz v0, :cond_3

    .line 782
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->getLowResolutionPanorama(Z)Lcom/scalado/caps/Session;

    move-result-object v8

    .line 783
    .local v8, session:Lcom/scalado/caps/Session;
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PreviewThumbnailImage:Landroid/graphics/Bitmap;

    const/16 v1, 0x5a

    invoke-static {v8, v0, v1}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 797
    .end local v8           #session:Lcom/scalado/caps/Session;
    :goto_1
    const/4 v2, 0x6

    iget-object v5, p0, Lcom/android/camera/component/PanoramaController;->m_PreviewThumbnailImage:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 770
    :catch_0
    move-exception v6

    .line 772
    .local v6, ex:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred while creating preview image buffer"

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 785
    .end local v6           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 787
    .restart local v6       #ex:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred while creating preview image"

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 792
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No Autorama object to create preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createReviewImage(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "filePath"
    .parameter "rotation"

    .prologue
    .line 805
    const/4 v3, 0x0

    .line 810
    .local v3, inputStream:Lcom/scalado/stream/FileStream;
    :try_start_0
    new-instance v4, Lcom/scalado/stream/FileStream;

    sget-object v8, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v4, p1, v8}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    .end local v3           #inputStream:Lcom/scalado/stream/FileStream;
    .local v4, inputStream:Lcom/scalado/stream/FileStream;
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v1

    .line 812
    .local v1, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 816
    .local v7, session:Lcom/scalado/caps/Session;
    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 818
    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 819
    .local v6, reviewWidth:I
    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 826
    .local v5, reviewHeight:I
    :goto_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 829
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v0, v8, v9}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 839
    if-eqz v4, :cond_0

    .line 843
    :try_start_2
    invoke-virtual {v4}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    move-object v3, v4

    .line 846
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v4           #inputStream:Lcom/scalado/stream/FileStream;
    .end local v5           #reviewHeight:I
    .end local v6           #reviewWidth:I
    .end local v7           #session:Lcom/scalado/caps/Session;
    .restart local v3       #inputStream:Lcom/scalado/stream/FileStream;
    :cond_1
    :goto_2
    return-object v0

    .line 823
    .end local v3           #inputStream:Lcom/scalado/stream/FileStream;
    .restart local v1       #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .restart local v4       #inputStream:Lcom/scalado/stream/FileStream;
    .restart local v7       #session:Lcom/scalado/caps/Session;
    :cond_2
    :try_start_3
    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 824
    .restart local v6       #reviewWidth:I
    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .restart local v5       #reviewHeight:I
    goto :goto_0

    .line 832
    .end local v1           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v4           #inputStream:Lcom/scalado/stream/FileStream;
    .end local v5           #reviewHeight:I
    .end local v6           #reviewWidth:I
    .end local v7           #session:Lcom/scalado/caps/Session;
    .restart local v3       #inputStream:Lcom/scalado/stream/FileStream;
    :catch_0
    move-exception v2

    .line 834
    .local v2, ex:Ljava/lang/Throwable;
    :goto_3
    :try_start_4
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Cannot create review image"

    invoke-static {v8, v9, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 835
    const/4 v0, 0x0

    .line 839
    if-eqz v3, :cond_1

    .line 843
    :try_start_5
    invoke-virtual {v3}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 845
    :catch_1
    move-exception v8

    goto :goto_2

    .line 839
    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v3, :cond_3

    .line 843
    :try_start_6
    invoke-virtual {v3}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 846
    :cond_3
    :goto_5
    throw v8

    .line 845
    .end local v3           #inputStream:Lcom/scalado/stream/FileStream;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .restart local v4       #inputStream:Lcom/scalado/stream/FileStream;
    .restart local v5       #reviewHeight:I
    .restart local v6       #reviewWidth:I
    .restart local v7       #session:Lcom/scalado/caps/Session;
    :catch_2
    move-exception v8

    goto :goto_1

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v4           #inputStream:Lcom/scalado/stream/FileStream;
    .end local v5           #reviewHeight:I
    .end local v6           #reviewWidth:I
    .end local v7           #session:Lcom/scalado/caps/Session;
    .restart local v3       #inputStream:Lcom/scalado/stream/FileStream;
    :catch_3
    move-exception v9

    goto :goto_5

    .line 839
    .end local v3           #inputStream:Lcom/scalado/stream/FileStream;
    .restart local v4       #inputStream:Lcom/scalado/stream/FileStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #inputStream:Lcom/scalado/stream/FileStream;
    .restart local v3       #inputStream:Lcom/scalado/stream/FileStream;
    goto :goto_4

    .line 832
    .end local v3           #inputStream:Lcom/scalado/stream/FileStream;
    .restart local v4       #inputStream:Lcom/scalado/stream/FileStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #inputStream:Lcom/scalado/stream/FileStream;
    .restart local v3       #inputStream:Lcom/scalado/stream/FileStream;
    goto :goto_3
.end method

.method private deleteCapturedImage()V
    .locals 5

    .prologue
    .line 866
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Delete media by PanoramaController"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v3, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-nez v3, :cond_1

    .line 870
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "No UI to delete content"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 877
    iget-object v3, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v3}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 878
    .local v0, activity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    .line 879
    .local v1, contentUri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/camera/component/PanoramaController$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/camera/component/PanoramaController$6;-><init>(Lcom/android/camera/component/PanoramaController;Landroid/net/Uri;Lcom/android/camera/HTCCamera;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 905
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 908
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    sget-object v4, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    invoke-static {v3, v4}, Lcom/android/camera/io/DCFUtility;->restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V

    .line 909
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getPanoramaType()I
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public static isNonLandscapeSupported()Z
    .locals 1

    .prologue
    .line 1017
    const/4 v0, 0x1

    return v0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v0, 0x0

    .line 1025
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return v0

    .line 1028
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1031
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x95

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x96

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x97

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xab

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xac

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe3

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe4

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe5

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x32

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isZoomingSupported()Z
    .locals 1

    .prologue
    .line 1051
    const/4 v0, 0x0

    return v0
.end method

.method private onCancelCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1069
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    if-eqz v0, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z

    .line 1074
    invoke-direct {p0, v2, v1, v1}, Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V

    goto :goto_0
.end method

.method private onEnterPanoramaMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z

    .line 1086
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/effect/IEffectController;->setColorEffect(Ljava/lang/String;Z)V

    .line 1089
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;)V

    .line 1093
    :cond_1
    return-void
.end method

.method private onExitPanoramaMode()V
    .locals 4

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 1102
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController;->m_CameraUsed:Landroid/hardware/Camera;

    if-ne v2, v3, :cond_0

    .line 1104
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 1105
    .local v0, cameraController:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 1107
    const-string v2, "panorama-mode"

    const-string v3, "not-in-progress"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1109
    const-string v2, "capture-mode"

    const-string v3, "zsl"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1115
    .end local v0           #cameraController:Lcom/android/camera/CameraController;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_CameraUsed:Landroid/hardware/Camera;

    .line 1118
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z

    .line 1119
    return-void

    .line 1111
    .restart local v0       #cameraController:Lcom/android/camera/CameraController;
    :cond_1
    const-string v2, "capture-mode"

    const-string v3, "normal"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onStitchCompleted(Lcom/android/camera/CaptureHandle;[B)V
    .locals 11
    .parameter "captureHandle"
    .parameter "jpegData"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1126
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v1, p1, :cond_1

    .line 1131
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted() - Invalid capture handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    iput-boolean v9, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    .line 1137
    iput-boolean v9, p0, Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z

    .line 1138
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->clearScaladoResources()V

    .line 1141
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    .line 1142
    .local v8, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->enablePreviewCallback()V

    .line 1145
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v7

    .line 1146
    .local v7, cameraController:Lcom/android/camera/CameraController;
    if-eqz v7, :cond_2

    .line 1148
    const-string v1, "panorama-mode"

    const-string v2, "not-in-progress"

    invoke-virtual {v7, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v7}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1155
    :goto_1
    if-eqz p2, :cond_4

    .line 1157
    new-instance v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v4, p0, Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureRotation:Lcom/android/camera/rotate/UIRotation;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;-><init>(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/CaptureHandle;[BLjava/util/Hashtable;Lcom/android/camera/rotate/UIRotation;)V

    .line 1158
    .local v0, saveTask:Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/camera/component/PanoramaController;->m_PanoramaDCFInfo:Lcom/android/camera/io/DCFInfo;

    :goto_2
    iput-object v1, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    .line 1159
    invoke-virtual {v8, v0}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    .line 1173
    .end local v0           #saveTask:Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;
    :goto_3
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v8, v1}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    .line 1176
    iput-object v10, p0, Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;

    .line 1177
    iput-object v10, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 1180
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaController;->m_IsReOpenCameraNeeded:Z

    if-eqz v1, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted() - Close camera for recovering"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    iput-boolean v9, p0, Lcom/android/camera/component/PanoramaController;->m_IsReOpenCameraNeeded:Z

    .line 1184
    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto :goto_0

    .line 1152
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted() - No camera controller to set panorama mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1158
    .restart local v0       #saveTask:Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;
    :cond_3
    sget-object v1, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    goto :goto_2

    .line 1164
    .end local v0           #saveTask:Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted() - No JPEG data"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v1, v8, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/CaptureEventArgs;

    sget-object v3, Lcom/android/camera/CaptureFailedReason;->Unknown:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v2, p1, v3}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1168
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v1, :cond_5

    .line 1169
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    const/16 v3, 0xb

    move-object v1, p0

    move v4, v9

    move v5, v9

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_3

    .line 1171
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted() - No UI to notify STITCH_COMPLETED"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private final stopAutorama(ZZZ)V
    .locals 9
    .parameter "stitch"
    .parameter "stopPreview"
    .parameter "isErrorHandling"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1194
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    if-eqz v0, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_4

    .line 1200
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    monitor-enter v1

    .line 1202
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_2

    .line 1204
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 1205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;

    .line 1207
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_3

    .line 1209
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 1210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    .line 1212
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1216
    :cond_4
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    .line 1217
    iput-boolean v7, p0, Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z

    .line 1218
    if-eqz p1, :cond_a

    .line 1220
    iput-boolean v7, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    .line 1221
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v0}, Lcom/scalado/camera/autorama/Autorama;->getDirection()Lcom/scalado/caps/autorama/Direction;

    move-result-object v0

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v0, v1, :cond_7

    .line 1222
    .local v7, captureLastFrame:Z
    :goto_1
    if-nez p2, :cond_5

    if-nez v7, :cond_5

    .line 1223
    const/4 p2, 0x1

    .line 1224
    :cond_5
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    if-eqz v0, :cond_8

    .line 1225
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v0, v7}, Lcom/scalado/camera/autorama/Autorama;->stop(Z)V

    .line 1230
    :goto_2
    const-string v0, "PANORAMA"

    invoke-static {v0}, Lcom/android/camera/LOG;->printPerformanceStartLog(Ljava/lang/String;)V

    .line 1233
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_9

    .line 1234
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    const/16 v2, 0xa

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1255
    .end local v7           #captureLastFrame:Z
    :goto_3
    if-eqz p2, :cond_6

    .line 1256
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->stopPreview()V

    .line 1259
    :cond_6
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v8, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    monitor-enter v8

    .line 1263
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "Panorama Stitch"

    const-wide/16 v2, 0x3a98

    iget-object v4, p0, Lcom/android/camera/component/PanoramaController;->m_StitchTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_StitchTimerHandle:Lcom/android/camera/Handle;

    .line 1264
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1212
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    move v7, v3

    .line 1221
    goto :goto_1

    .line 1227
    .restart local v7       #captureLastFrame:Z
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopAutorama() - No Autorama"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1236
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No UI to notify STITCH_STARTED"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1241
    .end local v7           #captureLastFrame:Z
    :cond_a
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    if-eqz v0, :cond_b

    .line 1242
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v0}, Lcom/scalado/camera/autorama/Autorama;->abort()V

    .line 1245
    :goto_4
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->clearScaladoResources()V

    .line 1248
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_c

    .line 1249
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_3

    .line 1244
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopAutorama() - No Autorama"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1251
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No UI to notify ABORTED"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    .line 1275
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 1276
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->stopPreview()V

    .line 1281
    :goto_0
    return-void

    .line 1279
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot stop preview because there is no camera"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 1
    .parameter "handle"
    .parameter "cameraController"
    .parameter "camera"

    .prologue
    .line 1527
    const/4 v0, 0x0

    return v0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    .line 858
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 859
    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 927
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 934
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 937
    :goto_0
    return-void

    .line 930
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->createPreview()V

    goto :goto_0

    .line 927
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 945
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 965
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 948
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->onCancelCapture()V

    goto :goto_0

    .line 952
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->onEnterPanoramaMode()V

    goto :goto_0

    .line 956
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->onExitPanoramaMode()V

    goto :goto_0

    .line 960
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/component/PanoramaController;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    const/16 v2, 0x8

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 945
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 977
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 980
    const-class v1, Lcom/android/camera/effect/IEffectController;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/IEffectController;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    .line 981
    const-class v1, Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/ISceneController;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    .line 984
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 985
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PanoramaController$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$7;-><init>(Lcom/android/camera/component/PanoramaController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 996
    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestCloseCameraEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PanoramaController$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$8;-><init>(Lcom/android/camera/component/PanoramaController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1010
    return-void
.end method

.method link(Lcom/android/camera/component/PanoramaUI;)V
    .locals 2
    .parameter "ui"

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 1060
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    .line 1061
    :cond_0
    return-void
.end method

.method public takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 19
    .parameter "handle"
    .parameter "cameraController"
    .parameter "camera"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1290
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z

    if-nez v3, :cond_0

    .line 1291
    const/4 v3, 0x0

    .line 1518
    :goto_0
    return v3

    .line 1293
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "takePicture() - START"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-nez v3, :cond_1

    .line 1298
    const-class v3, Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/component/PanoramaController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    .line 1299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-nez v3, :cond_1

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "takePicture() - No IOperationTimeoutController interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v15

    .line 1305
    .local v15, cameraThread:Lcom/android/camera/CameraThread;
    const-string v3, "capture-mode"

    const-string v4, "panorama"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v3, "panorama-mode"

    const-string v4, "in-progress"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraController;->setRotation(I)V

    .line 1308
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1309
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/PanoramaController;->m_CameraUsed:Landroid/hardware/Camera;

    .line 1310
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 1313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v3}, Lcom/scalado/camera/FeatureCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p3

    if-eq v3, v0, :cond_2

    .line 1315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Release old Scalado camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    .line 1320
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    if-nez v3, :cond_3

    .line 1322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Create new Scalado camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-static/range {p3 .. p3}, Lcom/scalado/camera/FeatureCameraFactory;->open(Landroid/hardware/Camera;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    .line 1327
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v18

    .line 1328
    .local v18, pictureSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create Lens object ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/PanoramaController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1392
    new-instance v2, Lcom/scalado/caps/autorama/Lens;

    const/high16 v3, 0x44f5

    const/high16 v4, 0x44f5

    const/high16 v5, 0x4480

    const/high16 v6, 0x4410

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x800

    const/16 v14, 0x480

    invoke-direct/range {v2 .. v14}, Lcom/scalado/caps/autorama/Lens;-><init>(FFFFFFFFFFII)V

    .line 1424
    .local v2, lens:Lcom/scalado/caps/autorama/Lens;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "create Autorama object"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    new-instance v3, Lcom/scalado/camera/autorama/Autorama;

    invoke-direct {v3, v2}, Lcom/scalado/camera/autorama/Autorama;-><init>(Lcom/scalado/caps/autorama/Lens;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    .line 1426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController;->m_AutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    invoke-virtual {v3, v4}, Lcom/scalado/camera/autorama/Autorama;->setListener(Lcom/scalado/camera/autorama/Autorama$AutoramaListener;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v3}, Lcom/scalado/camera/autorama/Autorama;->getOptions()Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    move-result-object v17

    .line 1428
    .local v17, options:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->setNumberOfImages(I)V

    .line 1429
    const/16 v3, 0x3c

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->setOverlap(I)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-interface {v3, v4}, Lcom/scalado/camera/FeatureCamera;->setFeature(Lcom/scalado/camera/Feature;)V

    .line 1433
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I

    .line 1434
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    .line 1435
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/PanoramaController;->m_Direction:I

    .line 1436
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z

    .line 1437
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/PanoramaController;->m_IsReOpenCameraNeeded:Z

    .line 1438
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F

    .line 1439
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;

    .line 1442
    invoke-virtual {v15}, Lcom/android/camera/CameraThread;->disablePreviewCallback()V

    .line 1445
    iget-object v3, v15, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_CaptureRotation:Lcom/android/camera/rotate/UIRotation;

    .line 1448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v3, :cond_4

    .line 1450
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    monitor-enter v10

    .line 1452
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v4, "Panorama JPEG [0]"

    const-wide/16 v5, 0x2710

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/component/PanoramaController;->m_JpegTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    .line 1453
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "start taking picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    new-instance v4, Lcom/android/camera/component/PanoramaController$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/component/PanoramaController$9;-><init>(Lcom/android/camera/component/PanoramaController;)V

    new-instance v5, Lcom/android/camera/component/PanoramaController$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/component/PanoramaController$10;-><init>(Lcom/android/camera/component/PanoramaController;)V

    new-instance v6, Lcom/android/camera/component/PanoramaController$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v15, v1}, Lcom/android/camera/component/PanoramaController$11;-><init>(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;)V

    invoke-interface {v3, v4, v5, v6}, Lcom/scalado/camera/FeatureCamera;->takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 1505
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "takePicture() - END"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1408
    .end local v2           #lens:Lcom/scalado/caps/autorama/Lens;
    .end local v17           #options:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    :cond_5
    new-instance v2, Lcom/scalado/caps/autorama/Lens;

    const v3, 0x44f44000

    const v4, 0x44f5c000

    const/high16 v5, 0x447b

    const/high16 v6, 0x4446

    const/4 v7, 0x0

    const v8, 0x3e051eb8

    const v9, -0x41c7ae14

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x800

    const/16 v14, 0x600

    invoke-direct/range {v2 .. v14}, Lcom/scalado/caps/autorama/Lens;-><init>(FFFFFFFFFFII)V

    .restart local v2       #lens:Lcom/scalado/caps/autorama/Lens;
    goto/16 :goto_1

    .line 1453
    .restart local v17       #options:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1507
    :catch_0
    move-exception v16

    .line 1509
    .local v16, ex:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v3, :cond_6

    .line 1511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v3, v4}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 1512
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    .line 1514
    :cond_6
    throw v16
.end method
