.class public Lcom/android/camera/component/HandShakeUI;
.super Lcom/android/camera/component/UIComponent;
.source "HandShakeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/HandShakeUI$13;
    }
.end annotation


# static fields
.field private static final HANDSHAKE_THRESHOLD:F = 0.2f

.field private static final MSG_LOWLIGHT_CHANGED:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Handshake UI"


# instance fields
.field private m_AccelerometerValues:[F

.field private m_HandShakeStableTime:I

.field private m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_NeedDetect:Z

.field private m_canShow:Z

.field private m_captureBarHeight:I

.field private m_effectBarHeight:I

.field private m_marginButtom:I

.field private m_marginRight:I

.field private m_menuIsOpen:Z

.field private m_remainIsShowing:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    const-string v0, "Handshake UI"

    const v1, 0x7f080051

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 39
    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeStableTime:I

    .line 40
    iput-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    .line 41
    iput-boolean v3, p0, Lcom/android/camera/component/HandShakeUI;->m_canShow:Z

    .line 42
    iput-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_menuIsOpen:Z

    .line 43
    iput-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_remainIsShowing:Z

    .line 59
    iget-object v0, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/component/HandShakeUI$1;

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/HandShakeUI$1;-><init>(Lcom/android/camera/component/HandShakeUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method private HideDisable()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_canShow:Z

    .line 383
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    .line 384
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/component/HandShakeUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/camera/component/HandShakeUI;->m_menuIsOpen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->HideDisable()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->checkCanShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->stopDetection()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/component/HandShakeUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/camera/component/HandShakeUI;->m_remainIsShowing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/component/HandShakeUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/HandShakeUI;[F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/component/HandShakeUI;->onAccelerometerValuesChanged([F)V

    return-void
.end method

.method private checkCanShow()V
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_menuIsOpen:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_remainIsShowing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->HideDisable()V

    goto :goto_0

    .line 379
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_canShow:Z

    goto :goto_0
.end method

.method private hideHandshake()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/HandShakeUI;->showUI(Landroid/view/View;ZZ)V

    .line 349
    :cond_0
    return-void
.end method

.method private onAccelerometerValuesChanged([F)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 119
    iget-object v2, p0, Lcom/android/camera/component/HandShakeUI;->m_AccelerometerValues:[F

    if-nez v2, :cond_0

    .line 121
    iput-object p1, p0, Lcom/android/camera/component/HandShakeUI;->m_AccelerometerValues:[F

    .line 158
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 126
    .local v0, IsChanged:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/camera/component/HandShakeUI;->m_AccelerometerValues:[F

    aget v2, v2, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3e4ccccd

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 128
    const/4 v0, 0x1

    .line 132
    :cond_1
    if-eqz v0, :cond_6

    .line 133
    iget-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    if-eqz v2, :cond_2

    .line 135
    if-eqz v0, :cond_5

    .line 136
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->showHandshake()V

    .line 140
    :cond_2
    :goto_2
    iput v4, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeStableTime:I

    .line 157
    :cond_3
    :goto_3
    iput-object p1, p0, Lcom/android/camera/component/HandShakeUI;->m_AccelerometerValues:[F

    goto :goto_0

    .line 126
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    goto :goto_2

    .line 144
    :cond_6
    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeStableTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeStableTime:I

    .line 145
    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeStableTime:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_3

    .line 146
    iget-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    if-eqz v2, :cond_7

    .line 148
    if-eqz v0, :cond_8

    .line 149
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->showHandshake()V

    .line 153
    :cond_7
    :goto_4
    iput v4, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeStableTime:I

    goto :goto_3

    .line 151
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    goto :goto_4
.end method

.method private onLowlightChanged(Z)V
    .locals 0
    .parameter "isLowlight"

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->startDetection()V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->stopDetection()V

    .line 170
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 180
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 183
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HandShakeUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$2;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 195
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/HandShakeUI$3;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/HandShakeUI$3;-><init>(Lcom/android/camera/component/HandShakeUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/HandShakeUI$4;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/HandShakeUI$4;-><init>(Lcom/android/camera/component/HandShakeUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HandShakeUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$5;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 224
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HandShakeUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$6;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 232
    return-void
.end method

.method private setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V
    .locals 5
    .parameter "layout"

    .prologue
    const/16 v4, 0xb

    .line 389
    if-eqz p1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 391
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 394
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_captureBarHeight:I

    .line 395
    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_captureBarHeight:I

    const v3, 0x2050002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    .line 396
    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginRight:I

    .line 397
    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_effectBarHeight:I

    .line 399
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 401
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 402
    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 403
    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginRight:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 413
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 406
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1       #res:Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 407
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 408
    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 409
    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginRight:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 5

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 244
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->accelerometerValues:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/HandShakeUI$7;

    invoke-direct {v4, p0}, Lcom/android/camera/component/HandShakeUI$7;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 254
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/HandShakeUI$8;

    invoke-direct {v4, p0}, Lcom/android/camera/component/HandShakeUI$8;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 271
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/HandShakeUI$9;

    invoke-direct {v4, p0}, Lcom/android/camera/component/HandShakeUI$9;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 294
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    new-instance v3, Lcom/android/camera/component/HandShakeUI$10;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/component/HandShakeUI$10;-><init>(Lcom/android/camera/component/HandShakeUI;Lcom/android/camera/CameraThread;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 311
    new-instance v2, Lcom/android/camera/component/HandShakeUI$11;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$11;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    .line 318
    .local v2, modeChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 319
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 322
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/HandShakeUI$12;

    invoke-direct {v4, p0}, Lcom/android/camera/component/HandShakeUI$12;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 332
    return-void
.end method

.method private showHandshake()V
    .locals 3

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_canShow:Z

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/component/HandShakeUI;->showUI(Landroid/view/View;ZZ)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    goto :goto_0
.end method

.method private startDetection()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    .line 355
    return-void
.end method

.method private stopDetection()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    .line 361
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    .line 362
    return-void
.end method

.method private updateLayoutPosition(Z)V
    .locals 3
    .parameter "effectIsShown"

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 423
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    if-eqz p1, :cond_1

    .line 425
    iget v1, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_effectBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 436
    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 438
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 427
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget v1, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 430
    :cond_2
    if-eqz p1, :cond_3

    .line 431
    iget v1, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_effectBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 433
    :cond_3
    iget v1, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 112
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/HandShakeUI;->onLowlightChanged(Z)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, baseLayout:Landroid/view/View;
    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 84
    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, v1}, Lcom/android/camera/component/HandShakeUI;->setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V

    .line 87
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->registerListeners()V

    .line 90
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->setupPropertyChangedCallbacks()V

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->isLowlight:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/HandShakeUI;->onLowlightChanged(Z)V

    .line 94
    return-void
.end method
