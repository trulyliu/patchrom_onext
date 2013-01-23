.class public final Lcom/android/camera/component/ContinuousBurstUI;
.super Lcom/android/camera/component/UIComponent;
.source "ContinuousBurstUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ContinuousBurstUI$7;
    }
.end annotation


# static fields
.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final MSG_CAPTURE_BUTTON_LONG_PRESSED:I = 0x2712

.field static final MSG_ON_SHUTTER_CALLBACK:I = 0x2713

.field static final MSG_PHOTO_SAVE_STARTED:I = 0x2710

.field static final MSG_PHOTO_SAVE_STOPPED:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Continuous Burst UI"

.field public static final PREF_LONG_PRESS_TIMEOUT:Ljava/lang/String; = "pref_continuous_burst_long_press_timeout"

.field private static final STATE_CAPTURING:I = 0x1

.field private static final STATE_READY:I = 0x0

.field private static final STATE_SAVING:I = 0x2


# instance fields
.field private final isEntered:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_AutoSceneController:Lcom/android/camera/IAutoSceneController;

.field private m_BurstMode:I

.field private volatile m_CanCapture:Z

.field private m_Controller:Lcom/android/camera/component/ContinuousBurstController;

.field private m_ExpectedPhotoCount:I

.field private m_IsShutterReceived:Z

.field private m_LongPressTimeout:I

.field private m_ProcessingDialogHandle:Lcom/android/camera/Handle;

.field private m_State:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v2, 0x0

    .line 71
    const-string v0, "Continuous Burst UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 52
    iput v2, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_BurstMode:I

    .line 59
    iput v2, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    .line 72
    const-string v0, "ContinuousBurstUI.IsEntered"

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->isEntered:Lcom/android/camera/property/Property;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/ContinuousBurstUI;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_BurstMode:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/ContinuousBurstUI;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/component/ContinuousBurstUI;->updateBurstMode(I)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/camera/component/ContinuousBurstUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_CanCapture:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/component/ContinuousBurstUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->canUseContinuousBurst()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ContinuousBurstUI;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/component/ContinuousBurstUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_IsShutterReceived:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/component/ContinuousBurstUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/component/ContinuousBurstUI;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->isEntered:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/camera/component/ContinuousBurstUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ContinuousBurstUI;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/component/ContinuousBurstUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/ContinuousBurstUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/ContinuousBurstUI;)Lcom/android/camera/component/ContinuousBurstController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    return-object v0
.end method

.method private canUseContinuousBurst()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 89
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v2

    sget-object v4, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-eq v2, v4, :cond_0

    move v2, v3

    .line 105
    :goto_0
    return v2

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-eq v2, v4, :cond_1

    move v2, v3

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Duration;

    invoke-virtual {v2}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    move v2, v3

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/effect/NoneEffect;

    if-nez v2, :cond_4

    move v2, v3

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 100
    .local v1, scene:Lcom/android/camera/effect/EffectBase;
    if-eqz v1, :cond_5

    instance-of v2, v1, Lcom/android/camera/effect/AutoScene;

    if-nez v2, :cond_5

    instance-of v2, v1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-nez v2, :cond_5

    instance-of v2, v1, Lcom/android/camera/sina/GifModeScene;

    if-nez v2, :cond_5

    move v2, v3

    .line 104
    goto :goto_0

    .line 105
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    if-eqz v0, :cond_0

    .line 490
    :goto_0
    return v6

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "Continuous Burst Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/ContinuousBurstController;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    .line 487
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    if-eqz v0, :cond_1

    .line 488
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    const/16 v2, 0x2715

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isContinuousBurstLimited:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v3, 0x14

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    if-eqz v0, :cond_2

    move v4, v6

    :cond_2
    move v6, v4

    goto :goto_0

    .line 488
    :cond_3
    sget v3, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_1
.end method

