.class public final Lcom/android/camera/component/PanoramaUI;
.super Lcom/android/camera/component/UIComponent;
.source "PanoramaUI.java"


# static fields
.field public static final MSG_ABORTED:I = 0xc

.field private static final MSG_DEACTIVATE_SPINNER:I = 0x64

.field public static final MSG_DIRECTION_LOCKED:I = 0x9

.field public static final MSG_INTERMEDIATE_CAPTURE_START:I = 0x4

.field public static final MSG_INTERMEDIATE_CAPTURE_TIMER_CANCELED:I = 0x3

.field public static final MSG_INTERMEDIATE_CAPTURE_TIMER_STARTED:I = 0x2

.field public static final MSG_INTERMEDIATE_PHOTO:I = 0x6

.field public static final MSG_INTERMEDIATE_SHUTTER:I = 0x5

.field public static final MSG_PREVIEW_CREATED:I = 0x8

.field public static final MSG_REVIEW_IMAGE_CREATED:I = 0xd

.field public static final MSG_STITCH_COMPLETED:I = 0xb

.field public static final MSG_STITCH_STARTED:I = 0xa

.field public static final MSG_TRACKING:I = 0x7

.field public static final NAME:Ljava/lang/String; = "Panorama UI"

.field private static final SPINNER_ACTIVE_TIMEOUT:I


# instance fields
.field private m_ArrowsContainer:Landroid/view/View;

.field private m_BubbleToastHandle:Lcom/android/camera/Handle;

.field private m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

.field private m_CancelButton:Landroid/widget/ImageView;

.field private m_CenterIndicatorView:Landroid/widget/ImageView;

.field private m_CurrentCaptureIndex:I

.field private m_CurrentDeltaX:F

.field private m_CurrentDeltaY:F

.field private m_FrameIndexIndicatorContainer:Landroid/view/View;

.field private m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

.field private m_Indicator:Lcom/android/camera/rotate/RotateImageView;

.field private m_IndicatorContainer:Landroid/view/View;

.field private m_IndicatorTopPaddingView:Landroid/view/View;

.field private m_InitDirectionToast:Landroid/view/View;

.field private m_InitDirectionToastTextView:Landroid/widget/TextView;

.field private m_IsCaptureUIOpen:Z

.field private m_IsCapturing:Z

.field private m_IsCapturingFrame:Z

.field private m_IsInternalExit:Z

.field private m_IsModeEntered:Z

.field private m_IsResolutionSyncBackNeeded:Z

.field private m_IsSlowArrowShown:Z

.field private m_IsSpinnerActive:Z

.field private m_IsSweepPanorama:Z

.field private m_IsUIInitialized:Z

.field private m_LeftArrow:Landroid/widget/ImageView;

.field private m_PanoramaController:Lcom/android/camera/component/PanoramaController;

.field private m_PanoramaDirection:I

.field private m_ProcessingDialogHandle:Lcom/android/camera/Handle;

.field private m_ResolutionProvider:Lcom/android/camera/component/PanoramaResolutionProvider;

.field private m_ResolutionProviderHandle:Lcom/android/camera/Handle;

.field private m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_ReviewImageView:Landroid/widget/ImageView;

.field private m_RightArrow:Landroid/widget/ImageView;

.field private m_ShutterBar:Landroid/view/View;

.field private m_Spinner:Landroid/widget/ImageView;

.field private m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

.field private m_SweepIndicatorContainer:Landroid/view/View;

.field private m_Thumb:Landroid/widget/ImageView;

.field private m_ThumbBar:Landroid/view/View;

.field private m_ThumbnailHeight:I

.field private m_ThumbnailWidth:I

.field private m_ThumbnailWidthWide:I

