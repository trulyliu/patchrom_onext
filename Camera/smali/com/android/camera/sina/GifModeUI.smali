.class public final Lcom/android/camera/sina/GifModeUI;
.super Lcom/android/camera/component/UIComponent;
.source "GifModeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/sina/GifModeUI$8;
    }
.end annotation


# static fields
.field public static final MSG_GIF_ENCODE_FAILED:I = 0x2715

.field public static final MSG_GIF_ENCODE_STARTED:I = 0x2710

.field public static final MSG_GIF_ENCODE_STOPPED:I = 0x2711

.field public static final MSG_GIF_SENSE_CHANGE:I = 0x2714

.field private static final MSG_SINA_SHARE_CAPTURE_READY:I = 0x2713

.field public static final MSG_TRANSFER_REVIEW_IMAGE:I = 0x2716

.field public static final NAME:Ljava/lang/String; = "Gif Mode UI"

.field private static final STATE_CAPTURING:I = 0x1

.field private static final STATE_ENCODING:I = 0x2

.field private static final STATE_READY:I

.field private static reviewImage:Landroid/graphics/Bitmap;

.field public static sPreGifResolution:Lcom/android/camera/Resolution;


# instance fields
.field private m_BubbleToastHandle:Lcom/android/camera/Handle;

.field private m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

.field private volatile m_CanCapture:Z

.field private m_GifModeController:Lcom/android/camera/sina/GifModeController;

.field private m_GifmodeReviewImage:Landroid/widget/ImageView;

.field private m_Inflater:Landroid/view/LayoutInflater;

.field private m_IsCaptureUIOpen:Z

.field private m_IsModeEntered:Z

.field private m_IsResolutionSyncBackNeeded:Z

.field private m_IsUiInitialized:Z

.field private m_OriginalFlashMode:Lcom/android/camera/FlashMode;

.field private m_ProcessingDialogHandle:Lcom/android/camera/Handle;

.field private m_ResolutionProvider:Lcom/android/camera/sina/GifResolutionProvider;

.field private m_ResolutionProviderHandle:Lcom/android/camera/Handle;

