.class public final Lcom/android/camera/component/SmartShotUI;
.super Lcom/android/camera/component/UIComponent;
.source "SmartShotUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/SmartShotUI$7;
    }
.end annotation


# static fields
.field public static final MSG_CAPTURE_START:I = 0x1

.field public static final MSG_PHOTO_SAVED:I = 0x4

.field private static final MSG_PREVIEW_SIZE_CHANGED:I = 0x7

.field public static final MSG_REVIEW_IMAGE_CREATED:I = 0x5

.field public static final MSG_SET_FACES:I = 0x6

.field public static final MSG_SMART_SHOT_COMPLETED:I = 0x3

.field public static final MSG_THUMB_CREATED:I = 0x2

.field public static final NAME:Ljava/lang/String; = "Smart Shot UI"


# instance fields
.field private mDrawFacescontainer:Landroid/view/View;

.field m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

.field private m_BubbleToastHandle:Lcom/android/camera/Handle;

.field private m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

.field private m_CapturingInstanceID:J

.field private m_Inflater:Landroid/view/LayoutInflater;

.field private m_InstanceID:J

.field private m_IsCaptureUIOpen:Z

.field private m_IsEnteredFromAutoScene:Z

.field private m_IsModeEntered:Z

.field private m_IsUiInitialized:Z

.field private m_PreviewSizeInUI:Lcom/android/camera/imaging/Size;

.field private m_ProcessingDialogHandle:Lcom/android/camera/Handle;

.field private m_SmartShotController:Lcom/android/camera/component/SmartShotController;

.field private m_SmartShotReviewImage:Landroid/widget/ImageView;

.field private m_drawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 89
    const-string v0, "Smart Shot UI"

    const/4 v1, 0x1

    const v2, 0x7f08004b

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->disableAutoInflateView()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/SmartShotUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/SmartShotUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotUI;->hideReviewScreen()V

    return-void
.end method