.field private m_Thumbs:[Landroid/widget/ImageView;

.field private m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 142
    :cond_0
    const/16 v0, 0x3e8

    sput v0, Lcom/android/camera/component/PanoramaUI;->SPINNER_ACTIVE_TIMEOUT:I

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_1
    const/16 v0, 0x258

    sput v0, Lcom/android/camera/component/PanoramaUI;->SPINNER_ACTIVE_TIMEOUT:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 152
    const-string v0, "Panorama UI"

    const/4 v1, 0x1

    const v2, 0x7f08004a

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    .line 153
    invoke-static {}, Lcom/android/camera/FeatureConfig;->useSpecialPanoramaResolutions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/android/camera/component/PanoramaResolutionProvider;

    invoke-direct {v0, p1}, Lcom/android/camera/component/PanoramaResolutionProvider;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionProvider:Lcom/android/camera/component/PanoramaResolutionProvider;

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->disableAutoInflateView()V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/PanoramaUI;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/widget/PanoramaIndicatorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideReviewScreen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/PanoramaUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/component/PanoramaUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorLocation(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/component/PanoramaUI;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/PanoramaUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/PanoramaUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/PanoramaUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/component/PanoramaUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/component/PanoramaUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method private activateSpinner()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 163
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Spinner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 167
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v8

    :goto_0
    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v8}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    .line 170
    iput-boolean v8, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    .line 171
    const/16 v2, 0x64

    const/4 v5, 0x0

    sget v0, Lcom/android/camera/component/PanoramaUI;->SPINNER_ACTIVE_TIMEOUT:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 173
    :cond_0
    return-void

    .line 167
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private closeCaptureUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IBubbleToastManager;->closeBubbleToast(Lcom/android/camera/Handle;)V

    .line 187
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    .line 190
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 193
    iput-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private deactivateSpinner()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner(Z)V

    .line 202
    return-void
.end method

.method private deactivateSpinner(Z)V
    .locals 7
    .parameter "forceDeactivate"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    if-eqz v1, :cond_3

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    .line 210
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-ge v1, v6, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorUpdateType(I)V

    .line 213
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    iget v2, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaY:F

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 214
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v5}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorUpdateType(I)V

    .line 216
    :cond_1
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    .line 217
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaUI;->removeMessages(I)V

    .line 220
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-eqz v1, :cond_4

    .line 222
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-ge v1, v6, :cond_2

    .line 223
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->showDirectionIndicator()V

    .line 265
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    .line 267
    :cond_3
    return-void

    .line 228
    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 229
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 237
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 238
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    :cond_6
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 242
    :cond_7
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 243
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 251
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    instance-of v1, v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_8

    .line 252
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 255
    :cond_8
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToastTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f0a0048

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToastTextView:Landroid/widget/TextView;

    const-string v2, "com.htc.R.drawable.popup_full_dark"

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 259
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v1, v5, v5}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 255
    :cond_9
    const v1, 0x7f0a0049

    goto :goto_1
.end method

.method private getVirtualDeviceOrientation()I
    .locals 3

    .prologue
    .line 457
    const/4 v0, -0x1

    .line 458
    .local v0, orientation:I
    const-class v2, Lcom/android/camera/IUIRotationManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/PanoramaUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IUIRotationManager;

    .line 459
    .local v1, rotationManager:Lcom/android/camera/IUIRotationManager;
    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v1}, Lcom/android/camera/IUIRotationManager;->getAvailableDeviceOrientation()I

    move-result v0

    .line 463
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation(I)I

    move-result v2

    return v2

    .line 462
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVirtualDeviceOrientation(I)I
    .locals 3
    .parameter "deviceOrientation"

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    iget v2, v2, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5a

    add-int v0, p1, v1

    .line 468
    .local v0, virtualOrientation:I
    if-gez v0, :cond_0

    .line 469
    add-int/lit16 v0, v0, 0x168

    .line 470
    :cond_0
    return v0
.end method

.method private hideArrows()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 547
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 557
    :cond_1
    return-void
.end method

