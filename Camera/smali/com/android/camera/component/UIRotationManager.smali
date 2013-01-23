.class final Lcom/android/camera/component/UIRotationManager;
.super Lcom/android/camera/IUIRotationManager;
.source "UIRotationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/UIRotationManager$LockHandle;
    }
.end annotation


# static fields
.field private static final MIN_ROTATION_CHANGE_INTERVAL:J = 0x258L

.field private static final MSG_EXIT_SHAKE_PREVENTION:I = 0x2711

.field static final NAME:Ljava/lang/String; = "UI Rotation Manager"

.field private static final SHAKE_PREVENTION_INTERVAL:J = 0x12cL

.field private static final SHAKE_PREVENTION_THRESHOLD:I = 0x5


# instance fields
.field private m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

.field private m_IsFirstOrientationChange:Z

.field private m_IsShakePreventionEntered:Z

.field private m_LastDeviceOrientation:I

.field private m_LastRotationChangeTime:J

.field private final m_LockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/component/UIRotationManager$LockHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_OrientationDropCounter:I

.field private final m_OrientationListener:Landroid/view/OrientationEventListener;

.field private m_ShakePreventionCounter:I

.field private m_SharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

.field private final m_StartOrientationListenerRunnable:Ljava/lang/Runnable;

.field private final m_StopOrientationListenerRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    const/4 v3, 0x4

    .line 102
    const-string v0, "UI Rotation Manager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/IUIRotationManager;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    .line 57
    new-instance v0, Lcom/android/camera/component/UIRotationManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/UIRotationManager$1;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_StartOrientationListenerRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lcom/android/camera/component/UIRotationManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/UIRotationManager$2;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_StopOrientationListenerRunnable:Ljava/lang/Runnable;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    .line 105
    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v3}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v3}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 109
    new-instance v0, Lcom/android/camera/component/UIRotationManager$3;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/component/UIRotationManager$3;-><init>(Lcom/android/camera/component/UIRotationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    .line 119
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->disableFakeUIRotation()V

    .line 120
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->disableUIRotationChangeNotification()V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/UIRotationManager;)Landroid/view/OrientationEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/UIRotationManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/UIRotationManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/UIRotationManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/component/UIRotationManager;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/rotate/UIRotation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/UIRotationManager;->updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/component/UIRotationManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/component/UIRotationManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->stopOrientationListener()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/UIRotationManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->startOrientationListener()V

    return-void
.end method

.method private enterShakePrevention()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 128
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterShakePrevention()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterShakePrevention() - Orientation listener is not started"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 138
    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    .line 141
    const/16 v2, 0x2711

    const-wide/16 v3, 0x12c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/UIRotationManager;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    goto :goto_0
.end method

.method private exitShakePrevention()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "exitShakePrevention()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-boolean v1, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    .line 157
    iput v3, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    .line 160
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/component/UIRotationManager;->removeMessages(I)V

    .line 163
    iget-object v1, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    .line 166
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    .line 167
    invoke-direct {p0, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method private onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    .line 430
    iget v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    if-lez v2, :cond_1

    .line 432
    iget v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/android/camera/IUIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 438
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 440
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onOrientationChanged() - Unknown orientation"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_2
    iput p1, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    .line 446
    iget-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    .line 447
    .local v0, currentRotation:Lcom/android/camera/rotate/UIRotation;
    :goto_1
    invoke-static {v0, p1}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;I)Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    .line 450
    .local v1, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 451
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 454
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    .line 457
    iget-object v2, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    invoke-direct {p0, v1}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 446
    .end local v0           #currentRotation:Lcom/android/camera/rotate/UIRotation;
    .end local v1           #rotation:Lcom/android/camera/rotate/UIRotation;
    :cond_4
    iget-object v2, p0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    move-object v0, v2

    goto :goto_1
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V

    .line 470
    return-void

    .line 469
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 11
    .parameter "rotation"
    .parameter "updateCaptureRotation"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 474
    iget-object v5, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    if-ne v5, p1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 480
    .local v0, currentTime:J
    iget-wide v5, p0, Lcom/android/camera/component/UIRotationManager;->m_LastRotationChangeTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x258

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    move v2, v3

    .line 481
    .local v2, isShaking:Z
    :goto_1
    iput-wide v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastRotationChangeTime:J

    .line 482
    if-eqz v2, :cond_4

    .line 484
    iget v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    if-ge v4, v9, :cond_2

    .line 485
    iget v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    .line 486
    :cond_2
    iget v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    if-lt v4, v9, :cond_6

    .line 488
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->enterShakePrevention()V

    goto :goto_0

    .end local v2           #isShaking:Z
    :cond_3
    move v2, v4

    .line 480
    goto :goto_1

    .line 492
    .restart local v2       #isShaking:Z
    :cond_4
    iget-boolean v5, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    if-eqz v5, :cond_5

    .line 494
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onRotationChanged() - Shake prevention"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_5
    iput v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    .line 501
    :cond_6
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v4, v10}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 503
    iget-object v4, p0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    sget-object v5, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 504
    iget-object v4, p0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v4, v5, v10}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 508
    :cond_7
    iget-object v4, p0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v4, v5, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    if-eqz p2, :cond_8

    .line 512
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 515
    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    invoke-direct {p0, p1, v3}, Lcom/android/camera/component/UIRotationManager;->updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V

    goto :goto_0
.end method