.method static synthetic access$204(Lcom/android/camera/component/SmartShotUI;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/camera/component/SmartShotUI;->m_InstanceID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/component/SmartShotUI;->m_InstanceID:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/SmartShotUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/camera/component/SmartShotUI;->m_IsEnteredFromAutoScene:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/SmartShotUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/component/SmartShotUI;->m_IsEnteredFromAutoScene:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/component/SmartShotUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/camera/component/SmartShotUI;->showReviewImage(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/SmartShotUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotUI;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/SmartShotUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotUI;->closeCaptureUI()V

    return-void
.end method

.method private closeCaptureUI()V
    .locals 2

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IBubbleToastManager;->closeBubbleToast(Lcom/android/camera/Handle;)V

    .line 545
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/SmartShotUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private getFacesMappingRect([Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 14
    .parameter "facesRect"

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, fRatio:F
    array-length v2, p1

    .line 198
    .local v2, faceNum:I
    const/4 v6, 0x0

    .line 199
    .local v6, mappingRect:[Landroid/graphics/Rect;
    if-nez v2, :cond_0

    move-object v7, v6

    .line 233
    .end local v6           #mappingRect:[Landroid/graphics/Rect;
    .local v7, mappingRect:[Landroid/graphics/Rect;
    :goto_0
    return-object v7

    .line 202
    .end local v7           #mappingRect:[Landroid/graphics/Rect;
    .restart local v6       #mappingRect:[Landroid/graphics/Rect;
    :cond_0
    new-array v6, v2, [Landroid/graphics/Rect;

    .line 204
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 205
    .local v0, camera:Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 207
    .local v10, pictureSize:Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v11

    iget-object v11, v11, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 209
    .local v5, isWidePhoto:Z
    iget-object v11, p0, Lcom/android/camera/component/SmartShotUI;->m_PreviewSizeInUI:Lcom/android/camera/imaging/Size;

    iget v11, v11, Lcom/android/camera/imaging/Size;->width:I

    int-to-float v11, v11

    iget v12, v10, Landroid/hardware/Camera$Size;->height:I

    int-to-float v12, v12

    div-float v1, v11, v12

    .line 211
    move-object v3, p1

    .line 212
    .local v3, faceRt:[Landroid/graphics/Rect;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 214
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    aput-object v11, v6, v4

    .line 215
    if-eqz v3, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v7, v6

    .line 233
    .end local v6           #mappingRect:[Landroid/graphics/Rect;
    .restart local v7       #mappingRect:[Landroid/graphics/Rect;
    goto :goto_0

    .line 218
    .end local v7           #mappingRect:[Landroid/graphics/Rect;
    .restart local v6       #mappingRect:[Landroid/graphics/Rect;
    :cond_2
    aget-object v11, v6, v4

    aget-object v12, v3, v4

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    float-to-int v12, v12

    iput v12, v11, Landroid/graphics/Rect;->top:I

    .line 219
    aget-object v11, v6, v4

    aget-object v12, v3, v4

    iget v12, v12, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    float-to-int v12, v12

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 220
    aget-object v11, v6, v4

    aget-object v12, v3, v4

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    float-to-int v12, v12

    iput v12, v11, Landroid/graphics/Rect;->left:I

    .line 221
    aget-object v11, v6, v4

    aget-object v12, v3, v4

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    float-to-int v12, v12

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 225
    if-nez v5, :cond_3

    .line 227
    sget v11, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    iget-object v12, p0, Lcom/android/camera/component/SmartShotUI;->m_PreviewSizeInUI:Lcom/android/camera/imaging/Size;

    iget v12, v12, Lcom/android/camera/imaging/Size;->height:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-double v8, v11

    .line 228
    .local v8, nOffset:D
    aget-object v11, v6, v4

    iget v12, v11, Landroid/graphics/Rect;->left:I

    int-to-double v12, v12

    add-double/2addr v12, v8

    double-to-int v12, v12

    iput v12, v11, Landroid/graphics/Rect;->left:I

    .line 229
    aget-object v11, v6, v4

    iget v12, v11, Landroid/graphics/Rect;->right:I

    int-to-double v12, v12

    add-double/2addr v12, v8

    double-to-int v12, v12

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 212
    .end local v8           #nOffset:D
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getPreviewSizeInUI(Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;
    .locals 5
    .parameter "previewSize"

    .prologue
    const/4 v4, 0x0

    .line 564
    if-nez p1, :cond_0

    .line 566
    const-string v1, "previewSize"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 567
    new-instance v1, Lcom/android/camera/imaging/Size;

    invoke-direct {v1}, Lcom/android/camera/imaging/Size;-><init>()V

    .line 572
    :goto_0
    return-object v1

    .line 569
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Lcom/android/camera/imaging/Size;

    iget v3, p1, Lcom/android/camera/imaging/Size;->height:I

    iget v4, p1, Lcom/android/camera/imaging/Size;->width:I

    invoke-direct {v2, v3, v4}, Lcom/android/camera/imaging/Size;-><init>(II)V

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 572
    .local v0, bounds:Landroid/graphics/Rect;
    new-instance v1, Lcom/android/camera/imaging/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0
.end method

.method private hideReviewScreen()V
    .locals 3

    .prologue
    .line 244
    iget-boolean v1, p0, Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z

    if-nez v1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/component/SmartShotUI;->showReviewImage(Z)V

    .line 249
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotReviewImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    invoke-static {v0}, Lcom/android/camera/imaging/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private initializeUI()V
    .locals 4

    .prologue
    const v3, 0x7f030037

    .line 278
    iget-boolean v1, p0, Lcom/android/camera/component/SmartShotUI;->m_IsUiInitialized:Z

    if-eqz v1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 280
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/SmartShotUI;->m_IsUiInitialized:Z

    .line 283
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_Inflater:Landroid/view/LayoutInflater;

    .line 284
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_Inflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, baseLayout:Landroid/view/View;
    const v1, 0x7f080103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/SmartShotUI;->mDrawFacescontainer:Landroid/view/View;

    .line 287
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI;->mDrawFacescontainer:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 289
    const v1, 0x7f080104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/DrawFaceAnimationView;

    iput-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_drawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;

    .line 290
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 291
    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotReviewImage:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 579
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotController:Lcom/android/camera/component/SmartShotController;

    if-eqz v0, :cond_0

    .line 582
    :goto_0
    return v1

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v2, "Smart Shot Controller"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/SmartShotController;

    iput-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotController:Lcom/android/camera/component/SmartShotController;

    .line 582
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotController:Lcom/android/camera/component/SmartShotController;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onBaseImageCreated(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotReviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 483
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    :cond_0
    return-void
.end method

.method private onPhotoSaved(Lcom/android/camera/CaptureHandle;)V
    .locals 3
    .parameter "captureHandle"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    if-eqz v1, :cond_0

    .line 331
    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/SmartShotUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    .line 332
    .local v0, dialogManager:Lcom/android/camera/IProcessingDialogManager;
    if-eqz v0, :cond_1

    .line 333
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->closeProcessingDialog(Lcom/android/camera/Handle;)V

    .line 336
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    .line 340
    .end local v0           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/HTCCamera;->completeTakingPicture(Lcom/android/camera/CaptureHandle;)V

    .line 341
    return-void

    .line 335
    .restart local v0       #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPhotoSaved() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V
    .locals 1
    .parameter "previewSize"

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/android/camera/component/SmartShotUI;->getPreviewSizeInUI(Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_PreviewSizeInUI:Lcom/android/camera/imaging/Size;

    .line 557
    return-void
.end method

.method private onSmartShotCompleted()V
    .locals 5

    .prologue
    .line 308
    iget-wide v1, p0, Lcom/android/camera/component/SmartShotUI;->m_InstanceID:J

    iget-wide v3, p0, Lcom/android/camera/component/SmartShotUI;->m_CapturingInstanceID:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 312
    :cond_0
    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/SmartShotUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    .line 313
    .local v0, dialogManager:Lcom/android/camera/IProcessingDialogManager;
    if-eqz v0, :cond_1

    .line 314
    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->showProcessingDialog(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    goto :goto_0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onSmartShotCompleted() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openCaptureUI()V
    .locals 3

    .prologue
    .line 515
    iget-boolean v1, p0, Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z

    if-nez v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/component/SmartShotUI;->m_IsCaptureUIOpen:Z

    if-nez v1, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 521
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    if-eqz v1, :cond_2

    .line 526
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Lcom/android/camera/IBubbleToastManager;->showBubbleToast(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    .line 530
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/SmartShotUI;->m_IsCaptureUIOpen:Z

    goto :goto_0

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "openCaptureUI() - No IBubbleToastManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private registerListeners()V
    .locals 5

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 351
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/SmartShotUI$1;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/SmartShotUI$1;-><init>(Lcom/android/camera/component/SmartShotUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmartShotUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmartShotUI$2;-><init>(Lcom/android/camera/component/SmartShotUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 401
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 411
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmartShotUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmartShotUI$3;-><init>(Lcom/android/camera/component/SmartShotUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 435
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmartShotUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmartShotUI$4;-><init>(Lcom/android/camera/component/SmartShotUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 447
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmartShotUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmartShotUI$5;-><init>(Lcom/android/camera/component/SmartShotUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 460
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmartShotUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmartShotUI$6;-><init>(Lcom/android/camera/component/SmartShotUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 472
    return-void
.end method

.method private showReviewImage(Z)V
    .locals 3
    .parameter "isShow"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 489
    iget-boolean v0, p0, Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z

    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotReviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 494
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_drawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/DrawFaceAnimationView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_drawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;

    invoke-virtual {v0}, Lcom/android/camera/widget/DrawFaceAnimationView;->startFacesAnimation()V

    goto :goto_0

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_drawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;

    invoke-virtual {v0}, Lcom/android/camera/widget/DrawFaceAnimationView;->resetFace()V

    .line 503
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_drawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/DrawFaceAnimationView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public enterSmartShotMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 100
    iget-boolean v0, p0, Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter smart shot mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter Smart shot mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    .line 109
    iput-boolean v2, p0, Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z

    .line 112
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotUI;->initializeUI()V

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imaging/Size;

    invoke-direct {p0, v0}, Lcom/android/camera/component/SmartShotUI;->getPreviewSizeInUI(Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_PreviewSizeInUI:Lcom/android/camera/imaging/Size;

    .line 117
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotUI;->openCaptureUI()V

    .line 118
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotController:Lcom/android/camera/component/SmartShotController;

    iget-wide v4, p0, Lcom/android/camera/component/SmartShotUI;->m_InstanceID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/SmartShotUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterSmartShotMode() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exitSmartShotMode()V
    .locals 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit smart shot mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 138
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotUI;->closeCaptureUI()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z

    .line 142
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_SmartShotController:Lcom/android/camera/component/SmartShotController;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/SmartShotUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "exitSmartShotMode() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotUI;->linkToController()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 188
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 159
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotUI;->onSmartShotCompleted()V

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/component/SmartShotUI;->m_CapturingInstanceID:J

    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v2}, Lcom/android/camera/component/SmartShotUI;->onPhotoSaved(Lcom/android/camera/CaptureHandle;)V

    goto :goto_0

    .line 171
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 172
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0, v0}, Lcom/android/camera/component/SmartShotUI;->onBaseImageCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 178
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    .line 180
    .local v1, mergedBmp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/component/SmartShotUI;->m_drawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/DrawFaceAnimationView;->setFace(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 184
    .end local v1           #mergedBmp:Landroid/graphics/Bitmap;
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/imaging/Size;

    invoke-direct {p0, v2}, Lcom/android/camera/component/SmartShotUI;->onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 265
    const-class v0, Lcom/android/camera/IBubbleToastManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SmartShotUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IBubbleToastManager;

    iput-object v0, p0, Lcom/android/camera/component/SmartShotUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    .line 268
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotUI;->registerListeners()V

    .line 270
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotUI;->setupPropertyChangedCallbacks()V

    .line 271
    return-void
.end method

.method public isSmartShotModeEntered()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z

    return v0
.end method