.method private hideCenterIndicator()V
    .locals 3

    .prologue
    .line 565
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 570
    .local v0, currentIndicator:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 574
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0           #currentIndicator:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method private hideReviewScreen()V
    .locals 4

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lcom/android/camera/component/PanoramaUI$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/PanoramaUI$1;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imaging/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 599
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideSweepIndicator()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 611
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    .line 616
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    .line 618
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 619
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setPanoramaDirection(I)V

    goto :goto_0
.end method

.method private hideThumbnailBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 628
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 629
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 632
    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 634
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 636
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v2, v3, v1

    .line 637
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 638
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 640
    invoke-static {v0}, Lcom/android/camera/imaging/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 643
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #i:I
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 644
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    :cond_2
    return-void
.end method

.method private initializeUI()V
    .locals 10

    .prologue
    const v9, 0x7f0800c3

    const v8, 0x7f0800c2

    const v7, 0x7f0800c1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 690
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->prepareContentLayout()Landroid/view/View;

    move-result-object v0

    .line 693
    .local v0, baseLayout:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsUIInitialized:Z

    if-eqz v1, :cond_0

    .line 803
    :goto_0
    return-void

    .line 697
    :cond_0
    if-nez v0, :cond_1

    .line 698
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "initializeUI() - baseLayout is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_2

    .line 706
    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    .line 707
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    const v2, 0x7f0800d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToastTextView:Landroid/widget/TextView;

    .line 710
    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    .line 711
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    const v2, 0x7f0800cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    .line 712
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    const v2, 0x7f0800cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    .line 713
    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/UIRotation;)V

    .line 716
    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    .line 717
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/PanoramaIndicatorView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    .line 718
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v5}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorVisibility(Z)V

    .line 720
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 723
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    .line 724
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    .line 725
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    const v2, 0x7f0800ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    .line 726
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    .line 727
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 730
    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 731
    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    .line 766
    :goto_1
    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    .line 767
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    const v2, 0x7f0800c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    .line 768
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$2;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 799
    invoke-direct {p0, v6}, Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V

    .line 802
    iput-boolean v5, p0, Lcom/android/camera/component/PanoramaUI;->m_IsUIInitialized:Z

    goto/16 :goto_0

    .line 736
    :cond_2
    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/PanoramaTrackingView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    .line 739
    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    .line 740
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 741
    const/4 v1, 0x5

    new-array v2, v1, [Lcom/android/camera/widget/ColorMultiplyImageView;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    const v3, 0x7f0800bc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ColorMultiplyImageView;

    aput-object v1, v2, v6

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    const v3, 0x7f0800bd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ColorMultiplyImageView;

    aput-object v1, v2, v5

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    const v4, 0x7f0800be

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ColorMultiplyImageView;

    aput-object v1, v2, v3

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    const v4, 0x7f0800bf

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ColorMultiplyImageView;

    aput-object v1, v2, v3

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    const v4, 0x7f0800c0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ColorMultiplyImageView;

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    .line 750
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    .line 751
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 752
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    .line 753
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    .line 756
    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 757
    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    .line 760
    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    .line 761
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/PanoramaIndicatorView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    .line 762
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto/16 :goto_1
.end method

.method private linkToController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 818
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v0, :cond_0

    move v0, v1

    .line 826
    :goto_0
    return v0

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    const-string v2, "Panorama Controller"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaController;

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    .line 821
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0, p0}, Lcom/android/camera/component/PanoramaController;->link(Lcom/android/camera/component/PanoramaUI;)V

    move v0, v1

    .line 824
    goto :goto_0

    .line 826
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAborted(Lcom/android/camera/CaptureHandle;)V
    .locals 2
    .parameter "captureHandle"

    .prologue
    const/4 v1, 0x0

    .line 835
    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    .line 838
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    .line 842
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    .line 845
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideCenterIndicator()V

    .line 851
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/HTCCamera;->completeTakingPicture(Lcom/android/camera/CaptureHandle;)V

    .line 853
    return-void
.end method