.method private startOrientationListener()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 524
    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startOrientationListener()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager;->m_StartOrientationListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    .line 533
    :goto_0
    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 535
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    .line 536
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    .line 538
    :cond_1
    return-void

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_StartOrientationListenerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private stopOrientationListener()V
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopOrientationListener()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager;->m_StopOrientationListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    .line 554
    :goto_0
    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 556
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->exitShakePrevention()V

    .line 558
    :cond_1
    return-void

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_StopOrientationListenerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 4
    .parameter "rotation"
    .parameter "enabled"

    .prologue
    .line 613
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

    iget v3, p1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 617
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 618
    return-void
.end method


# virtual methods
.method public getAvailableDeviceOrientation()I
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 178
    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 195
    invoke-super {p0, p1}, Lcom/android/camera/IUIRotationManager;->handleMessage(Landroid/os/Message;)V

    .line 198
    :goto_0
    return-void

    .line 191
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->exitShakePrevention()V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 207
    invoke-super {p0}, Lcom/android/camera/IUIRotationManager;->initializeOverride()V

    .line 210
    const-class v5, Lcom/android/camera/ISharedBackgroundWorker;

    invoke-virtual {p0, v5}, Lcom/android/camera/component/UIRotationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ISharedBackgroundWorker;

    iput-object v5, p0, Lcom/android/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    .line 211
    const-class v5, Lcom/android/camera/IViewFinder;

    invoke-virtual {p0, v5}, Lcom/android/camera/component/UIRotationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IViewFinder;

    .line 214
    .local v3, viewFinder:Lcom/android/camera/IViewFinder;
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 215
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->popupOpeningEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$4;

    invoke-direct {v6, p0}, Lcom/android/camera/component/UIRotationManager$4;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 226
    :cond_0
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$5;

    invoke-direct {v6, p0}, Lcom/android/camera/component/UIRotationManager$5;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 236
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$6;

    invoke-direct {v6, p0}, Lcom/android/camera/component/UIRotationManager$6;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 258
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$7;

    invoke-direct {v6, p0}, Lcom/android/camera/component/UIRotationManager$7;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 283
    if-eqz v3, :cond_3

    .line 285
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$8;

    iget-object v7, v3, Lcom/android/camera/IViewFinder;->isPreviewSurfaceCreated:Lcom/android/camera/property/Property;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$8;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :goto_0
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$9;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$9;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    const-class v5, Lcom/android/camera/effect/IEffectControlUI;

    invoke-virtual {p0, v5}, Lcom/android/camera/component/UIRotationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/IEffectControlUI;

    .line 314
    .local v2, effectControlUI:Lcom/android/camera/effect/IEffectControlUI;
    const-class v5, Lcom/android/camera/IZoomBar;

    invoke-virtual {p0, v5}, Lcom/android/camera/component/UIRotationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/IZoomBar;

    .line 315
    .local v4, zoomBar:Lcom/android/camera/IZoomBar;
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$10;

    invoke-direct {v6, p0}, Lcom/android/camera/component/UIRotationManager$10;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 325
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->flashButtonClickedEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$11;

    invoke-direct {v6, p0}, Lcom/android/camera/component/UIRotationManager$11;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 333
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$12;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$12;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$13;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$13;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$14;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$14;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$15;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$15;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$16;

    iget-object v7, p0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$16;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v0, Lcom/android/camera/component/UIRotationManager$17;

    invoke-direct {v0, p0}, Lcom/android/camera/component/UIRotationManager$17;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    .line 381
    .local v0, barTrackingStartedHandler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/event/EventArgs;>;"
    if-eqz v2, :cond_1

    .line 382
    iget-object v5, v2, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarTrackingStartedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v5, v0}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 383
    :cond_1
    if-eqz v4, :cond_2

    .line 384
    iget-object v5, v4, Lcom/android/camera/IZoomBar;->zoomBarTrackingStartedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v5, v0}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 388
    .end local v0           #barTrackingStartedHandler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/event/EventArgs;>;"
    .end local v2           #effectControlUI:Lcom/android/camera/effect/IEffectControlUI;
    .end local v4           #zoomBar:Lcom/android/camera/IZoomBar;
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->startOrientationListener()V

    .line 389
    return-void

    .line 300
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "initializeOverride() - No IViewFinder interface"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;
    .locals 8
    .parameter "name"
    .parameter "rotation"

    .prologue
    const/4 v7, 0x1

    .line 397
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation(\'"

    const-string v3, "\', "

    const-string v5, ")"

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->threadAccessCheck()V

    .line 401
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v6, 0x0

    .line 421
    :cond_0
    :goto_0
    return-object v6

    .line 408
    :cond_1
    new-instance v6, Lcom/android/camera/component/UIRotationManager$LockHandle;

    invoke-direct {v6, p1}, Lcom/android/camera/component/UIRotationManager$LockHandle;-><init>(Ljava/lang/String;)V

    .line 409
    .local v6, handle:Lcom/android/camera/component/UIRotationManager$LockHandle;
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - New handle : \'"

    const-string v3, "\' ["

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 417
    if-eqz p2, :cond_2

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V

    .line 419
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method public unlockRotation(Lcom/android/camera/Handle;)V
    .locals 6
    .parameter "handle"

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->threadAccessCheck()V

    .line 568
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    if-nez p1, :cond_2

    .line 575
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_2
    instance-of v0, p1, Lcom/android/camera/component/UIRotationManager$LockHandle;

    if-nez v0, :cond_3

    .line 580
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation(\'"

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "])"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 587
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 589
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 596
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 598
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 602
    :cond_5
    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 603
    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    invoke-static {v0}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(I)Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto/16 :goto_0
.end method
