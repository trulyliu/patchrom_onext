.class final Lcom/android/camera/component/BubbleToastManager;
.super Lcom/android/camera/IBubbleToastManager;
.source "BubbleToastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/BubbleToastManager$8;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "Bubble Toast Manager"


# instance fields
.field private m_BubbleToast:Landroid/widget/RelativeLayout;

.field private m_BubbleToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_CurrentHandle:Lcom/android/camera/Handle;

.field private m_ToastPaddingLeft:I

.field private m_ToastPaddingRight:I

.field private m_ZoomBar:Lcom/android/camera/IZoomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "cameraActivity"

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v0, "Bubble Toast Manager"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/android/camera/IBubbleToastManager;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/BubbleToastManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/component/BubbleToastManager;->showBubbleToast()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/BubbleToastManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/component/BubbleToastManager;->hideBubbleToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/BubbleToastManager;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/BubbleToastManager;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/component/BubbleToastManager;->updateBubbleToastRotation(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/BubbleToastManager;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private canShowBubbleToast()Z
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/component/BubbleToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 61
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideBubbleToast()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 103
    :cond_0
    return-void
.end method

.method private setupBubbleToastSize()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 249
    iget-object v7, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    if-nez v7, :cond_0

    .line 273
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/BubbleToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    iget-object v7, v7, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v7}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v7}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v2

    .line 255
    .local v2, isLandscape:Z
    if-eqz v2, :cond_1

    .line 256
    const v7, 0x7f0b0050

    invoke-virtual {p0, v7}, Lcom/android/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v5

    .line 261
    .local v5, maxToastWidth:I
    :goto_1
    iget v7, p0, Lcom/android/camera/component/BubbleToastManager;->m_ToastPaddingLeft:I

    sub-int v7, v5, v7

    iget v8, p0, Lcom/android/camera/component/BubbleToastManager;->m_ToastPaddingRight:I

    sub-int v4, v7, v8

    .line 264
    .local v4, maxContentWidth:I
    iget-object v7, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, content:Landroid/view/View;
    invoke-virtual {v0, v9, v9}, Landroid/view/View;->measure(II)V

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 269
    .local v1, contentWidth:I
    if-lt v1, v4, :cond_4

    move v6, v5

    .line 270
    .local v6, toastWidth:I
    :goto_2
    iget-object v7, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 271
    .local v3, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 272
    iget-object v7, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto :goto_0

    .line 257
    .end local v0           #content:Landroid/view/View;
    .end local v1           #contentWidth:I
    .end local v3           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4           #maxContentWidth:I
    .end local v5           #maxToastWidth:I
    .end local v6           #toastWidth:I
    :cond_1
    iget-object v7, p0, Lcom/android/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/android/camera/IZoomBar;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/android/camera/IZoomBar;

    iget-object v7, v7, Lcom/android/camera/IZoomBar;->zoomBarState:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v7, v8}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 258
    :cond_2
    const v7, 0x7f0b004e

    invoke-virtual {p0, v7}, Lcom/android/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v5

    .restart local v5       #maxToastWidth:I
    goto :goto_1

    .line 260
    .end local v5           #maxToastWidth:I
    :cond_3
    const v7, 0x7f0b004f

    invoke-virtual {p0, v7}, Lcom/android/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v5

    .restart local v5       #maxToastWidth:I
    goto :goto_1

    .line 269
    .restart local v0       #content:Landroid/view/View;
    .restart local v1       #contentWidth:I
    .restart local v4       #maxContentWidth:I
    :cond_4
    iget v7, p0, Lcom/android/camera/component/BubbleToastManager;->m_ToastPaddingLeft:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/android/camera/component/BubbleToastManager;->m_ToastPaddingRight:I

    add-int v6, v7, v8

    goto :goto_2
.end method

.method private showBubbleToast()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 337
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/BubbleToastManager;->canShowBubbleToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/camera/component/BubbleToastManager;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/BubbleToastManager;->updateBubbleToastRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/16 v3, 0x190

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    .line 341
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 343
    :cond_0
    return-void
.end method

