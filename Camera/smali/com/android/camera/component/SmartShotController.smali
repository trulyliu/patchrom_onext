.class public final Lcom/android/camera/component/SmartShotController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "SmartShotController.java"

# interfaces
.implements Lcom/android/camera/IPhotoCaptureHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/SmartShotController$5;,
        Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;,
        Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;
    }
.end annotation


# static fields
.field public static final DEFAULT_SHUTTER_SOUND:I = 0x7f060004

.field public static final MSG_AUTO_SESSION_RECYCLE:I = 0x3

.field public static final MSG_ENTER_SMART_SHOT:I = 0x1

.field public static final MSG_EXIT_SMART_SHOT:I = 0x2

.field public static final NAME:Ljava/lang/String; = "Smart Shot Controller"

.field private static final m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field private FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

.field autoSession:Lcom/scalado/app/rewind/AutoSession;

.field cropFacesBmp:[Landroid/graphics/Bitmap;

.field mDrawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;

.field private final mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mRawCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private final m_AutoSessionListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

.field private m_CaptureCount:I

.field private m_CaptureHandle:Lcom/android/camera/CaptureHandle;

.field private m_CurrentCaptureIndex:I

.field private m_EffectController:Lcom/android/camera/effect/IEffectController;

.field private final m_ExifTags:Ljava/util/Hashtable;
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

.field private m_InstanceID:J

.field private m_IsSmartShotModeEntered:Z

.field private m_SceneController:Lcom/android/camera/effect/ISceneController;

.field m_Screen:Lcom/scalado/base/Image;

.field private m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

.field private final m_StoredPictureUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field m_faceRects:[Landroid/graphics/Rect;

.field m_firstSourceImage:Landroid/graphics/Bitmap;

.field m_replaceRects:[Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 71
    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "BURST"

    const-string v2, "IMAG"

    const-string v3, "burst_dir_counter"

    const-string v4, "burst_file_counter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/component/SmartShotController;->m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 3
    .parameter "cameraThread"

    .prologue
    const/4 v2, 0x0

    .line 208
    const-string v0, "Smart Shot Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 77
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/component/SmartShotController;->m_CaptureCount:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    .line 84
    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    .line 85
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_ExifTags:Ljava/util/Hashtable;

    .line 87
    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->m_replaceRects:[Landroid/graphics/Rect;

    .line 88
    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->m_faceRects:[Landroid/graphics/Rect;

    .line 89
    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->cropFacesBmp:[Landroid/graphics/Bitmap;

    .line 90
    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->mDrawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;

    .line 92
    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_StoredPictureUris:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Lcom/android/camera/component/SmartShotController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$1;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_AutoSessionListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    .line 686
    new-instance v0, Lcom/android/camera/component/SmartShotController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$2;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 700
    new-instance v0, Lcom/android/camera/component/SmartShotController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$3;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 707
    new-instance v0, Lcom/android/camera/component/SmartShotController$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$4;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/component/SmartShotUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/CaptureHandle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/SmartShotController;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_ExifTags:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/camera/io/DCFInfo;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/camera/component/SmartShotController;->m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/component/SmartShotController;Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;)Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 2
    .parameter "cameraActivity"

    .prologue
    const/4 v0, 0x0

    .line 260
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    invoke-static {p0}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToUI()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 924
    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    if-eqz v1, :cond_0

    .line 928
    :goto_0
    return v2

    .line 926
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 927
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v1

    const-string v3, "Smart Shot UI"

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/SmartShotUI;

    :goto_1
    iput-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    .line 928
    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_0

    .line 927
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 928
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private onEnterSmartShotMode(J)V
    .locals 3
    .parameter "instanceID"

    .prologue
    const/4 v2, 0x0

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/SmartShotController;->m_IsSmartShotModeEntered:Z

    .line 286
    iput-wide p1, p0, Lcom/android/camera/component/SmartShotController;->m_InstanceID:J

    .line 288
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotController;->linkToUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/effect/IEffectController;->setColorEffect(Ljava/lang/String;Z)V

    .line 294
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;)V

    .line 298
    :cond_2
    return-void
.end method

.method private onExitSmartShotMode()V
    .locals 4

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 307
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 310
    .local v0, cameraController:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onExitSmartShotMode() - Set capture mode to normal"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    const-string v2, "capture-mode"

    const-string v3, "zsl"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 320
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/SmartShotController;->m_IsSmartShotModeEntered:Z

    .line 321
    iget-object v2, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    if-eqz v2, :cond_1

    .line 323
    iget-object v2, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    .line 324
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    .line 326
    :cond_1
    return-void

    .line 316
    :cond_2
    const-string v2, "capture-mode"

    const-string v3, "normal"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 1
    .parameter "handle"
    .parameter "cameraController"
    .parameter "camera"

    .prologue
    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public final handleCommonJpegCallback([BLandroid/hardware/Camera;)V
    .locals 23
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "handleCommonJpegCallback() - start"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->threadAccessCheck()V

    .line 494
    sget-object v18, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/TIME$Value;->End()V

    .line 495
    sget-object v18, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/TIME$Value;->Start()V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "JPEG Callback["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], JPEG-data size = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 503
    const/16 v16, 0x0

    .line 507
    .local v16, tempFile:Ljava/io/File;
    :try_start_0
    const-string v18, ".camera_temp"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 508
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 509
    .local v13, outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 510
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 513
    new-instance v9, Landroid/media/ExifInterface;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 514
    .local v9, exif:Landroid/media/ExifInterface;
    const/16 v18, 0xb

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "DateTime"

    aput-object v19, v15, v18

    const/16 v18, 0x1

    const-string v19, "FocalLength"

    aput-object v19, v15, v18

    const/16 v18, 0x2

    const-string v19, "GPSAltitude"

    aput-object v19, v15, v18

    const/16 v18, 0x3

    const-string v19, "GPSAltitudeRef"

    aput-object v19, v15, v18

    const/16 v18, 0x4

    const-string v19, "GPSLatitude"

    aput-object v19, v15, v18

    const/16 v18, 0x5

    const-string v19, "GPSLatitudeRef"

    aput-object v19, v15, v18

    const/16 v18, 0x6

    const-string v19, "GPSLongitude"

    aput-object v19, v15, v18

    const/16 v18, 0x7

    const-string v19, "GPSLongitudeRef"

    aput-object v19, v15, v18

    const/16 v18, 0x8

    const-string v19, "Make"

    aput-object v19, v15, v18

    const/16 v18, 0x9

    const-string v19, "Model"

    aput-object v19, v15, v18

    const/16 v18, 0xa

    const-string v19, "WhiteBalance"

    aput-object v19, v15, v18

    .line 527
    .local v15, tagNames:[Ljava/lang/String;
    move-object v4, v15

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v12, :cond_2

    aget-object v14, v4, v10

    .line 529
    .local v14, tagName:Ljava/lang/String;
    invoke-virtual {v9, v14}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 530
    .local v17, value:Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_ExifTags:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 498
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #exif:Landroid/media/ExifInterface;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .end local v14           #tagName:Ljava/lang/String;
    .end local v15           #tagNames:[Ljava/lang/String;
    .end local v16           #tempFile:Ljava/io/File;
    .end local v17           #value:Ljava/lang/String;
    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 540
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v9       #exif:Landroid/media/ExifInterface;
    .restart local v10       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #outputStream:Ljava/io/FileOutputStream;
    .restart local v15       #tagNames:[Ljava/lang/String;
    .restart local v16       #tempFile:Ljava/io/File;
    :cond_2
    if-eqz v16, :cond_3

    .line 541
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 546
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #exif:Landroid/media/ExifInterface;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .end local v15           #tagNames:[Ljava/lang/String;
    .end local v16           #tempFile:Ljava/io/File;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 548
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 549
    .local v5, buf:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/scalado/app/rewind/AutoSession;->addJpeg(Ljava/nio/ByteBuffer;)V

    .line 553
    .end local v5           #buf:Ljava/nio/ByteBuffer;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    .line 557
    .local v7, cameraThread:Lcom/android/camera/CameraThread;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CaptureCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    const/4 v11, 0x1

    .line 560
    .local v11, isLastPicture:Z
    :goto_3
    if-eqz v11, :cond_a

    .line 562
    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->setCanStartPreview()V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/SmartShotController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 564
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    .line 569
    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v6

    .line 572
    .local v6, cameraController:Lcom/android/camera/CameraController;
    if-eqz v6, :cond_5

    .line 574
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 575
    const-string v18, "capture-mode"

    const-string v19, "zsl"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :goto_4
    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 581
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "getMergedImage - Start"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/app/rewind/AutoSession;->getMergedImage()V

    .line 591
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "getMergedImage - End"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .end local v6           #cameraController:Lcom/android/camera/CameraController;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "JPEG Callback end"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "handleCommonJpegCallback() - end"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void

    .line 534
    .end local v7           #cameraThread:Lcom/android/camera/CameraThread;
    .end local v11           #isLastPicture:Z
    .restart local v16       #tempFile:Ljava/io/File;
    :catch_0
    move-exception v8

    .line 536
    .local v8, ex:Ljava/lang/Throwable;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Cannot extract EXIF from first frame"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    if-eqz v16, :cond_3

    .line 541
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 540
    .end local v8           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v18

    if-eqz v16, :cond_6

    .line 541
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_6
    throw v18

    .line 557
    .end local v16           #tempFile:Ljava/io/File;
    .restart local v7       #cameraThread:Lcom/android/camera/CameraThread;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 577
    .restart local v6       #cameraController:Lcom/android/camera/CameraController;
    .restart local v11       #isLastPicture:Z
    :cond_8
    const-string v18, "capture-mode"

    const-string v19, "normal"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 586
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "handleCommonJpegCallback() - autoSession is null"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    invoke-direct/range {v19 .. v21}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 588
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    goto/16 :goto_5

    .line 595
    .end local v6           #cameraController:Lcom/android/camera/CameraController;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19

    .line 597
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 610
    :goto_7
    monitor-exit v19

    goto/16 :goto_6

    :catchall_1
    move-exception v18

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v18

    .line 601
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v20, "Surface is not available"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v18, v0

    new-instance v20, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    invoke-direct/range {v20 .. v22}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    .line 607
    :cond_c
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7
.end method

.method public final handleCommonPostviewCallback([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "yuvData"
    .parameter "camera"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "handleCommonPostviewCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "handleCommonPostviewCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public final handleCommonRawCallback([BLandroid/hardware/Camera;)V
    .locals 4
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 631
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "handleCommonRawCallback() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->threadAccessCheck()V

    .line 637
    sget-object v1, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->End()V

    .line 638
    sget-object v1, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    .line 640
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart shot Mode - RAW Call-back, raw-data size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    array-length v1, p1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 642
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "handleCommonRawCallback() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    return-void

    .line 640
    .end local v0           #cameraThread:Lcom/android/camera/CameraThread;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleCommonShutterCallback()V
    .locals 1

    .prologue
    .line 654
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SmartShotController;->handleCommonShutterCallback(I)V

    .line 655
    return-void
.end method

.method public final handleCommonShutterCallback(I)V
    .locals 5
    .parameter "resid"

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->threadAccessCheck()V

    .line 665
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Smart shot Mode - Shutter Call-back"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 667
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->playShutterSound()V

    .line 670
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 671
    .local v0, cameraController:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v2

    if-nez v2, :cond_1

    .line 673
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart shot Mode - Shutter Call-back m_CurrentCaptureIndex= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v2, "capture-mode"

    const-string v3, "contiburst"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 679
    :cond_1
    sget-object v2, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v2}, Lcom/android/camera/TIME$Value;->End()V

    .line 680
    sget-object v2, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v2}, Lcom/android/camera/TIME$Value;->Start()V

    .line 681
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 236
    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 220
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/SmartShotController;->onEnterSmartShotMode(J)V

    goto :goto_0

    .line 224
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotController;->onExitSmartShotMode()V

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    .line 251
    const-class v0, Lcom/android/camera/effect/IEffectController;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SmartShotController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectController;

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    .line 252
    const-class v0, Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SmartShotController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/ISceneController;

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    .line 253
    return-void
.end method

.method link(Lcom/android/camera/component/SmartShotUI;)V
    .locals 0
    .parameter "ui"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    .line 278
    return-void
.end method

.method public takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 9
    .parameter "handle"
    .parameter "cameraController"
    .parameter "camera"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 722
    iget-boolean v0, p0, Lcom/android/camera/component/SmartShotController;->m_IsSmartShotModeEntered:Z

    if-nez v0, :cond_0

    .line 762
    :goto_0
    return v3

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    .line 729
    .local v6, cameraThread:Lcom/android/camera/CameraThread;
    iput v3, p0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    .line 730
    iput-object p1, p0, Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    .line 733
    invoke-virtual {p3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 736
    .local v7, pictureSize:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 739
    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    iget-wide v4, p0, Lcom/android/camera/component/SmartShotController;->m_InstanceID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/SmartShotController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 742
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    if-nez v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    if-nez v0, :cond_1

    .line 745
    new-instance v0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    .line 746
    :cond_1
    new-instance v0, Lcom/scalado/app/rewind/AutoSession;

    iget v1, p0, Lcom/android/camera/component/SmartShotController;->m_CaptureCount:I

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoSession;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    .line 747
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->setFaceDetectEx(Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;)V

    .line 748
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_AutoSessionListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->setListener(Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;)V

    .line 754
    :goto_1
    iget-object v0, v6, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/rotate/UIRotation;

    .line 755
    .local v8, uiRotation:Lcom/android/camera/rotate/UIRotation;
    invoke-virtual {v8}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 756
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    new-instance v1, Lcom/scalado/base/Size;

    iget v3, v7, Landroid/hardware/Camera$Size;->width:I

    iget v4, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v3, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    invoke-virtual {v0, v1, v3}, Lcom/scalado/app/rewind/AutoSession;->setScreenConfig(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 760
    :goto_2
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p0, Lcom/android/camera/component/SmartShotController;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p3, v0, v1, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    move v3, v2

    .line 762
    goto :goto_0

    .line 752
    .end local v8           #uiRotation:Lcom/android/camera/rotate/UIRotation;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    goto :goto_1

    .line 758
    .restart local v8       #uiRotation:Lcom/android/camera/rotate/UIRotation;
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    new-instance v1, Lcom/scalado/base/Size;

    iget v3, v7, Landroid/hardware/Camera$Size;->height:I

    iget v4, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-direct {v1, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v3, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    invoke-virtual {v0, v1, v3}, Lcom/scalado/app/rewind/AutoSession;->setScreenConfig(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    goto :goto_2
.end method