.method private onDirectionLocked(I)V
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 861
    iput p1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    .line 864
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailDirection()V

    .line 903
    :goto_0
    return-void

    .line 871
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_2

    .line 874
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, p1}, Lcom/android/camera/widget/PanoramaIndicatorView;->setPanoramaDirection(I)V

    .line 877
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    .line 880
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 884
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->showDirectionIndicator()V

    goto :goto_0

    .line 889
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v1, p1}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    .line 892
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 894
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 895
    .local v0, indicatorIndex:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    aget-object v1, v1, v0

    const v2, 0x7f020073

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ColorMultiplyImageView;->setImageResource(I)V

    .line 896
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/android/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    .line 897
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 901
    .end local v0           #indicatorIndex:I
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    goto :goto_0

    .line 894
    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private onIntermediateCaptureStart(I)V
    .locals 6
    .parameter "captureIndex"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 911
    if-nez p1, :cond_0

    .line 914
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    .line 915
    iput v4, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    .line 918
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    if-eqz v2, :cond_0

    .line 920
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 922
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    aget-object v2, v2, v0

    const v3, 0x7f020071

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ColorMultiplyImageView;->setImageResource(I)V

    .line 923
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    .line 920
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 927
    .end local v0           #i:I
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    .line 928
    iput p1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    .line 929
    iput v5, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    .line 930
    iput v5, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaY:F

    .line 933
    if-lez p1, :cond_3

    .line 934
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->activateSpinner()V

    .line 942
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v2, :cond_2

    .line 944
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :goto_2
    int-to-float v1, v1

    invoke-virtual {v2, v1, v5}, Lcom/android/camera/widget/PanoramaTrackingView;->setDeltaXY(FF)V

    .line 948
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 949
    return-void

    .line 937
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    if-eqz v2, :cond_1

    .line 938
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    goto :goto_1

    .line 944
    :cond_4
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private onIntermediateCaptureTimerCanceled(I)V
    .locals 1
    .parameter "captureIndex"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v0}, Lcom/android/camera/widget/PanoramaTrackingView;->deactivateTrackingBox()V

    .line 959
    :cond_0
    return-void
.end method

.method private onIntermediateCaptureTimerStarted(I)V
    .locals 2
    .parameter "captureIndex"

    .prologue
    .line 967
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 971
    .local v0, currentIndicator:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 972
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0           #currentIndicator:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 979
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v1}, Lcom/android/camera/widget/PanoramaTrackingView;->activateTrackingBox()V

    .line 981
    :cond_1
    return-void
.end method