.method private updateBubbleToastRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 7
    .parameter "rotation"

    .prologue
    const/4 v4, 0x0

    .line 351
    iget-object v5, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v5, :cond_0

    .line 392
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v5, p0, Lcom/android/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/android/camera/IZoomBar;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/android/camera/IZoomBar;

    iget-object v5, v5, Lcom/android/camera/IZoomBar;->zoomBarState:Lcom/android/camera/property/Property;

    sget-object v6, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 357
    .local v1, isZoomBarClosed:Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_4

    .line 359
    :cond_2
    const v5, 0x7f0b0049

    invoke-virtual {p0, v5}, Lcom/android/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v3

    .line 360
    .local v3, topMargin:I
    const v5, 0x7f0b004c

    invoke-virtual {p0, v5}, Lcom/android/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v0

    .line 369
    .local v0, bottomMargin:I
    :goto_2
    iget-object v5, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 370
    .local v2, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 371
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 372
    iget-object v5, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 373
    iget-object v5, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v5, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 376
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 377
    .restart local v2       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 378
    sget-object v4, Lcom/android/camera/component/BubbleToastManager$8;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 385
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 388
    :goto_3
    iget-object v4, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    invoke-direct {p0}, Lcom/android/camera/component/BubbleToastManager;->setupBubbleToastSize()V

    goto :goto_0

    .end local v0           #bottomMargin:I
    .end local v1           #isZoomBarClosed:Z
    .end local v2           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #topMargin:I
    :cond_3
    move v1, v4

    .line 355
    goto :goto_1

    .line 364
    .restart local v1       #isZoomBarClosed:Z
    :cond_4
    const v5, 0x7f0b004a

    invoke-virtual {p0, v5}, Lcom/android/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v3

    .line 365
    .restart local v3       #topMargin:I
    const v5, 0x7f0b004d

    invoke-virtual {p0, v5}, Lcom/android/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v0

    .restart local v0       #bottomMargin:I
    goto :goto_2

    .line 382
    .restart local v2       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public closeBubbleToast(Lcom/android/camera/Handle;)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/camera/component/BubbleToastManager;->threadAccessCheck()V

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/component/BubbleToastManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "closeBubbleToast() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "closeBubbleToast() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/android/camera/Handle;

    if-ne v0, p1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/camera/component/BubbleToastManager;->hideBubbleToast()V

    .line 88
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 90
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/android/camera/Handle;

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/camera/IBubbleToastManager;->initializeOverride()V

    .line 115
    const-class v1, Lcom/android/camera/IZoomBar;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/BubbleToastManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IZoomBar;

    iput-object v1, p0, Lcom/android/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/android/camera/IZoomBar;

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/component/BubbleToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 119
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->activatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BubbleToastManager$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BubbleToastManager$1;-><init>(Lcom/android/camera/component/BubbleToastManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 127
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BubbleToastManager$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BubbleToastManager$2;-><init>(Lcom/android/camera/component/BubbleToastManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 137
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/BubbleToastManager$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BubbleToastManager$3;-><init>(Lcom/android/camera/component/BubbleToastManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 148
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/BubbleToastManager$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BubbleToastManager$4;-><init>(Lcom/android/camera/component/BubbleToastManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 159
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/BubbleToastManager$5;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/BubbleToastManager$5;-><init>(Lcom/android/camera/component/BubbleToastManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/android/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/android/camera/IZoomBar;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/android/camera/IZoomBar;

    iget-object v1, v1, Lcom/android/camera/IZoomBar;->zoomBarState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/BubbleToastManager$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BubbleToastManager$6;-><init>(Lcom/android/camera/component/BubbleToastManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride() - No IZoomBar interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "fakeRotation"
    .parameter "uiRotation"

    .prologue
    .line 189
    invoke-virtual {p0, p2, p1}, Lcom/android/camera/component/BubbleToastManager;->onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 190
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "fakeRotation"
    .parameter "uiRotation"

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/component/BubbleToastManager;->onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 199
    return-void
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 3
    .parameter "prevRotation"
    .parameter "rotation"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/android/camera/Handle;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 212
    .local v0, animator:Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 213
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 214
    new-instance v1, Lcom/android/camera/component/BubbleToastManager$7;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/component/BubbleToastManager$7;-><init>(Lcom/android/camera/component/BubbleToastManager;Lcom/android/camera/rotate/UIRotation;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 236
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 241
    .end local v0           #animator:Landroid/view/ViewPropertyAnimator;
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/component/BubbleToastManager;->updateBubbleToastRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method public showBubbleToast(Landroid/view/View;)Lcom/android/camera/Handle;
    .locals 7
    .parameter "content"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 281
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "showBubbleToast()"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/camera/component/BubbleToastManager;->threadAccessCheck()V

    .line 287
    invoke-virtual {p0}, Lcom/android/camera/component/BubbleToastManager;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 289
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "showBubbleToast() - Component is not running"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-object v3

    .line 294
    :cond_0
    if-nez p1, :cond_1

    .line 296
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "showBubbleToast() - No content specified"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/BubbleToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 302
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_3

    .line 304
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "showBubbleToast() - Initialize UI"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f08004e

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 306
    .local v2, viewStub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 307
    iget-object v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f080012

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    .line 308
    iget-object v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f0b0048

    invoke-virtual {p0, v4}, Lcom/android/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v4

    const v5, 0x7f0b004b

    invoke-virtual {p0, v5}, Lcom/android/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v5

    invoke-static {v3, v4, v6, v5, v6}, Lcom/android/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    .line 314
    const v3, 0x7f0b0051

    invoke-virtual {p0, v3}, Lcom/android/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_ToastPaddingLeft:I

    .line 315
    const v3, 0x7f0b0053

    invoke-virtual {p0, v3}, Lcom/android/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_ToastPaddingRight:I

    .line 324
    .end local v2           #viewStub:Landroid/view/ViewStub;
    :cond_2
    :goto_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 325
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    new-instance v3, Lcom/android/camera/SessionHandle;

    const-string v4, "BubbleToast"

    invoke-direct {v3, v4}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/android/camera/Handle;

    .line 329
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "showBubbleToast() - Handle : "

    iget-object v5, p0, Lcom/android/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/android/camera/Handle;

    invoke-static {v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    invoke-direct {p0}, Lcom/android/camera/component/BubbleToastManager;->showBubbleToast()V

    .line 333
    iget-object v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/android/camera/Handle;

    goto/16 :goto_0

    .line 317
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 319
    iget-object v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 320
    iget-object v3, p0, Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->clearAnimation()V

    goto :goto_1
.end method