.method private onCaptureButtonLongPressed()V
    .locals 4

    .prologue
    .line 499
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->isEntered:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureButtonLongPressed() - Not entered"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_0
    return-void

    .line 504
    :cond_0
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 506
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureButtonLongPressed() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v1, :cond_2

    .line 516
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureButtonLongPressed() - currentScene == SmartSceneDetectorScene"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x3

    .line 537
    .local v0, burstMode:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureButtonLongPressed() - Set burst mode to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstUI;->updateBurstMode(I)V

    goto :goto_0

    .line 521
    .end local v0           #burstMode:I
    :cond_2
    sget-object v2, Lcom/android/camera/component/ContinuousBurstUI$7;->$SwitchMap$com$android$camera$AutoDetectedScene:[I

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1}, Lcom/android/camera/AutoDetectedScene;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 533
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureButtonLongPressed() - Unsupported scene : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 524
    :pswitch_0
    const/4 v0, 0x1

    .line 525
    .restart local v0       #burstMode:I
    goto :goto_1

    .line 527
    .end local v0           #burstMode:I
    :pswitch_1
    const/4 v0, 0x2

    .line 528
    .restart local v0       #burstMode:I
    goto :goto_1

    .line 530
    .end local v0           #burstMode:I
    :pswitch_2
    const/4 v0, 0x3

    .line 531
    .restart local v0       #burstMode:I
    goto :goto_1

    .line 541
    .end local v0           #burstMode:I
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureButtonLongPressed() - No controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPhotoSaveStarted(Lcom/android/camera/CaptureHandle;I)V
    .locals 3
    .parameter "captureHandle"
    .parameter "photoCount"

    .prologue
    .line 550
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 553
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    .line 556
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->disableActionScreen()V

    .line 559
    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    .line 560
    .local v0, dialogManager:Lcom/android/camera/IProcessingDialogManager;
    if-eqz v0, :cond_0

    .line 561
    const v1, 0x7f0a004e

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->showProcessingDialog(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    .line 564
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 586
    .end local v0           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :goto_1
    iput p2, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I

    .line 587
    return-void

    .line 563
    .restart local v0       #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPhotoSaveStarted() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 569
    .end local v0           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    .line 572
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    if-eqz v1, :cond_2

    .line 574
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPhotoSaveStarted() - hide WDR processing UI."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    .line 576
    .restart local v0       #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    if-eqz v0, :cond_3

    .line 577
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->closeProcessingDialog(Lcom/android/camera/Handle;)V

    .line 580
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    .line 584
    .end local v0           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/HTCCamera;->completeTakingPicture(Lcom/android/camera/CaptureHandle;)V

    goto :goto_1

    .line 579
    .restart local v0       #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPhotoSaveStarted() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onPhotoSaveStopped(Lcom/android/camera/CaptureHandle;ILjava/lang/String;Lcom/android/camera/io/Path;)V
    .locals 8
    .parameter "captureHandle"
    .parameter "photoCount"
    .parameter "BucketID"
    .parameter "filePath"

    .prologue
    const/4 v7, 0x1

    .line 595
    iget v4, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I

    if-eq v4, p2, :cond_0

    .line 596
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPhotoSaveStopped() - Expected photo count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", actual photo count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_0
    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    if-eqz v4, :cond_1

    .line 601
    const-class v4, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v4}, Lcom/android/camera/component/ContinuousBurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IProcessingDialogManager;

    .line 602
    .local v1, dialogManager:Lcom/android/camera/IProcessingDialogManager;
    if-eqz v1, :cond_4

    .line 603
    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v4}, Lcom/android/camera/IProcessingDialogManager;->closeProcessingDialog(Lcom/android/camera/Handle;)V

    .line 606
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    .line 610
    .end local v1           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_1
    iget v4, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I

    if-le v4, v7, :cond_3

    .line 613
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    .line 615
    new-instance v3, Lcom/android/camera/MediaInfo;

    invoke-direct {v3}, Lcom/android/camera/MediaInfo;-><init>()V

    .line 616
    .local v3, mediaInfo:Lcom/android/camera/MediaInfo;
    sget-object v4, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v4, v4, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 617
    iput-object p4, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 620
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 621
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstAutoReview:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    if-le p2, v7, :cond_2

    .line 627
    if-eqz p4, :cond_5

    .line 629
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "key_bucket_id"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/HTCCamera;->startAlbum(Landroid/content/Intent;Lcom/android/camera/MediaInfo;)Z

    .line 638
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/camera/HTCCamera;->completeTakingPicture(Lcom/android/camera/CaptureHandle;)V

    .line 641
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableActionScreen()V

    .line 643
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v3           #mediaInfo:Lcom/android/camera/MediaInfo;
    :cond_3
    return-void

    .line 605
    .restart local v1       #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_4
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "onPhotoSaveStopped() - No IProcessingDialogManager interface"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    .end local v1           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    .restart local v0       #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v3       #mediaInfo:Lcom/android/camera/MediaInfo;
    :cond_5
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "onPhotoSaveStopped() - No file path to start auto-review"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showWdrProcessingDialog()Lcom/android/camera/Handle;
    .locals 4

    .prologue
    .line 650
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "showWdrProcessingDialog()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const/4 v1, 0x0

    .line 654
    .local v1, handle:Lcom/android/camera/Handle;
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_AutoSceneController:Lcom/android/camera/IAutoSceneController;

    if-eqz v2, :cond_2

    .line 656
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_AutoSceneController:Lcom/android/camera/IAutoSceneController;

    iget-object v2, v2, Lcom/android/camera/IAutoSceneController;->isWdrScene:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "showWdrProcessingDialog() - isWdrScene is true, show processing UI."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-class v2, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ContinuousBurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    .line 660
    .local v0, dialogManager:Lcom/android/camera/IProcessingDialogManager;
    if-eqz v0, :cond_1

    .line 661
    const v2, 0x7f0a004d

    invoke-virtual {v0, v2}, Lcom/android/camera/IProcessingDialogManager;->showProcessingDialog(I)Lcom/android/camera/Handle;

    move-result-object v1

    .line 669
    .end local v0           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_0
    :goto_0
    return-object v1

    .line 663
    .restart local v0       #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "showWdrProcessingDialog() - No IProcessingDialogManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 667
    .end local v0           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "showWdrProcessingDialog() - Cannot find IAutoSceneController interface."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateBurstMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v6, 0x1

    .line 677
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_BurstMode:I

    .line 680
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_IsShutterReceived:Z

    if-eqz v0, :cond_0

    .line 682
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_BurstMode:I

    if-ne v0, v6, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    if-nez v0, :cond_1

    .line 685
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->showWdrProcessingDialog()Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    .line 692
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    const/16 v2, 0x2714

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 696
    :goto_1
    return-void

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateBurstMode() - WDR processing is already shown."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateBurstMode() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public canCapture()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_CanCapture:Z

    return v0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    .line 118
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 121
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 122
    return-void