.method private onIntermediatePhoto(ILandroid/graphics/Bitmap;)V
    .locals 9
    .parameter "captureIndex"
    .parameter "image"

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 989
    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-eq v3, p1, :cond_1

    .line 991
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current capture index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but receive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in onIntermediatePhoto()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    iput-boolean v8, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    .line 999
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 1002
    iget-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v3, :cond_6

    .line 1005
    if-nez p1, :cond_5

    .line 1008
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1010
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Camera is paused or idle, stop capturing panorama picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->stopCapture()V

    goto :goto_0

    .line 1016
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1019
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1020
    .local v2, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1021
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1022
    invoke-direct {p0, v8, v5}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailSize(IF)V

    .line 1025
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1026
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1027
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1028
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1029
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1030
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {p0, v3, v7, v7}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1031
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/component/PanoramaUI;->onPreviewCreated(Landroid/graphics/Bitmap;)V

    .line 1037
    .end local v2           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    invoke-direct {p0, v7}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    goto :goto_0

    .line 1034
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner(Z)V

    goto :goto_1

    .line 1039
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1040
    invoke-direct {p0, p1, v5}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailSize(IF)V

    goto :goto_0

    .line 1045
    :cond_6
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v3, :cond_7

    .line 1047
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v3}, Lcom/android/camera/widget/PanoramaTrackingView;->resetDeltaXY()V

    .line 1048
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    iget v6, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaY:F

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/widget/PanoramaTrackingView;->setDeltaXY(FF)V

    .line 1049
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v3}, Lcom/android/camera/widget/PanoramaTrackingView;->deactivateTrackingBox()V

    .line 1050
    const/4 v3, 0x4

    if-ne p1, v3, :cond_7

    .line 1051
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v3, v8}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    .line 1055
    :cond_7
    if-lez p1, :cond_8

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    if-eqz v3, :cond_8

    .line 1057
    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_a

    move v0, p1

    .line 1058
    .local v0, indicatorIndex:I
    :goto_2
    if-ltz v0, :cond_8

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 1060
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    aget-object v3, v3, v0

    const v5, 0x7f020073

    invoke-virtual {v3, v5}, Lcom/android/camera/widget/ColorMultiplyImageView;->setImageResource(I)V

    .line 1061
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Lcom/android/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    .line 1066
    .end local v0           #indicatorIndex:I
    :cond_8
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1069
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v3, :cond_9

    .line 1071
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1072
    .local v1, isWideScreen:Z
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v3}, Lcom/android/camera/widget/PanoramaTrackingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1073
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_b

    move v3, v4

    :goto_3
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1074
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v3}, Lcom/android/camera/widget/PanoramaTrackingView;->requestLayout()V

    .line 1078
    .end local v1           #isWideScreen:Z
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v7, v7}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1079
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v7, v7}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1080
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1081
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1084
    invoke-direct {p0, v7}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    .line 1087
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v3, v8, v8}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_0

    .line 1057
    :cond_a
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    array-length v3, v3

    sub-int/2addr v3, p1

    add-int/lit8 v0, v3, -0x1

    goto :goto_2

    .line 1073
    .restart local v1       #isWideScreen:Z
    .restart local v2       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    goto :goto_3
.end method

.method private onIntermediateShutter(I)V
    .locals 0
    .parameter "captureIndex"

    .prologue
    .line 1152
    return-void
.end method

