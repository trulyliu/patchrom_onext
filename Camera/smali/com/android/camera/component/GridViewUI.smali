.class public final Lcom/android/camera/component/GridViewUI;
.super Lcom/android/camera/component/UIComponent;
.source "GridViewUI.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Grid View UI"


# instance fields
.field private m_GridViewContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 37
    const-string v0, "Grid View UI"

    const/4 v1, 0x1

    const v2, 0x7f080047

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/camera/component/GridViewUI;->disableAutoInflateView()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/GridViewUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/component/GridViewUI;->showGridViewUI(Z)V

    return-void
.end method

.method private initializeUI()V
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/GridViewUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, baseLayout:Landroid/view/View;
    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/camera/component/GridViewUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 81
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {p0}, Lcom/android/camera/component/GridViewUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isGridVisible:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/GridViewUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/GridViewUI$1;-><init>(Lcom/android/camera/component/GridViewUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 89
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/GridViewUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/GridViewUI$2;-><init>(Lcom/android/camera/component/GridViewUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 97
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/GridViewUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/GridViewUI$3;-><init>(Lcom/android/camera/component/GridViewUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 109
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/GridViewUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/GridViewUI$4;-><init>(Lcom/android/camera/component/GridViewUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 121
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/GridViewUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/GridViewUI$5;-><init>(Lcom/android/camera/component/GridViewUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 134
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/GridViewUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/GridViewUI$6;-><init>(Lcom/android/camera/component/GridViewUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 143
    return-void
.end method

.method private showGridViewUI(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/camera/component/GridViewUI;->initializeUI()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 162
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/GridViewUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_2

    .line 157
    const/4 p1, 0x0

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/GridViewUI;->updateContainerSize()V

    .line 161
    iget-object v0, p0, Lcom/android/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p1, p1}, Lcom/android/camera/component/GridViewUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private updateContainerSize()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 169
    iget-object v3, p0, Lcom/android/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    .line 200
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/GridViewUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 175
    .local v1, isWideScreen:Z
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/GridViewUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    const/4 v1, 0x0

    .line 179
    :cond_1
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    .line 182
    .local v0, isPortrait:Z
    iget-object v3, p0, Lcom/android/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 183
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_3

    .line 184
    if-eqz v1, :cond_2

    .line 185
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 198
    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto :goto_0

    .line 187
    :cond_2
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 190
    :cond_3
    if-eqz v1, :cond_4

    .line 191
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 193
    :cond_4
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 51
    invoke-direct {p0}, Lcom/android/camera/component/GridViewUI;->setupPropertyChangedCallbacks()V

    .line 54
    invoke-virtual {p0}, Lcom/android/camera/component/GridViewUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isGridVisible:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/GridViewUI;->showGridViewUI(Z)V

    .line 56
    :cond_0
    return-void
.end method
