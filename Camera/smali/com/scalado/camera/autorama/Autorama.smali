.class public Lcom/scalado/camera/autorama/Autorama;
.super Ljava/lang/Object;
.source "Autorama.java"

# interfaces
.implements Lcom/scalado/camera/Feature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaImage;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaListener;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;,
        Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;,
        Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;,
        Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;,
        Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;,
        Lcom/scalado/camera/autorama/Autorama$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State:[I = null

.field public static final DEFAULT_DIRECTION_TRIGGER:I = 0xa

.field public static final DEFAULT_MAX_DEVIATION:I = 0x64

.field public static final DEFAULT_OVERLAP:I = 0x2d

.field public static final DEFAULT_TRACKING_THRESHOLD:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "ScaladoCameraFramework"


# instance fields
.field private mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

.field private mAutoramaImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/camera/autorama/Autorama$AutoramaImage;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

.field mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

.field private mAutoramaPostviewImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/camera/autorama/Autorama$AutoramaImage;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Lcom/scalado/camera/Camera;

.field private mCapturedImages:I

.field private mCapturingFinished:Z

.field private mDirection:Lcom/scalado/caps/autorama/Direction;

.field private mFeatureImplementation:Lcom/scalado/camera/Feature$FeatureImplementation;

.field private mJpegCallbackHandler:Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;

.field private mLastPreviewImage:Lcom/scalado/base/Image;

.field private mLens:Lcom/scalado/caps/autorama/Lens;

.field private mPostviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;

.field private mPreviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;

.field private mPreviewConfig:Lcom/scalado/base/Image$Config;

.field private mPreviewDimensions:Lcom/scalado/base/Size;

.field private mShutterCallbackHandler:Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;

.field private mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

.field private mState:Lcom/scalado/camera/autorama/Autorama$State;

.field private mStopRequested:Z

.field private mTargetCoordinates:Landroid/graphics/Point;

.field private mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

.field private mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

.field mTrackingX:F

.field mTrackingY:F

.field private mTransformAtLastShutterCallback:Lcom/scalado/caps/autorama/Transform;

.field private mWorkerThread:Ljava/lang/Thread;

.field mpreTrackingX:F

.field mpreTrackingY:F


# direct methods
.method static synthetic $SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State()[I
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lcom/scalado/camera/autorama/Autorama;->$SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/scalado/camera/autorama/Autorama$State;->values()[Lcom/scalado/camera/autorama/Autorama$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->READY:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->RENDERING:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->TRACKING:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/scalado/camera/autorama/Autorama;->$SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/scalado/caps/autorama/Lens;)V
    .locals 4
    .parameter "lens"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 488
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    invoke-direct {v0, p0}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    .line 250
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;

    .line 251
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mShutterCallbackHandler:Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;

    .line 252
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mPostviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;

    .line 253
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mJpegCallbackHandler:Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;

    .line 260
    iput v2, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    .line 261
    iput v2, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    .line 263
    iput v2, p0, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingX:F

    .line 264
    iput v2, p0, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingY:F

    .line 489
    if-nez p1, :cond_0

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lens must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_0
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mLens:Lcom/scalado/caps/autorama/Lens;

    .line 493
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 494
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    .line 495
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    .line 497
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mFeatureImplementation:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 499
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->reset()V

    .line 500
    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Direction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    return-void
.end method

.method static synthetic access$10(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->capture()V

    return-void
.end method

.method static synthetic access$11(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-void
.end method

.method static synthetic access$12(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;

    return-void
.end method

.method static synthetic access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;

    return-object v0
.end method

.method static synthetic access$14(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Size;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;

    return-void
.end method

.method static synthetic access$15(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image$Config;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    return-void
.end method

.method static synthetic access$16(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mLastPreviewImage:Lcom/scalado/base/Image;

    return-void
.end method

.method static synthetic access$17(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$19(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/autorama/Autorama;)I
    .locals 1
    .parameter

    .prologue
    .line 257
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I

    return v0
.end method

.method static synthetic access$20(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/ViewfinderTracker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    return-void
.end method

.method static synthetic access$21(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Transform;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    return-void
.end method

.method static synthetic access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;
    .locals 1
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    return-object v0
.end method

.method static synthetic access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    return-object v0
.end method

.method static synthetic access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;
    .locals 1
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    return-object v0
.end method

.method static synthetic access$25(Lcom/scalado/camera/autorama/Autorama;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I

    return-void
.end method

.method static synthetic access$26(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Transform;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mTransformAtLastShutterCallback:Lcom/scalado/caps/autorama/Transform;

    return-void
.end method

.method static synthetic access$27(Lcom/scalado/camera/autorama/Autorama;)Z
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z

    return v0
.end method

.method static synthetic access$28(Lcom/scalado/camera/autorama/Autorama;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturingFinished:Z

    return-void
.end method

.method static synthetic access$29(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->stopTracking()V

    return-void
.end method

.method static synthetic access$3(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;

    return-void
.end method

.method static synthetic access$30(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Image$Config;
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method static synthetic access$31(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;
    .locals 1
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTransformAtLastShutterCallback:Lcom/scalado/caps/autorama/Transform;

    return-object v0
.end method

.method static synthetic access$32(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$33(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->restartPreview()V

    return-void
.end method

.method static synthetic access$34(Lcom/scalado/camera/autorama/Autorama;)Z
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturingFinished:Z

    return v0
.end method

.method static synthetic access$35(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->panoramaCompleted()V

    return-void
.end method

.method static synthetic access$36(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    return-void
.end method

.method static synthetic access$37(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->startTracking()V

    return-void
.end method

.method static synthetic access$39(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Lens;
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mLens:Lcom/scalado/caps/autorama/Lens;

    return-object v0
.end method

.method static synthetic access$4(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Feature$FeatureSocket;
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-object v0
.end method

.method static synthetic access$40(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 832
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/camera/autorama/Autorama;->createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$42(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$43(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->reset()V

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$State;
    .locals 1
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    return-object v0
.end method

.method static synthetic access$6(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$ShutterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-void
.end method

.method static synthetic access$7(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$8(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$9(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method private capture()V
    .locals 5

    .prologue
    .line 704
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    if-ne v0, v1, :cond_0

    .line 705
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Autorama can not capture, already capturing. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :goto_0
    return-void

    .line 709
    :cond_0
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Start autorama capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    sget-object v0, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    .line 711
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onIntermediateCaptureStart(I)V

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mShutterCallbackHandler:Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scalado/camera/autorama/Autorama;->mPostviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mJpegCallbackHandler:Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/scalado/camera/Feature$FeatureSocket;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method private createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;
    .locals 11
    .parameter "lens"
    .parameter "direction"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scalado/caps/autorama/Lens;",
            "Lcom/scalado/caps/autorama/Direction;",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/camera/autorama/Autorama$AutoramaImage;",
            ">;)",
            "Lcom/scalado/caps/Session;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, sources:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/camera/autorama/Autorama$AutoramaImage;>;"
    const/4 v10, 0x0

    .line 834
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 835
    const-string v6, "ScaladoCameraFramework"

    const-string v7, "No sources when rendering autorama."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "No sources when rendering autorama."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 839
    :cond_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 840
    const-string v6, "ScaladoCameraFramework"

    const-string v7, "Only one source when rendering autorama. Returning session based on this single image."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-virtual {p3, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;

    invoke-virtual {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    .line 844
    .local v0, decoder:Lcom/scalado/caps/Decoder;
    new-instance v4, Lcom/scalado/caps/Session;

    invoke-direct {v4, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 882
    .end local v0           #decoder:Lcom/scalado/caps/Decoder;
    :goto_0
    return-object v4

    .line 848
    :cond_1
    sget-object v6, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne p2, v6, :cond_2

    .line 849
    const-string v6, "ScaladoCameraFramework"

    const-string v7, "Cannot complete stitch due to Direction UNKNOWN. Returning session based on this single image."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {p3, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;

    invoke-virtual {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    .line 853
    .restart local v0       #decoder:Lcom/scalado/caps/Decoder;
    new-instance v4, Lcom/scalado/caps/Session;

    invoke-direct {v4, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 854
    .local v4, session:Lcom/scalado/caps/Session;
    goto :goto_0

    .line 858
    .end local v0           #decoder:Lcom/scalado/caps/Decoder;
    .end local v4           #session:Lcom/scalado/caps/Session;
    :cond_2
    new-instance v5, Lcom/scalado/caps/autorama/Stitcher;

    invoke-virtual {p3, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;

    invoke-virtual {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    invoke-direct {v5, p1, v6, p2}, Lcom/scalado/caps/autorama/Stitcher;-><init>(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/base/Size;Lcom/scalado/caps/autorama/Direction;)V

    .line 861
    .local v5, stitcher:Lcom/scalado/caps/autorama/Stitcher;
    sget-object v6, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-eq p2, v6, :cond_3

    sget-object v6, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne p2, v6, :cond_4

    .line 863
    :cond_3
    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$6(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    move-result-object v6

    new-instance v7, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    iget-object v8, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z
    invoke-static {v8}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$7(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v8

    iget-object v9, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z
    invoke-static {v9}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$8(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;-><init>(ZZ)V

    invoke-virtual {v5, v6, v7}, Lcom/scalado/caps/autorama/Stitcher;->setBlendMode(Lcom/scalado/caps/autorama/Stitcher$BlendMode;Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;)V

    .line 870
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v1, v6, :cond_5

    .line 876
    invoke-static {v5}, Lcom/scalado/caps/autorama/PanoramaDecoder;->create(Lcom/scalado/caps/autorama/Stitcher;)Lcom/scalado/base/Iterator;

    move-result-object v2

    .line 877
    .local v2, iterator:Lcom/scalado/base/Iterator;
    invoke-virtual {v2, v10}, Lcom/scalado/base/Iterator;->step(I)F

    .line 879
    invoke-virtual {v2}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/caps/autorama/PanoramaDecoder;

    .line 882
    .local v3, panoramaDecoder:Lcom/scalado/caps/autorama/PanoramaDecoder;
    new-instance v4, Lcom/scalado/caps/Session;

    invoke-direct {v4, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    goto :goto_0

    .line 866
    .end local v1           #i:I
    .end local v2           #iterator:Lcom/scalado/base/Iterator;
    .end local v3           #panoramaDecoder:Lcom/scalado/caps/autorama/PanoramaDecoder;
    :cond_4
    sget-object v6, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->LINEAR:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    new-instance v7, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    iget-object v8, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z
    invoke-static {v8}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$7(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v8

    iget-object v9, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z
    invoke-static {v9}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$8(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;-><init>(ZZ)V

    invoke-virtual {v5, v6, v7}, Lcom/scalado/caps/autorama/Stitcher;->setBlendMode(Lcom/scalado/caps/autorama/Stitcher$BlendMode;Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;)V

    goto :goto_1

    .line 871
    .restart local v1       #i:I
    :cond_5
    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;

    invoke-virtual {v6, v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;->addToStitcher(Lcom/scalado/caps/autorama/Stitcher;)V

    .line 870
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private panoramaCompleted()V
    .locals 3

    .prologue
    .line 719
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Panorama Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    sget-object v0, Lcom/scalado/camera/autorama/Autorama$State;->RENDERING:Lcom/scalado/camera/autorama/Autorama$State;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    .line 723
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    invoke-interface {v0}, Lcom/scalado/camera/Camera$ShutterCallback;->onShutter()V

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 731
    :cond_1
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$2;

    invoke-direct {v0, p0}, Lcom/scalado/camera/autorama/Autorama$2;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    .line 819
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 820
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 890
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "[debug]reset 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    sget-object v0, Lcom/scalado/camera/autorama/Autorama$State;->READY:Lcom/scalado/camera/autorama/Autorama$State;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    .line 892
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$2(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 895
    :cond_0
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "[debug]reset 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    invoke-virtual {v0}, Lcom/scalado/caps/autorama/ViewfinderTracker;->reset()V

    .line 899
    :cond_1
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "[debug]reset 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 901
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 903
    :cond_2
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "[debug]reset 4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    if-eqz v0, :cond_3

    .line 905
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 907
    :cond_3
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "[debug]reset 5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iput v2, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I

    .line 909
    iput-boolean v2, p0, Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z

    .line 910
    iput-boolean v2, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturingFinished:Z

    .line 911
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "[debug]reset 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return-void
.end method

.method private restartPreview()V
    .locals 4

    .prologue
    .line 672
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 673
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/scalado/camera/autorama/Autorama$1;

    invoke-direct {v1, p0}, Lcom/scalado/camera/autorama/Autorama$1;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    .line 681
    .local v1, timerTask:Ljava/util/TimerTask;
    const-wide/16 v2, 0x19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 682
    return-void
.end method

.method private startTracking()V
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;

    invoke-interface {v0, v1}, Lcom/scalado/camera/Feature$FeatureSocket;->setFeaturePreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V

    .line 689
    return-void
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scalado/camera/Feature$FeatureSocket;->setFeaturePreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V

    .line 698
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 569
    const-string v1, "ScaladoCameraFramework"

    const-string v2, "[debug]abort 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_0

    .line 572
    :try_start_0
    const-string v1, "ScaladoCameraFramework"

    const-string v2, "[debug]abort 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 574
    const-string v1, "ScaladoCameraFramework"

    const-string v2, "[debug]abort 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :cond_0
    :goto_0
    const-string v1, "ScaladoCameraFramework"

    const-string v2, "[debug]abort 4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->stopTracking()V

    .line 582
    const-string v1, "ScaladoCameraFramework"

    const-string v2, "[debug]abort 5"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->reset()V

    .line 584
    const-string v1, "ScaladoCameraFramework"

    const-string v2, "[debug]abort 6"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void

    .line 575
    :catch_0
    move-exception v0

    .line 577
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDirection()Lcom/scalado/caps/autorama/Direction;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    invoke-virtual {v0}, Lcom/scalado/caps/autorama/Direction;->clone()Lcom/scalado/caps/autorama/Direction;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureImplementation()Lcom/scalado/camera/Feature$FeatureImplementation;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mFeatureImplementation:Lcom/scalado/camera/Feature$FeatureImplementation;

    return-object v0
.end method

.method public getLowResolutionPanorama(Z)Lcom/scalado/caps/Session;
    .locals 7
    .parameter "includeLatestPreview"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 613
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, v5, :cond_0

    .line 614
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Must wait until at least 1 image has been captured"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 617
    :cond_0
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 619
    .local v2, images:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/camera/autorama/Autorama$AutoramaImage;>;"
    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 621
    .local v1, direction:Lcom/scalado/caps/autorama/Direction;
    if-eqz p1, :cond_7

    .line 623
    sget-object v4, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne v1, v4, :cond_1

    .line 624
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    invoke-virtual {v4, v5}, Lcom/scalado/caps/autorama/Transform;->getDirection(I)Lcom/scalado/caps/autorama/Direction;

    move-result-object v1

    .line 627
    :cond_1
    sget-object v4, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v1, v4, :cond_b

    .line 628
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mLastPreviewImage:Lcom/scalado/base/Image;

    if-eqz v4, :cond_a

    .line 630
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    if-ne v4, v5, :cond_8

    :cond_2
    iget v3, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    .line 631
    .local v3, relevantTrackingCoordinate:F
    :goto_0
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    if-ne v4, v5, :cond_4

    :cond_3
    cmpg-float v4, v3, v6

    if-ltz v4, :cond_6

    .line 632
    :cond_4
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne v4, v5, :cond_9

    :cond_5
    cmpl-float v4, v3, v6

    if-lez v4, :cond_9

    .line 633
    :cond_6
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mLastPreviewImage:Lcom/scalado/base/Image;

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    invoke-direct {v0, p0, v4, v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    .line 634
    .local v0, autoramaImage:Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 649
    .end local v0           #autoramaImage:Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;
    .end local v3           #relevantTrackingCoordinate:F
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mLens:Lcom/scalado/caps/autorama/Lens;

    invoke-direct {p0, v4, v1, v2}, Lcom/scalado/camera/autorama/Autorama;->createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;

    move-result-object v4

    return-object v4

    .line 630
    :cond_8
    iget v3, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    goto :goto_0

    .line 637
    .restart local v3       #relevantTrackingCoordinate:F
    :cond_9
    const-string v4, "ScaladoCameraFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getLowResolutionPanorama: Skipping last preview frame because to little translation in determined direction: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 641
    .end local v3           #relevantTrackingCoordinate:F
    :cond_a
    const-string v4, "ScaladoCameraFramework"

    const-string v5, "getLowResolutionPanorama: No last preview image found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 645
    :cond_b
    const-string v4, "ScaladoCameraFramework"

    const-string v5, "getLowResolutionPanorama: Direction unknown"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNumberOfCapturedImages()I
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 663
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getOptions()Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 592
    invoke-static {}, Lcom/scalado/camera/autorama/Autorama;->$SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 598
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 595
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/scalado/camera/autorama/Autorama$AutoramaListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    .line 525
    return-void
.end method

.method public stop(Z)V
    .locals 4
    .parameter "takeOneLastPicture"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 535
    invoke-virtual {p0}, Lcom/scalado/camera/autorama/Autorama;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    if-ne v0, v1, :cond_1

    .line 537
    iput-boolean v3, p0, Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z

    .line 538
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Currently capturing. Will stop when capture completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    if-eqz p1, :cond_6

    .line 542
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v0, v1, :cond_6

    .line 543
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_6

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_6

    .line 545
    :cond_3
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_6

    .line 546
    :cond_4
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_6

    .line 547
    :cond_5
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Will make one more capture and then stop."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iput-boolean v3, p0, Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z

    .line 549
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->capture()V

    goto :goto_0

    .line 552
    :cond_6
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Stopping now."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;

    invoke-interface {v0}, Lcom/scalado/camera/Camera;->stopPreview()V

    .line 554
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->stopTracking()V

    .line 555
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->panoramaCompleted()V

    goto :goto_0
.end method