.method private onPreviewCreated(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "previewThumb"

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1163
    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailSize(IF)V

    .line 1164
    return-void
.end method

.method private onReviewImageCreated(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_2

    .line 1174
    :cond_0
    if-eqz p1, :cond_1

    .line 1175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1181
    :cond_1
    :goto_0
    return-void

    .line 1180
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onStitchCompleted(Lcom/android/camera/CaptureHandle;)V
    .locals 3
    .parameter "captureHandle"

    .prologue
    .line 1189
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    if-eqz v1, :cond_0

    .line 1191
    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    .line 1192
    .local v0, dialogManager:Lcom/android/camera/IProcessingDialogManager;
    if-eqz v0, :cond_1

    .line 1193
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->closeProcessingDialog(Lcom/android/camera/Handle;)V

    .line 1196
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    .line 1200
    .end local v0           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/HTCCamera;->completeTakingPicture(Lcom/android/camera/CaptureHandle;)V

    .line 1201
    return-void

    .line 1195
    .restart local v0       #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onStitchStarted(Z)V
    .locals 5
    .parameter "isErrorHandling"

    .prologue
    const/4 v3, 0x0

    .line 1209
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v1

    .line 1212
    .local v1, isIdleOrPaused:Z
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    .line 1213
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    .line 1216
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    .line 1219
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1220
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1223
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    .line 1226
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1227
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1230
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideCenterIndicator()V

    .line 1233
    if-nez v1, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v3, v2}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    .line 1236
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v2, :cond_2

    .line 1237
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    .line 1240
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideSweepIndicator()V

    .line 1243
    if-nez v1, :cond_6

    .line 1245
    const-class v2, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/PanoramaUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    .line 1246
    .local v0, dialogManager:Lcom/android/camera/IProcessingDialogManager;
    if-eqz v0, :cond_5

    .line 1247
    if-nez p1, :cond_4

    const v2, 0x7f0a004b

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/camera/IProcessingDialogManager;->showProcessingDialog(I)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    .line 1250
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 1256
    .end local v0           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    .line 1259
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 1260
    return-void

    :cond_3
    move v2, v3

    .line 1233
    goto :goto_0

    .line 1247
    .restart local v0       #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_4
    const v2, 0x7f0a004c

    goto :goto_1

    .line 1249
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onStitchStarted() - No IProcessingDialogManager interface"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1253
    .end local v0           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Camera is paused or idle, will not show processing dialog"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private onTracking(FF)V
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1268
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 1276
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_4

    .line 1278
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    if-nez v1, :cond_2

    .line 1279
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 1288
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-eqz v1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f00

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 1290
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const v0, 0x7f0200c0

    .line 1291
    .local v0, resId:I
    :goto_2
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1292
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1293
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    .line 1297
    .end local v0           #resId:I
    :cond_3
    iput p1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    .line 1298
    iput p2, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaY:F

    goto :goto_0

    .line 1283
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    if-nez v1, :cond_2

    .line 1284
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/widget/PanoramaTrackingView;->setDeltaXY(FF)V

    goto :goto_1

    .line 1290
    :cond_5
    const v0, 0x7f0200be

    goto :goto_2
.end method

.method private openCaptureUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1307
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v2, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1309
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUIOpen:Z

    if-nez v2, :cond_0

    .line 1313
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1314
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1318
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    move v1, v3

    .line 1319
    .local v1, isMenuClosed:Z
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    if-eqz v2, :cond_6

    .line 1320
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    const v4, 0x7f0a0046

    invoke-virtual {v2, v4}, Lcom/android/camera/IBubbleToastManager;->showBubbleToast(I)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    .line 1325
    :goto_2
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v2, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1326
    invoke-direct {p0, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    .line 1329
    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 1330
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1333
    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1335
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideSweepIndicator()V

    .line 1336
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v2, v5, v5}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 1337
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/PanoramaIndicatorView;->setDeviceOrientation(I)V

    .line 1338
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1342
    :cond_4
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUIOpen:Z

    goto :goto_0

    .line 1318
    .end local v1           #isMenuClosed:Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 1322
    .restart local v1       #isMenuClosed:Z
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "openCaptureUI() - No IBubbleToastManager interface"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private registerEventListeners()V
    .locals 3

    .prologue
    .line 1351
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1354
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$3;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1364
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$4;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1388
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resolutionSelectedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$5;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1399
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->thumbnailButtonClickedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$6;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1413
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 5

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1424
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$7;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1443
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->deviceOrientation:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$8;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1461
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$9;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/PanoramaUI$9;-><init>(Lcom/android/camera/component/PanoramaUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$10;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1517
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$11;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$11;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1530
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$12;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$12;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1540
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isNonLandscapeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1542
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$13;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$13;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1569
    :cond_0
    return-void
.end method

.method private showCancelButton(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1576
    if-eqz p1, :cond_1

    .line 1579
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1580
    .local v0, container:Landroid/view/View;
    instance-of v1, v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    .line 1581
    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    .end local v0           #container:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1584
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$14;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$14;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {p0, v1, v4, v4, v2}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 1599
    :goto_0
    return-void

    .line 1595
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1596
    invoke-direct {p0, v3}, Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V

    .line 1597
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private showDirectionIndicator()V
    .locals 2

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    if-nez v0, :cond_1

    .line 1623
    :cond_0
    :goto_0
    return-void

    .line 1611
    :cond_1
    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1617
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1622
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 1614
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1611
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showIndicator(ZZ)V
    .locals 0
    .parameter "visible"
    .parameter "animation"

    .prologue
    .line 1632
    return-void
.end method

.method private updateCancelButtonImage(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 1662
    if-nez p1, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1666
    :goto_0
    return-void

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    const-string v1, "camera_stop_btn_pressed"

    const v2, 0x7f020096

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/PanoramaUI;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateIndicatorLocation(Z)V
    .locals 4
    .parameter "isSelfTimerOn"

    .prologue
    .line 1674
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-nez v2, :cond_1

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 1678
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1680
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    .line 1681
    .local v1, rotation:Lcom/android/camera/rotate/UIRotation;
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1682
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1683
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    const v3, 0x7f0b0081

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1686
    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1685
    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    const v3, 0x7f0b0080

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    goto :goto_1

    .line 1686
    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private updateIndicatorOrientation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 6
    .parameter "rotation"

    .prologue
    .line 1696
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-nez v2, :cond_0

    .line 1719
    :goto_0
    return-void

    .line 1700
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1701
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1702
    .local v0, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1704
    const v2, 0x7f0b007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1705
    const v2, 0x7f0b007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1712
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1715
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Duration;

    invoke-virtual {v2}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorLocation(Z)V

    .line 1718
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v2, p1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 1709
    :cond_1
    const v2, 0x7f0b007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1710
    const v2, 0x7f0b007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 1715
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private updatePreviewThumbnailDirection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1727
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1728
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    packed-switch v1, :pswitch_data_0

    .line 1737
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1740
    :goto_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1741
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1744
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_0

    .line 1745
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    .line 1746
    :cond_0
    return-void

    .line 1731
    :pswitch_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1734
    :pswitch_1
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1728
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreviewThumbnailSize(IF)V
    .locals 3
    .parameter "captureIndex"
    .parameter "delta"

    .prologue
    .line 1754
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    packed-switch v1, :pswitch_data_0

    .line 1761
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1762
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getThumbnailWidth()I

    move-result v1

    int-to-float v1, v1

    add-int/lit8 v2, p1, 0x1

    int-to-float v2, v2

    add-float/2addr v2, p2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1765
    .local v0, height:I
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1766
    return-void

    .line 1758
    .end local v0           #height:I
    :pswitch_1
    neg-float p2, p2

    goto :goto_0

    .line 1754
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->exitPanoramaMode()V

    .line 280
    :cond_0
    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    .line 281
    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionProvider:Lcom/android/camera/component/PanoramaResolutionProvider;

    .line 284
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 285
    return-void
.end method

.method public enterPanoramaMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 292
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "enterPanoramaMode() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v2, :cond_0

    .line 296
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Re-enter panorama mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    .line 300
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->linkToController()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 301
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 306
    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionProvider:Lcom/android/camera/component/PanoramaResolutionProvider;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionProviderHandle:Lcom/android/camera/Handle;

    if-nez v2, :cond_1

    .line 308
    const-class v2, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/PanoramaUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ICaptureResolutionManager;

    .line 309
    .local v1, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-eqz v1, :cond_5

    .line 311
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionProvider:Lcom/android/camera/component/PanoramaResolutionProvider;

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ICaptureResolutionManager;->setPhotoResolutionProvider(Lcom/android/camera/IPhotoResolutionProvider;Z)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionProviderHandle:Lcom/android/camera/Handle;

    .line 312
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionProviderHandle:Lcom/android/camera/Handle;

    if-eqz v2, :cond_4

    .line 313
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "enterPanoramaMode() - Resolution provider changed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v1           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 323
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isZoomingSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 324
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->lockZoom()V

    .line 327
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->initializeUI()V

    .line 330
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->openCaptureUI()V

    .line 333
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    .line 336
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableSelfTimer()V

    .line 338
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "enterPanoramaMode() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void

    .line 303
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot link to panorama controller"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    .restart local v1       #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "enterPanoramaMode() - Cannot change resolution provider"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "enterPanoramaMode() - No ICaptureResolutionManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exitPanoramaMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 346
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "exitPanoramaMode() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Re-exit panorama mode"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionProviderHandle:Lcom/android/camera/Handle;

    if-eqz v2, :cond_1

    .line 358
    const-class v2, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/PanoramaUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ICaptureResolutionManager;

    .line 359
    .local v1, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-eqz v1, :cond_3

    .line 361
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionProviderHandle:Lcom/android/camera/Handle;

    iget-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ICaptureResolutionManager;->restorePhotoResolutionProvider(Lcom/android/camera/Handle;Z)V

    .line 362
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "exitPanoramaMode() - Resolution provider restored"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionProviderHandle:Lcom/android/camera/Handle;

    .line 367
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z

    .line 371
    .end local v1           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 373
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 374
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    .line 375
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/android/camera/component/PanoramaUI;->removeMessages(I)V

    .line 379
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsInternalExit:Z

    if-eqz v2, :cond_4

    .line 381
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Panorama InternalExit, return directly"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsInternalExit:Z

    .line 383
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    goto :goto_0

    .line 365
    .restart local v1       #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "exitPanoramaMode() - No ICaptureResolutionManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 388
    .end local v1           #resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->closeCaptureUI()V

    .line 391
    const/4 v2, 0x1

    invoke-direct {p0, v4, v2}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    .line 394
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    .line 397
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 398
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 401
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableSelfTimer()V

    .line 404
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    .line 405
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v2, :cond_6

    .line 406
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 411
    :goto_2
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isZoomingSupported()Z

    move-result v2

    if-nez v2, :cond_5

    .line 412
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->unlockZoom()V

    .line 415
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->collapseContentLayout()V

    .line 417
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "exitPanoramaMode() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot exit panorama mode because there is no panorama controller"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected getContentLayoutID()I
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-nez v0, :cond_0

    .line 429
    const v0, 0x7f030021

    .line 430
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030022

    goto :goto_0
.end method

.method public getThumbnailHeight()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 449
    .local v0, isWideScreenPhoto:Z
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidthWide:I

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 479
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 537
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 540
    :goto_0
    return-void

    .line 482
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onAborted(Lcom/android/camera/CaptureHandle;)V

    goto :goto_0

    .line 486
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    goto :goto_0

    .line 490
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onDirectionLocked(I)V

    goto :goto_0

    .line 494
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateCaptureStart(I)V

    goto :goto_0

    .line 498
    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateCaptureTimerCanceled(I)V

    goto :goto_0

    .line 502
    :sswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateCaptureTimerStarted(I)V

    goto :goto_0

    .line 506
    :sswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediatePhoto(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 510
    :sswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateShutter(I)V

    goto :goto_0

    .line 514
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onPreviewCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 518
    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onReviewImageCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 522
    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onStitchCompleted(Lcom/android/camera/CaptureHandle;)V

    goto :goto_0

    .line 526
    :sswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onStitchStarted(Z)V

    goto :goto_0

    .line 531
    :sswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 532
    .local v0, array:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/PanoramaUI;->onTracking(FF)V

    goto :goto_0

    .line 479
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_7
        0x6 -> :sswitch_6
        0x7 -> :sswitch_c
        0x8 -> :sswitch_8
        0x9 -> :sswitch_2
        0xa -> :sswitch_b
        0xb -> :sswitch_a
        0xc -> :sswitch_0
        0xd -> :sswitch_9
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 654
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 657
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->getPanoramaType()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    .line 660
    const-class v1, Lcom/android/camera/IBubbleToastManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IBubbleToastManager;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    .line 663
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 664
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 666
    const v1, 0x7f0b0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    .line 667
    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidthWide:I

    .line 668
    const v1, 0x7f0b0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    .line 678
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->registerEventListeners()V

    .line 681
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->setupPropertyChangedCallbacks()V

    .line 682
    return-void

    .line 657
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 672
    .restart local v0       #res:Landroid/content/res/Resources;
    :cond_1
    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    .line 673
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidthWide:I

    .line 674
    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    goto :goto_1
.end method

.method public isPanoramaModeEntered()Z
    .locals 1

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    return v0
.end method

.method public final stopCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1640
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 1655
    :goto_0
    return-void

    .line 1644
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    .line 1647
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideSweepIndicator()V

    .line 1650
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    .line 1651
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v0, :cond_1

    .line 1652
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 1654
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot stop capturing because there is no panorama controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
