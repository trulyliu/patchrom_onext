.class public final Lcom/android/camera/component/CaptureBar;
.super Lcom/android/camera/component/UIComponent;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/CaptureBar$21;
    }
.end annotation


# static fields
.field private static final CAPTURE_BUTTON_TYPE_HW:I = 0x2

.field private static final CAPTURE_BUTTON_TYPE_SW:I = 0x1

.field private static final CAPTURE_BUTTON_TYPE_UNKNOWN:I = 0x0

.field private static final MSG_RELEASE_PRESSED_BUTTON:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Capture Bar"

.field private static final SLOW_MOTION_RATIO:F = 4.0f

.field private static final TAKING_PICTURE_TRIGGER_SOURCE:Ljava/lang/String; = "Press Camera Button"


# instance fields
.field private final isPhotoButtonPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isVideoButtonClicked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isVideoButtonPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_ActiveCaptureButtonType:I

.field private m_AecLockHandle:Lcom/android/camera/Handle;

.field private m_AwbLockHandle:Lcom/android/camera/Handle;

.field private m_CaptureBar:Landroid/view/View;

.field private m_FocusLockHandle:Lcom/android/camera/Handle;

.field private m_IsPopupOutsideTouched:Z

.field private m_IsTakingPicture:Z

.field private m_PhotoCaptureButton:Landroid/widget/ImageView;

.field private m_PopupOutsideTouchedView:Landroid/view/View;