.field private m_State:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/sina/GifModeUI;->sPreGifResolution:Lcom/android/camera/Resolution;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    const/4 v3, 0x0

    .line 88
    const-string v0, "Gif Mode UI"

    const/4 v1, 0x1

    const v2, 0x7f08004c

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 62
    iput v3, p0, Lcom/android/camera/sina/GifModeUI;->m_State:I

    .line 89
    invoke-static {}, Lcom/android/camera/FeatureConfig;->useSpecialPanoramaResolutions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/camera/sina/GifResolutionProvider;

    invoke-direct {v0, p1}, Lcom/android/camera/sina/GifResolutionProvider;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_ResolutionProvider:Lcom/android/camera/sina/GifResolutionProvider;

    .line 91
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/sina/GifModeUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/sina/GifModeUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeUI;->canUseGifMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/sina/GifModeUI;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/camera/sina/GifModeUI;->showReviewImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/sina/GifModeUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeUI;->hideReviewImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/sina/GifModeUI;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/camera/sina/GifModeUI;->changeRecording(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/sina/GifModeUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/sina/GifModeUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeUI;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/sina/GifModeUI;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/camera/sina/GifModeUI;->m_State:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/sina/GifModeUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/camera/sina/GifModeUI;->m_State:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/sina/GifModeUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/sina/GifModeUI;->m_CanCapture:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/sina/GifModeUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/sina/GifModeUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeUI;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$900()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private canUseGifMode()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 107
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v2

    sget-object v4, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-eq v2, v4, :cond_0

    move v2, v3

    .line 119
    :goto_0
    return v2

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-eq v2, v4, :cond_1

    move v2, v3

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Duration;

    invoke-virtual {v2}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    move v2, v3

    .line 112
    goto :goto_0

    .line 114
    :cond_2
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/effect/NoneEffect;

    if-nez v2, :cond_3

    move v2, v3

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 117
    .local v1, scene:Lcom/android/camera/effect/EffectBase;
    if-eqz v1, :cond_4

    instance-of v2, v1, Lcom/android/camera/sina/GifModeScene;

    if-nez v2, :cond_4

    move v2, v3

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private changeRecording(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/IBubbleToastManager;->showBubbleToast(I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    .line 631
    :cond_0
    return-void
.end method

.method private closeCaptureUI()V
    .locals 2

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IBubbleToastManager;->closeBubbleToast(Lcom/android/camera/Handle;)V

    .line 617
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    .line 620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/sina/GifModeUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private hideReviewImage()V
    .locals 3

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 664
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 665
    invoke-static {v0}, Lcom/android/camera/imaging/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private initializeUI()V
    .locals 4

    .prologue
    .line 329
    iget-boolean v1, p0, Lcom/android/camera/sina/GifModeUI;->m_IsUiInitialized:Z

    if-eqz v1, :cond_0

    .line 339
    :goto_0
    return-void

    .line 331
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/sina/GifModeUI;->m_IsUiInitialized:Z

    .line 334
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_Inflater:Landroid/view/LayoutInflater;

    .line 335
    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_Inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, baseLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 338
    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 638
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_GifModeController:Lcom/android/camera/sina/GifModeController;

    if-eqz v0, :cond_0

    .line 642
    :goto_0
    return v1

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v2, "Gif Mode Controller"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/sina/GifModeController;

    iput-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_GifModeController:Lcom/android/camera/sina/GifModeController;

    .line 642
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_GifModeController:Lcom/android/camera/sina/GifModeController;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onGifEncodeStarted()V
    .locals 3

    .prologue
    .line 498
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/sina/GifModeUI;->m_State:I

    .line 501
    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/sina/GifModeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    .line 502
    .local v0, dialogManager:Lcom/android/camera/IProcessingDialogManager;
    if-eqz v0, :cond_0

    .line 503
    const v1, 0x7f0a0055

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->showProcessingDialog(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    .line 506
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 507
    return-void

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onSmartShotCompleted() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onGifEncodeStopped(Lcom/android/camera/CaptureHandle;)V
    .locals 3
    .parameter "captureHandle"

    .prologue
    .line 515
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/sina/GifModeUI;->m_State:I

    .line 518
    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    if-eqz v1, :cond_0

    .line 520
    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/sina/GifModeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    .line 521
    .local v0, dialogManager:Lcom/android/camera/IProcessingDialogManager;
    if-eqz v0, :cond_1

    .line 522
    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->closeProcessingDialog(Lcom/android/camera/Handle;)V

    .line 525
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    .line 528
    .end local v0           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/HTCCamera;->completeTakingPicture(Lcom/android/camera/CaptureHandle;)V

    .line 529
    return-void

    .line 524
    .restart local v0       #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPhotoSaved() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openCaptureUI()V
    .locals 3

    .prologue
    .line 586
    iget-boolean v1, p0, Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z

    if-nez v1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/sina/GifModeUI;->m_IsCaptureUIOpen:Z

    if-nez v1, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 592
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    if-eqz v1, :cond_2

    .line 598
    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Lcom/android/camera/IBubbleToastManager;->showBubbleToast(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    .line 603
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/sina/GifModeUI;->m_IsCaptureUIOpen:Z

    goto :goto_0

    .line 600
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "openCaptureUI() - No IBubbleToastManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private registerListeners()V
    .locals 5

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 347
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/sina/GifModeUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/sina/GifModeUI$1;-><init>(Lcom/android/camera/sina/GifModeUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 361
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/sina/GifModeUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/sina/GifModeUI$2;-><init>(Lcom/android/camera/sina/GifModeUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 385
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/sina/GifModeUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/sina/GifModeUI$3;-><init>(Lcom/android/camera/sina/GifModeUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 412
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/sina/GifModeUI$4;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/sina/GifModeUI$4;-><init>(Lcom/android/camera/sina/GifModeUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 539
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/sina/GifModeUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/sina/GifModeUI$5;-><init>(Lcom/android/camera/sina/GifModeUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 551
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/sina/GifModeUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/sina/GifModeUI$6;-><init>(Lcom/android/camera/sina/GifModeUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 561
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/sina/GifModeUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/sina/GifModeUI$7;-><init>(Lcom/android/camera/sina/GifModeUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 579
    return-void
.end method

.method private showReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 654
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 656
    :cond_0
    return-void
.end method


# virtual methods
.method public canCapture()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/camera/sina/GifModeUI;->m_CanCapture:Z

    return v0
.end method

.method protected deinitializeOverride()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-boolean v0, p0, Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/sina/GifModeUI;->exitGifMode(Z)V

    .line 250
    :cond_0
    iput-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_GifModeController:Lcom/android/camera/sina/GifModeController;

    .line 251
    iput-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_ResolutionProvider:Lcom/android/camera/sina/GifResolutionProvider;

    .line 253
    sget-object v0, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    sget-object v0, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_1
    sput-object v1, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    .line 258
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 261
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 262
    return-void
.end method

.method public enterGifMode(Z)V
    .locals 4
    .parameter "isNeedOpenCaptureUI"

    .prologue
    const/4 v3, 0x1

    .line 134
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterGifMode() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v1, p0, Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z

    if-eqz v1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 141
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z

    .line 144
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeUI;->initializeUI()V

    .line 147
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeUI;->linkToController()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_GifModeController:Lcom/android/camera/sina/GifModeController;

    const/16 v2, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/sina/GifModeUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 153
    :goto_1
    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_ResolutionProvider:Lcom/android/camera/sina/GifResolutionProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_ResolutionProviderHandle:Lcom/android/camera/Handle;

    if-nez v1, :cond_1

    .line 155
    const-class v1, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/sina/GifModeUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ICaptureResolutionManager;

    .line 156
    .local v0, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-eqz v0, :cond_5

    .line 158
    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_ResolutionProvider:Lcom/android/camera/sina/GifResolutionProvider;

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ICaptureResolutionManager;->setPhotoResolutionProvider(Lcom/android/camera/IPhotoResolutionProvider;Z)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_ResolutionProviderHandle:Lcom/android/camera/Handle;

    .line 159
    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_ResolutionProviderHandle:Lcom/android/camera/Handle;

    if-eqz v1, :cond_4

    .line 160
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterGifMode() - Resolution provider changed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v0           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/FlashMode;

    iput-object v1, p0, Lcom/android/camera/sina/GifModeUI;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    .line 171
    if-eqz p1, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeUI;->openCaptureUI()V

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->disableSelfTimer()V

    .line 177
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterGifMode() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterGifMode() - Cannot link to controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    .restart local v0       #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterGifMode() - Cannot change resolution provider"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 165
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterGifMode() - No ICaptureResolutionManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public exitGifMode(Z)V
    .locals 6
    .parameter "isNeedOpenCaptureUI"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 187
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "exitGifMode() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-boolean v2, p0, Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z

    if-nez v2, :cond_0

    .line 237
    :goto_0
    return-void

    .line 193
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/sina/GifModeUI;->m_CanCapture:Z

    .line 196
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 197
    .local v0, activity:Lcom/android/camera/HTCCamera;
    iget-object v2, p0, Lcom/android/camera/sina/GifModeUI;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/camera/sina/GifModeUI;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    invoke-virtual {v0, v2}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/android/camera/sina/GifModeUI;->m_ResolutionProviderHandle:Lcom/android/camera/Handle;

    if-eqz v2, :cond_2

    .line 204
    const-class v2, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/sina/GifModeUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ICaptureResolutionManager;

    .line 205
    .local v1, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-eqz v1, :cond_5

    .line 207
    iget-object v2, p0, Lcom/android/camera/sina/GifModeUI;->m_ResolutionProviderHandle:Lcom/android/camera/Handle;

    iget-boolean v3, p0, Lcom/android/camera/sina/GifModeUI;->m_IsResolutionSyncBackNeeded:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ICaptureResolutionManager;->restorePhotoResolutionProvider(Lcom/android/camera/Handle;Z)V

    .line 208
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "exitGifMode() - Resolution provider restored"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_1
    iput-object v5, p0, Lcom/android/camera/sina/GifModeUI;->m_ResolutionProviderHandle:Lcom/android/camera/Handle;

    .line 213
    iput-boolean v4, p0, Lcom/android/camera/sina/GifModeUI;->m_IsResolutionSyncBackNeeded:Z

    .line 217
    .end local v1           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_2
    if-eqz p1, :cond_3

    .line 218
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeUI;->closeCaptureUI()V

    .line 222
    :cond_3
    sget-object v2, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 223
    sget-object v2, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 224
    :cond_4
    sput-object v5, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    .line 227
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableSelfTimer()V

    .line 230
    iput-boolean v4, p0, Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z

    .line 231
    iget-object v2, p0, Lcom/android/camera/sina/GifModeUI;->m_GifModeController:Lcom/android/camera/sina/GifModeController;

    if-eqz v2, :cond_6

    .line 232
    iget-object v2, p0, Lcom/android/camera/sina/GifModeUI;->m_GifModeController:Lcom/android/camera/sina/GifModeController;

    const/16 v3, 0x2711

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/sina/GifModeUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 236
    :goto_2
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "exitGifMode() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .restart local v1       #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "exitGifMode() - No ICaptureResolutionManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 234
    .end local v1           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "exitGifMode() - Cannot link to controller"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 270
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeUI;->linkToController()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 300
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 275
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeUI;->onGifEncodeStarted()V

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 280
    .local v0, params:[Ljava/lang/Object;
    aget-object v2, v0, v3

    check-cast v2, Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v2}, Lcom/android/camera/sina/GifModeUI;->onGifEncodeStopped(Lcom/android/camera/CaptureHandle;)V

    goto :goto_0

    .line 284
    .end local v0           #params:[Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/sina/GifGenerator;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/GifGenerator;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/sina/GifGenerator;->isShareKeyLongPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/sina/GifGenerator;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/GifGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/sina/GifGenerator;->notifyGifModeEnter()V

    goto :goto_0

    .line 289
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/sina/GifGenerator;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/GifGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/sina/GifGenerator;->notifySenseChange()V

    goto :goto_0

    .line 293
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 294
    .local v1, params1:[Ljava/lang/Object;
    sget-object v2, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 295
    sget-object v2, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 296
    :cond_1
    aget-object v2, v1, v3

    check-cast v2, Landroid/graphics/Bitmap;

    sput-object v2, Lcom/android/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 316
    const-class v0, Lcom/android/camera/IBubbleToastManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/sina/GifModeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IBubbleToastManager;

    iput-object v0, p0, Lcom/android/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    .line 319
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeUI;->registerListeners()V

    .line 321
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeUI;->setupPropertyChangedCallbacks()V

    .line 322
    return-void
.end method

.method public isGifModeEntered()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z

    return v0
.end method