.end method

.method public enter()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Enter"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->isEntered:Lcom/android/camera/property/Property;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 137
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableSelfTimer()V

    .line 140
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    const/16 v2, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot link to controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Exit"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->isEntered:Lcom/android/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 156
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_CanCapture:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 160
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableSelfTimer()V

    .line 163
    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->removeMessages(I)V

    .line 166
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    const/16 v2, 0x2711

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "No controller to notify"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 178
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 216
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 181
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->onCaptureButtonLongPressed()V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/CaptureHandle;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/ContinuousBurstUI;->onPhotoSaveStarted(Lcom/android/camera/CaptureHandle;I)V

    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 191
    .local v0, array:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/android/camera/CaptureHandle;

    iget v4, p1, Landroid/os/Message;->arg1:I

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Lcom/android/camera/io/Path;

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/camera/component/ContinuousBurstUI;->onPhotoSaveStopped(Lcom/android/camera/CaptureHandle;ILjava/lang/String;Lcom/android/camera/io/Path;)V

    goto :goto_0

    .line 197
    .end local v0           #array:[Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "MSG_ON_SHUTTER_CALLBACK - Receive shutter callback but not taking picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_IsShutterReceived:Z

    .line 206
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_BurstMode:I

    if-ne v1, v3, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    if-nez v1, :cond_2

    .line 209
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->showWdrProcessingDialog()Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "MSG_ON_SHUTTER_CALLBACK - WDR processing is already shown."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    const/16 v3, 0x1f4

    const/4 v5, 0x1

    .line 228
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 231
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_continuous_burst_long_press_timeout"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    .line 232
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    if-gez v1, :cond_0

    .line 233
    iput v3, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 237
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstUI$1;-><init>(Lcom/android/camera/component/ContinuousBurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 310
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstUI$2;-><init>(Lcom/android/camera/component/ContinuousBurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 349
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isContinuousBurstLimited:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstUI$3;-><init>(Lcom/android/camera/component/ContinuousBurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 358
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUI$4;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/ContinuousBurstUI$4;-><init>(Lcom/android/camera/component/ContinuousBurstUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstUI$5;-><init>(Lcom/android/camera/component/ContinuousBurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 463
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUI$6;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/ContinuousBurstUI$6;-><init>(Lcom/android/camera/component/ContinuousBurstUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const-class v1, Lcom/android/camera/IAutoSceneController;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IAutoSceneController;

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_AutoSceneController:Lcom/android/camera/IAutoSceneController;

    .line 475
    return-void
.end method