.field private final m_RecordingButtonIcons:[Landroid/graphics/drawable/Drawable;

.field private m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_RecordingTimerEmptyArea:Landroid/view/View;

.field private m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

.field private m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

.field private m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_SelfTimerIcon:Landroid/widget/ImageView;

.field private m_SelfTimerIndicator:Landroid/widget/ImageView;

.field private m_SelfTimerIndicatorContainer:Landroid/view/View;

.field private m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

.field private m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

.field private m_SlowMotionIcon:Landroid/widget/ImageView;

.field private m_SlowMotionIndicator:Landroid/view/View;

.field private m_SlowMotionIndicatorContainer:Landroid/view/View;

.field private m_VideoCaptureButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6
    .parameter "cameraActivity"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 107
    const-string v1, "Capture Bar"

    invoke-direct {p0, v1, v5, p1, v3}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 74
    iput v3, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 81
    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIcons:[Landroid/graphics/drawable/Drawable;

    .line 110
    const-string v1, "CaptureBar.IsPhotoButtonPressed"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v4, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    .line 111
    const-string v1, "CaptureBar.IsVideoButtonClicked"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v4, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    .line 112
    const-string v1, "CaptureBar.IsVideoButtonPressed"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v4, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    .line 115
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const-class v1, Lcom/android/camera/IViewFinder;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IViewFinder;

    .line 118
    .local v0, viewFinder:Lcom/android/camera/IViewFinder;
    if-eqz v0, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureBar$1;

    iget-object v3, v0, Lcom/android/camera/IViewFinder;->isPreviewSurfaceCreated:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureBar$1;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v0           #viewFinder:Lcom/android/camera/IViewFinder;
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local v0       #viewFinder:Lcom/android/camera/IViewFinder;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "No IViewFinder interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/component/CaptureBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/CaptureBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onCamcorderButtonReleased(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->unlock3A()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->reset()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/CaptureBar;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/CaptureBar;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/CaptureBar;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onPopMenuOutsideTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->hideCaptureBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->isSlowMotionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/component/CaptureBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->showSlowMotionIndicator(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/component/CaptureBar;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIcons:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/component/CaptureBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->showSlowMotionIcon(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/component/CaptureBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->showRecordingTimer(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/component/CaptureBar;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/CaptureBar;->getRecordingTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/camera/component/CaptureBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/CaptureBar;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->updateButtonEnableStates()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/component/CaptureBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->showSelfTimer(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/component/CaptureBar;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/CaptureBar;->showSelfTimerIndicator(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/component/CaptureBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/CaptureBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onCameraButtonPressed(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/CaptureBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onCamcorderButtonPressed(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/CaptureBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onCameraButtonReleased(I)V

    return-void
.end method

.method private getRecordingTimeString(J)Ljava/lang/String;
    .locals 13
    .parameter "seconds"

    .prologue
    const-wide/16 v11, 0x3c

    const/4 v10, 0x1

    const-wide/16 v8, 0x64

    .line 187
    const-wide/16 v5, 0xe10

    div-long v5, p1, v5

    rem-long v0, v5, v8

    .line 188
    .local v0, hour:J
    div-long v5, p1, v11

    rem-long v2, v5, v11

    .line 189
    .local v2, minutes:J
    rem-long/2addr p1, v11

    .line 190
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_0

    const-string v4, ""

    .line 191
    .local v4, strHour:Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-long v6, v2, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-long v6, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 190
    .end local v4           #strHour:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-long v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 5
    .parameter "mv"

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 506
    .local v1, view:Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 508
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "getTouchedView - m_PhotoCaptureButton"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    move-object v2, v1

    .line 520
    .end local v1           #view:Landroid/view/View;
    .local v2, view:Landroid/widget/ImageView;
    :goto_0
    return-object v2

    .line 514
    .end local v2           #view:Landroid/widget/ImageView;
    .restart local v1       #view:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    .line 516
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "getTouchedView - m_VideoCaptureButton"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 517
    .restart local v2       #view:Landroid/widget/ImageView;
    goto :goto_0

    .line 519
    .end local v2           #view:Landroid/widget/ImageView;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "getTouchedView - null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 520
    .restart local v2       #view:Landroid/widget/ImageView;
    goto :goto_0
.end method

.method private hideCaptureBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method private isSlowMotionMode()Z
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCamcorderButtonPressed(I)V
    .locals 6
    .parameter "buttonType"

    .prologue
    const/4 v5, 0x1

    .line 352
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonPressed("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 355
    iget v1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCamcorderButtonPressed() - Current active capture button type is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonPressed() - Camcorder button is already pressed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_2
    iput p1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 370
    if-ne p1, v5, :cond_3

    .line 372
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 373
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const-string v2, "camera_video_btn_pressed"

    const v3, 0x7f020099

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/component/CaptureBar;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 382
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonPressed() - Activate camera"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v1, 0x0

    invoke-direct {p0, v1, v5}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 386
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_0

    .line 376
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const v2, 0x7f020087

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private onCamcorderButtonReleased(I)V
    .locals 6
    .parameter "buttonType"

    .prologue
    const/4 v5, 0x1

    .line 395
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonReleased("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    iget v1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eq v1, p1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCamcorderButtonReleased() - Current active capture button type is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonReleased() - Camcorder button is not pressed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_1
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/component/CaptureBar;->removeMessages(I)V

    .line 413
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 417
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->prepareRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    .line 426
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonReleased() - Cannot start or stop recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private onCameraButtonPressed(I)V
    .locals 6
    .parameter "buttonType"

    .prologue
    const/4 v5, 0x1

    .line 434
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 437
    iget v1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraButtonPressed() - Current active capture button type is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed() - Camera button is already pressed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_2
    iput p1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 452
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 455
    if-ne p1, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 456
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const-string v2, "camera_shutter_btn_pressed"

    const v3, 0x7f02008a

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/component/CaptureBar;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 460
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 462
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed() - Activate camera"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v1, 0x0

    invoke-direct {p0, v1, v5}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 464
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_0

    .line 469
    :cond_4
    const-string v1, "Press Camera Button"

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed() - Cannot take picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCameraButtonReleased(I)V
    .locals 4
    .parameter "buttonType"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCameraButtonReleased("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 481
    iget v0, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eq v0, p1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraButtonReleased() - Current active capture button type is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCameraButtonReleased() - Camera button is not pressed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_1
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CaptureBar;->removeMessages(I)V

    .line 496
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyEvent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 622
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 673
    :cond_0
    :goto_0
    return v3

    .line 628
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 629
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-gtz v5, :cond_0

    .line 631
    iget-boolean v5, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 633
    :cond_1
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v6, Lcom/android/camera/TakingPictureState;->Reviewing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v6, Lcom/android/camera/RecordingState;->Reviewing:Lcom/android/camera/RecordingState;

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 646
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/camera/component/CaptureBar;->onCameraButtonPressed(I)V

    move v3, v4

    .line 647
    goto :goto_0

    .line 652
    .end local v1           #cameraActivity:Lcom/android/camera/HTCCamera;
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 655
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->unlock3A()V

    .line 658
    const-class v3, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {p0, v3}, Lcom/android/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    .line 659
    .local v0, afController:Lcom/android/camera/IAutoFocusController;
    if-eqz v0, :cond_2

    .line 660
    const-string v3, "Focus key"

    invoke-virtual {v0, v3}, Lcom/android/camera/IAutoFocusController;->lockAutoFocus(Ljava/lang/String;)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_FocusLockHandle:Lcom/android/camera/Handle;

    .line 663
    :cond_2
    const-class v3, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {p0, v3}, Lcom/android/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IImageSettingsController;

    .line 664
    .local v2, isController:Lcom/android/camera/IImageSettingsController;
    if-eqz v2, :cond_3

    .line 666
    const-string v3, "Focus key"

    invoke-virtual {v2, v3}, Lcom/android/camera/IImageSettingsController;->lockAutoExposure(Ljava/lang/String;)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_AecLockHandle:Lcom/android/camera/Handle;

    .end local v0           #afController:Lcom/android/camera/IAutoFocusController;
    .end local v2           #isController:Lcom/android/camera/IImageSettingsController;
    :cond_3
    move v3, v4

    .line 670
    goto :goto_0

    .line 622
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_1
        0x83 -> :sswitch_0
    .end sparse-switch
.end method

.method private onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyEvent"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 681
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 710
    :cond_0
    :goto_0
    return v1

    .line 687
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 688
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget v3, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-ne v3, v5, :cond_0

    .line 690
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/TakingPictureState;->Reviewing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/RecordingState;->Reviewing:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 700
    invoke-direct {p0, v5}, Lcom/android/camera/component/CaptureBar;->onCameraButtonReleased(I)V

    move v1, v2

    .line 701
    goto :goto_0

    .line 706
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->unlock3A()V

    move v1, v2

    .line 707
    goto :goto_0

    .line 681
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_1
        0x83 -> :sswitch_0
    .end sparse-switch
.end method

.method private onPopMenuOutsideTouched(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "mv"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 530
    iput-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    .line 533
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->getTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;

    .line 535
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 573
    :goto_0
    return v0

    .line 539
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 573
    goto :goto_0

    .line 544
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 545
    goto :goto_0

    .line 555
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    goto :goto_1

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 718
    iput-boolean v2, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    .line 719
    iput v2, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 720
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 721
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 722
    return-void
.end method

.method private resetCaptureButton(Landroid/view/View;Z)V
    .locals 5
    .parameter "button"
    .parameter "resetPressState"

    .prologue
    const/4 v4, 0x0

    .line 729
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "resetCaptureButton("

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 732
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 734
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 736
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 739
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 747
    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 749
    iput v4, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 750
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 751
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 754
    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    .line 755
    return-void

    .line 742
    :cond_6
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setupEventHandlers()V
    .locals 3

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 763
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$3;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 772
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$4;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 781
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->keyUpEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$5;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 790
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->popupOutsideTouchEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$6;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 799
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$7;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 812
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 5

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 823
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureBar$8;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureBar$8;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$9;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 844
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$10;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 855
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$11;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$11;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 937
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureBar$12;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureBar$12;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureBar$13;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureBar$13;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$14;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$14;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1015
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$15;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$15;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1025
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$16;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$16;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1038
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$17;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$17;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1067
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$18;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$18;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1083
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$19;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$19;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1139
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$20;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$20;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1149
    return-void
.end method

.method private showRecordingTimer(Z)V
    .locals 8
    .parameter "isVisible"

    .prologue
    const v7, 0x7f08003a

    const v6, 0x7f080039

    const/4 v5, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1157
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1161
    :cond_0
    if-nez p1, :cond_1

    .line 1163
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1169
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    .line 1170
    .local v1, rotation:Lcom/android/camera/rotate/UIRotation;
    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1172
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1175
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1176
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerEmptyArea:Landroid/view/View;

    const v3, 0x7f0b000e

    invoke-virtual {p0, v3}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1192
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1222
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v2, v5, v5}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1180
    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1181
    .local v0, recTextView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1183
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1184
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1185
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerEmptyArea:Landroid/view/View;

    const v3, 0x7f0b000f

    invoke-virtual {p0, v3}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1187
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->isSlowMotionMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1188
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 1190
    :cond_3
    const v2, 0x7f0b000d

    invoke-virtual {p0, v2}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v2

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method private showSelfTimer(Z)V
    .locals 8
    .parameter "isVisible"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 1231
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1235
    :cond_0
    if-nez p1, :cond_1

    .line 1237
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const v3, 0x7f02008b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1238
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1243
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1244
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    .line 1245
    .local v1, rotation:Lcom/android/camera/rotate/UIRotation;
    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1247
    const v2, 0x7f0b0015

    invoke-virtual {p0, v2}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1248
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1249
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1250
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1251
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1259
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Duration;

    invoke-virtual {v2}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v2

    long-to-int v2, v2

    sparse-switch v2, :sswitch_data_0

    .line 1271
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1274
    :goto_2
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1275
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1278
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1279
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v2, v5, v5}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1255
    :cond_2
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1256
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1257
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1262
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    const v3, 0x7f02006a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1265
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    const v3, 0x7f02006c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1268
    :sswitch_2
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    const v3, 0x7f020068

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1259
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private showSelfTimerIndicator(ZZ)V
    .locals 5
    .parameter "updateIcon"
    .parameter "isVisible"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1288
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1322
    :goto_0
    return-void

    .line 1292
    :cond_0
    if-nez p2, :cond_1

    .line 1294
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1299
    :cond_1
    if-eqz p1, :cond_2

    .line 1301
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Duration;

    invoke-virtual {v1}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v1

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_0

    .line 1316
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getFakeUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1318
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 1319
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0, v4}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    .line 1321
    .end local v0           #rotation:Lcom/android/camera/rotate/UIRotation;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1304
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1307
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1310
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1301
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private showSlowMotionIcon(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 1350
    :goto_0
    return-void

    .line 1334
    :cond_0
    if-nez p1, :cond_1

    .line 1336
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1341
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 1348
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1349
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSlowMotionIndicator(Z)V
    .locals 4
    .parameter "isVisible"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1358
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1377
    :goto_0
    return-void

    .line 1362
    :cond_0
    if-nez p1, :cond_1

    .line 1364
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1369
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getFakeUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1371
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 1372
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    .line 1376
    .end local v0           #rotation:Lcom/android/camera/rotate/UIRotation;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private unlock3A()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1385
    const-class v2, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    .line 1386
    .local v0, afController:Lcom/android/camera/IAutoFocusController;
    if-eqz v0, :cond_0

    .line 1387
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_FocusLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/android/camera/IAutoFocusController;->unlockAutoFocus(Lcom/android/camera/Handle;)V

    .line 1388
    :cond_0
    iput-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_FocusLockHandle:Lcom/android/camera/Handle;

    .line 1391
    const-class v2, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IImageSettingsController;

    .line 1392
    .local v1, isController:Lcom/android/camera/IImageSettingsController;
    if-eqz v1, :cond_1

    .line 1394
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_AecLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/android/camera/IImageSettingsController;->unlockAutoExposure(Lcom/android/camera/Handle;)V

    .line 1395
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_AwbLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/android/camera/IImageSettingsController;->unlockAutoWhiteBalance(Lcom/android/camera/Handle;)V

    .line 1397
    :cond_1
    iput-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_AecLockHandle:Lcom/android/camera/Handle;

    .line 1398
    iput-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_AwbLockHandle:Lcom/android/camera/Handle;

    .line 1399
    return-void
.end method

.method private updateButtonEnableStates()V
    .locals 9

    .prologue
    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f00

    .line 1407
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1408
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    const/4 v1, 0x1

    .line 1409
    .local v1, isPhotoButtonEnabled:Z
    sget-object v8, Lcom/android/camera/component/CaptureBar$21;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v5}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v5

    aget v5, v8, v5

    packed-switch v5, :pswitch_data_0

    .line 1447
    const/4 v1, 0x0

    .line 1452
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    iget-object v5, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1453
    iget-object v8, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1456
    const/4 v2, 0x1

    .line 1457
    .local v2, isVideoButtonEnabled:Z
    sget-object v8, Lcom/android/camera/component/CaptureBar$21;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/RecordingState;

    invoke-virtual {v5}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v5

    aget v5, v8, v5

    packed-switch v5, :pswitch_data_1

    .line 1481
    :pswitch_1
    const/4 v2, 0x0

    .line 1486
    :cond_1
    :goto_2
    :pswitch_2
    iget-object v5, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1487
    iget-object v5, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1488
    return-void

    .line 1414
    .end local v2           #isVideoButtonEnabled:Z
    :pswitch_3
    sget-object v8, Lcom/android/camera/component/CaptureBar$21;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/RecordingState;

    invoke-virtual {v5}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v5

    aget v5, v8, v5

    sparse-switch v5, :sswitch_data_0

    .line 1432
    const/4 v1, 0x0

    goto :goto_0

    .line 1419
    :sswitch_1
    const-class v5, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v5}, Lcom/android/camera/component/CaptureBar;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ICaptureResolutionManager;

    .line 1420
    .local v3, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-eqz v3, :cond_3

    iget-object v5, v3, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/Resolution;

    move-object v4, v5

    .line 1421
    .local v4, videoResolution:Lcom/android/camera/Resolution;
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v5

    sget-object v8, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne v5, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1428
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1420
    .end local v4           #videoResolution:Lcom/android/camera/Resolution;
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 1438
    .end local v3           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :pswitch_4
    iget v5, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    const/4 v8, 0x1

    if-eq v5, v8, :cond_0

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    const-string v8, "Press Camera Button"

    invoke-virtual {v5, v8}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1439
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1444
    :pswitch_5
    iget-object v5, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    .line 1445
    goto/16 :goto_0

    :cond_4
    move v5, v7

    .line 1453
    goto/16 :goto_1

    .line 1460
    .restart local v2       #isVideoButtonEnabled:Z
    :pswitch_6
    iget-object v5, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v5, v8}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1461
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1468
    :pswitch_7
    sget-object v8, Lcom/android/camera/component/CaptureBar$21;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v5}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v5

    aget v5, v8, v5

    packed-switch v5, :pswitch_data_2

    .line 1475
    const/4 v2, 0x0

    .line 1476
    goto/16 :goto_2

    .line 1471
    :pswitch_8
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1472
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_5
    move v6, v7

    .line 1487
    goto/16 :goto_3

    .line 1409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1457
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_2
    .end packed-switch

    .line 1414
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 1468
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 176
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 179
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 180
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 164
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 167
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/camera/component/CaptureBar;->onCameraButtonReleased(I)V

    .line 159
    invoke-direct {p0, v1}, Lcom/android/camera/component/CaptureBar;->onCamcorderButtonReleased(I)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 12

    .prologue
    const v11, 0x7f08003e

    const v10, 0x7f080033

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 211
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 214
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 215
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    iget-object v7, v0, Lcom/android/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 216
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    iget-object v7, v0, Lcom/android/camera/HTCCamera;->isVideoCaptureButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 219
    const v6, 0x7f080030

    invoke-virtual {v0, v6}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    .line 220
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f08003f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    .line 221
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080034

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    .line 222
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080036

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    .line 223
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    const v7, 0x7f080037

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    .line 225
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080038

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 226
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f08003c

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    .line 227
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f08003d

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    .line 228
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f08003b

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerEmptyArea:Landroid/view/View;

    .line 231
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080040

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    .line 232
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    const v7, 0x7f080041

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    .line 233
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080042

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 234
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080043

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    .line 235
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080044

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    .line 236
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080045

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    .line 239
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 240
    .local v3, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIcons:[Landroid/graphics/drawable/Drawable;

    const v7, 0x7f020088

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v8

    .line 241
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIcons:[Landroid/graphics/drawable/Drawable;

    const v7, 0x7f020087

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v9

    .line 244
    const/4 v6, 0x0

    invoke-direct {p0, v6, v8}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 247
    new-instance v2, Lcom/android/camera/component/CaptureBar$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$2;-><init>(Lcom/android/camera/component/CaptureBar;)V

    .line 300
    .local v2, listener:Landroid/view/View$OnTouchListener;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 301
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 304
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v4

    .line 305
    .local v4, startMode:Lcom/android/camera/CameraStartMode;
    invoke-virtual {v4}, Lcom/android/camera/CameraStartMode;->supportsAllCameraModes()Z

    move-result v6

    if-nez v6, :cond_0

    .line 308
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080032

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f020089

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-boolean v6, v4, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v6, :cond_1

    .line 314
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 315
    .local v5, visibleView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 322
    .local v1, hiddenView:Landroid/view/View;
    :goto_0
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 323
    const/high16 v6, 0x7f0b

    invoke-virtual {p0, v6}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 327
    .end local v1           #hiddenView:Landroid/view/View;
    .end local v5           #visibleView:Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->setupEventHandlers()V

    .line 328
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->setupPropertyChangedCallbacks()V

    .line 331
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->updateButtonEnableStates()V

    .line 334
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {p0, v6, v9, v8}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 335
    return-void

    .line 319
    :cond_1
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 320
    .restart local v5       #visibleView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .restart local v1       #hiddenView:Landroid/view/View;
    goto :goto_0
.end method

.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 2
    .parameter "fakeRotation"
    .parameter "uiRotation"

    .prologue
    const/4 v1, 0x0

    .line 599
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    .line 600
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    .line 601
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    .line 602
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    .line 603
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "fakeRotation"
    .parameter "uiRotation"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 612
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 613
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 614
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 615
    return-void
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "prevRotation"
    .parameter "rotation"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    .line 584
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    .line 585
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    .line 586
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    .line 589
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/CaptureBar;->showSelfTimer(Z)V

    .line 591
    :cond_0
    return-void
.end method
