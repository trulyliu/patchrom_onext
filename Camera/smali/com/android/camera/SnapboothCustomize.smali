.class public Lcom/android/camera/SnapboothCustomize;
.super Ljava/lang/Object;
.source "SnapboothCustomize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SnapboothCustomize$SnapboothEffects;
    }
.end annotation


# static fields
.field public static CAPTURE_IMG_HEIGHT:I

.field public static CAPTURE_IMG_WIDTH:I

.field private static final EffectIconID_FourShots:[I

.field private static final EffectIconID_OneShot:[I

.field public static PREVIEW_HEIGHT:I

.field public static PREVIEW_LANDSCAPE_LEFT:I

.field public static PREVIEW_LANDSCAPE_TOP:I

.field public static PREVIEW_PORTRAIT_LEFT:I

.field public static PREVIEW_PORTRAIT_TOP:I

.field public static PREVIEW_WIDTH:I

.field public static REVIEW_HEIGHT:I

.field public static REVIEW_IMAGE_ANIMATION_DX_LAND:I

.field public static REVIEW_IMAGE_ANIMATION_DX_PORT:I

.field public static REVIEW_IMAGE_ANIMATION_DY_LAND:I

.field public static REVIEW_IMAGE_ANIMATION_DY_PORT:I

.field public static REVIEW_IMAGE_HEIGHT:I

.field public static REVIEW_IMAGE_LEFT_LAND:I

.field public static REVIEW_IMAGE_LEFT_PORT:I

.field public static REVIEW_IMAGE_SHADOW_BOTTOM_LAND:I

.field public static REVIEW_IMAGE_SHADOW_BOTTOM_PORT:I

.field public static REVIEW_IMAGE_SHADOW_LEFT_LAND:I

.field public static REVIEW_IMAGE_SHADOW_LEFT_PORT:I

.field public static REVIEW_IMAGE_SHADOW_RIGHT_LAND:I

.field public static REVIEW_IMAGE_SHADOW_RIGHT_PORT:I

.field public static REVIEW_IMAGE_SHADOW_TOP_LAND:I

.field public static REVIEW_IMAGE_SHADOW_TOP_PORT:I

.field public static REVIEW_IMAGE_SQUARE_LEFT_LAND:I

.field public static REVIEW_IMAGE_SQUARE_LEFT_PORT:I

.field public static REVIEW_IMAGE_SQUARE_SIZE:I

.field public static REVIEW_IMAGE_SQUARE_TOP_LAND:I

.field public static REVIEW_IMAGE_SQUARE_TOP_PORT:I

.field public static REVIEW_IMAGE_TOP_LAND:I

.field public static REVIEW_IMAGE_TOP_PORT:I

.field public static REVIEW_IMAGE_WIDTH:I

.field public static REVIEW_SCREEN_BUTTONS_BOTTOM_LAND:I

.field public static REVIEW_SCREEN_BUTTONS_BOTTOM_PORT:I

.field public static REVIEW_SCREEN_BUTTONS_LEFT_LAND:I

.field public static REVIEW_SCREEN_BUTTONS_LEFT_PORT:I

.field public static REVIEW_SCREEN_BUTTONS_WIDTH_LAND:I

.field public static REVIEW_SCREEN_BUTTONS_WIDTH_PORT:I

.field public static REVIEW_SCREEN_BUTTON_HEIGHT:I

.field public static REVIEW_SCREEN_BUTTON_WIDTH:I

.field public static REVIEW_WIDTH:I

.field private static final SnapboothEffectButton:[I

.field private static final SnapboothEffectIcon:[I

.field private static final SnapboothEffectLayout:[I

.field private static final SnapboothEffectMessage:[I

.field public static THUMBNAIL_IMG_DIFF:I

.field public static THUMBNAIL_IMG_HEIGHT:I

.field public static THUMBNAIL_IMG_WIDTH:I

.field public static VIEWFINDER_COVER_LEFT_LAND:I

.field public static VIEWFINDER_COVER_LEFT_PORT:I

.field public static VIEWFINDER_COVER_TOP_LAND:I

.field public static VIEWFINDER_COVER_TOP_PORT:I

.field private static mNumCountBubble:I

.field private static mNumCountDown:I


# instance fields
.field private mActivityCover:Landroid/view/View;

.field private mBackground:Landroid/view/View;

.field mFirstEffectsInPort:I

.field private mGalleryBtnClickListener:Landroid/view/View$OnClickListener;

.field private mGalleryLandscapeButton:Landroid/widget/ImageButton;

.field private mGalleryPortraitButton:Landroid/widget/ImageButton;

.field private mHeaderContainer:Landroid/view/View;

.field private mIsMultiShutter:Z

.field private mLandAnimationThumbnail:Landroid/widget/ImageView;

.field private mLandCountBubble:[Landroid/widget/ImageView;

.field private mLandCountdown:[Landroid/widget/ImageView;

.field private mLandEffectButtons:[Landroid/widget/ImageButton;

.field private mLandEffectIcons:[Landroid/widget/ImageView;

.field private mLandShutterBtn:Landroid/widget/Button;

.field private mLandSwitchButton:Landroid/widget/ImageButton;

.field private mLandSwitchButtonText:Landroid/widget/TextView;

.field private mLandthumbnail:Landroid/widget/ImageView;

.field mMaxEffectSize:I

.field private mPortAnimationThumbnail:Landroid/widget/ImageView;

.field private mPortCountBubble:[Landroid/widget/ImageView;

.field private mPortCountdown:[Landroid/widget/ImageView;

.field private mPortEffectButtons:[Landroid/widget/ImageButton;

.field private mPortEffectIcons:[Landroid/widget/ImageView;

.field private mPortShutterBtn:Landroid/widget/Button;

.field private mPortSwitchButton:Landroid/widget/ImageButton;

.field private mPortSwitchButtonText:Landroid/widget/TextView;

.field private mPortthumbnail:Landroid/widget/ImageView;

.field private mPreviewCover:Landroid/view/View;

.field private mPreviewFilter:Landroid/view/View;

.field private mPreviewSurface:Landroid/view/SurfaceView;

.field private mReviewImg:Landroid/widget/ImageView;

.field private mReviewImgContainer:Landroid/view/View;

.field private mReviewScreenButtons:[Landroid/view/View;

.field private mReviewScreenButtonsPanel:Landroid/view/View;

.field private mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

.field private mThreadHandler:Landroid/os/Handler;

.field private mViewfinderCover:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 33
    const/16 v0, 0x2d0

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_WIDTH:I

    .line 34
    const/16 v0, 0x4d0

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_HEIGHT:I

    .line 35
    const/16 v0, 0x6d

    sput v0, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_WIDTH:I

    .line 36
    const/16 v0, 0x60

    sput v0, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_HEIGHT:I

    .line 37
    sget v0, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_WIDTH:I

    sget v1, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_DIFF:I

    .line 38
    const/16 v0, 0x157

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_WIDTH:I

    .line 39
    const/16 v0, 0x262

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_HEIGHT:I

    .line 40
    const/16 v0, 0x83

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_LEFT:I

    .line 41
    const/16 v0, 0x3c

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_TOP:I

    .line 42
    const/16 v0, 0xb8

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_LEFT:I

    .line 43
    const/16 v0, 0xcf

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_TOP:I

    .line 71
    const/16 v0, 0x112

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTON_WIDTH:I

    .line 72
    const/16 v0, 0x31

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTON_HEIGHT:I

    .line 73
    const/16 v0, 0x238

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_LAND:I

    .line 74
    const/16 v0, 0x22e

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_PORT:I

    .line 75
    const/16 v0, 0x30

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_LAND:I

    .line 76
    const/16 v0, 0x85

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_PORT:I

    .line 77
    const/16 v0, 0xe4

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_LAND:I

    .line 78
    const/16 v0, 0x16

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_PORT:I

    .line 138
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    .line 139
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    .line 143
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectMessage:[I

    .line 156
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectLayout:[I

    .line 169
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectButton:[I

    .line 182
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectIcon:[I

    .line 195
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->EffectIconID_OneShot:[I

    .line 207
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->EffectIconID_FourShots:[I

    return-void

    .line 143
    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 156
    :array_1
    .array-data 0x4
        0x2dt 0x1t 0x8t 0x7ft
        0x30t 0x1t 0x8t 0x7ft
        0x33t 0x1t 0x8t 0x7ft
        0x36t 0x1t 0x8t 0x7ft
        0x39t 0x1t 0x8t 0x7ft
        0x3ct 0x1t 0x8t 0x7ft
        0x3ft 0x1t 0x8t 0x7ft
        0x42t 0x1t 0x8t 0x7ft
        0x45t 0x1t 0x8t 0x7ft
    .end array-data

    .line 169
    :array_2
    .array-data 0x4
        0x2ft 0x1t 0x8t 0x7ft
        0x32t 0x1t 0x8t 0x7ft
        0x35t 0x1t 0x8t 0x7ft
        0x38t 0x1t 0x8t 0x7ft
        0x3bt 0x1t 0x8t 0x7ft
        0x3et 0x1t 0x8t 0x7ft
        0x41t 0x1t 0x8t 0x7ft
        0x44t 0x1t 0x8t 0x7ft
        0x47t 0x1t 0x8t 0x7ft
    .end array-data

    .line 182
    :array_3
    .array-data 0x4
        0x2et 0x1t 0x8t 0x7ft
        0x31t 0x1t 0x8t 0x7ft
        0x34t 0x1t 0x8t 0x7ft
        0x37t 0x1t 0x8t 0x7ft
        0x3at 0x1t 0x8t 0x7ft
        0x3dt 0x1t 0x8t 0x7ft
        0x40t 0x1t 0x8t 0x7ft
        0x43t 0x1t 0x8t 0x7ft
        0x46t 0x1t 0x8t 0x7ft
    .end array-data

    .line 195
    :array_4
    .array-data 0x4
        0xe9t 0x0t 0x2t 0x7ft
        0xe4t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
        0xe7t 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 207
    :array_5
    .array-data 0x4
        0xdft 0x0t 0x2t 0x7ft
        0xdat 0x0t 0x2t 0x7ft
        0xe0t 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
        0xdbt 0x0t 0x2t 0x7ft
        0xddt 0x0t 0x2t 0x7ft
        0xe1t 0x0t 0x2t 0x7ft
        0xe2t 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/HTCSnapbooth;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .parameter "activity"
    .parameter "UIhandler"
    .parameter "Threadhandler"

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    .line 29
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/SnapboothCustomize;->mFirstEffectsInPort:I

    .line 90
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    .line 91
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mThreadHandler:Landroid/os/Handler;

    .line 101
    new-instance v1, Lcom/android/camera/SnapboothCustomize$1;

    invoke-direct {v1, p0}, Lcom/android/camera/SnapboothCustomize$1;-><init>(Lcom/android/camera/SnapboothCustomize;)V

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryBtnClickListener:Landroid/view/View$OnClickListener;

    .line 108
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    .line 109
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    .line 110
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mLandthumbnail:Landroid/widget/ImageView;

    .line 111
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mLandAnimationThumbnail:Landroid/widget/ImageView;

    .line 112
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mPortthumbnail:Landroid/widget/ImageView;

    .line 113
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mPortAnimationThumbnail:Landroid/widget/ImageView;

    .line 114
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    .line 115
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    .line 120
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    .line 121
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    .line 122
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    .line 123
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    .line 125
    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    new-array v1, v1, [Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    .line 126
    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectIcons:[Landroid/widget/ImageView;

    .line 127
    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    new-array v1, v1, [Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    .line 128
    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectIcons:[Landroid/widget/ImageView;

    .line 130
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    .line 131
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImg:Landroid/widget/ImageView;

    .line 132
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    .line 133
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    .line 134
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtons:[Landroid/view/View;

    .line 136
    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mActivityCover:Landroid/view/View;

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z

    .line 234
    iput-object p1, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    .line 235
    iput-object p3, p0, Lcom/android/camera/SnapboothCustomize;->mThreadHandler:Landroid/os/Handler;

    .line 238
    invoke-virtual {p1}, Lcom/android/camera/HTCSnapbooth;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 239
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    .line 240
    const v1, 0x7f0b019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    .line 241
    const v1, 0x7f0b019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->PREVIEW_WIDTH:I

    .line 242
    const v1, 0x7f0b01a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->PREVIEW_HEIGHT:I

    .line 243
    const v1, 0x7f0b01a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_LEFT:I

    .line 244
    const v1, 0x7f0b01a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_TOP:I

    .line 245
    const v1, 0x7f0b01a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_LEFT:I

    .line 246
    const v1, 0x7f0b01a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_TOP:I

    .line 248
    const v1, 0x7f0b01af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_WIDTH:I

    .line 249
    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_HEIGHT:I

    .line 250
    const v1, 0x7f0b01b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_LEFT_PORT:I

    .line 251
    const v1, 0x7f0b01b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_TOP_PORT:I

    .line 252
    const v1, 0x7f0b01b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_LEFT_LAND:I

    .line 253
    const v1, 0x7f0b01b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_TOP_LAND:I

    .line 255
    const v1, 0x7f0b01b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_LAND:I

    .line 256
    const v1, 0x7f0b01b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_LAND:I

    .line 257
    const v1, 0x7f0b01b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_RIGHT_LAND:I

    .line 258
    const v1, 0x7f0b01b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_BOTTOM_LAND:I

    .line 259
    const v1, 0x7f0b01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_PORT:I

    .line 260
    const v1, 0x7f0b01ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_PORT:I

    .line 261
    const v1, 0x7f0b01bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_RIGHT_PORT:I

    .line 262
    const v1, 0x7f0b01bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_BOTTOM_PORT:I

    .line 264
    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SIZE:I

    .line 265
    const v1, 0x7f0b01c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_LEFT_LAND:I

    .line 266
    const v1, 0x7f0b01c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_TOP_LAND:I

    .line 267
    const v1, 0x7f0b01be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_LEFT_PORT:I

    .line 268
    const v1, 0x7f0b01bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_TOP_PORT:I

    .line 270
    const v1, 0x7f0b01c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTON_WIDTH:I

    .line 271
    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTON_HEIGHT:I

    .line 272
    const v1, 0x7f0b01c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_PORT:I

    .line 273
    const v1, 0x7f0b01c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_LAND:I

    .line 274
    const v1, 0x7f0b01c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_PORT:I

    .line 275
    const v1, 0x7f0b01c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_PORT:I

    .line 276
    const v1, 0x7f0b01c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_LAND:I

    .line 277
    const v1, 0x7f0b01ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_LAND:I

    .line 279
    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_LEFT_LAND:I

    .line 280
    const v1, 0x7f0b01ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_TOP_LAND:I

    .line 281
    const v1, 0x7f0b01ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_LEFT_PORT:I

    .line 282
    const v1, 0x7f0b01ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_TOP_PORT:I

    .line 284
    const v1, 0x7f0b01cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DX_LAND:I

    .line 285
    const v1, 0x7f0b01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DY_LAND:I

    .line 286
    const v1, 0x7f0b01cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DX_PORT:I

    .line 287
    const v1, 0x7f0b01ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DY_PORT:I

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SnapboothCustomize;)Lcom/android/camera/HTCSnapbooth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/SnapboothCustomize;Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/SnapboothCustomize;->handleTouchEventForSkinnedView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/SnapboothCustomize;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/SnapboothCustomize;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z

    return p1
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectMessage:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/SnapboothCustomize;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private applySkinToClickableView(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "cusResID"
    .parameter "defaultResID"

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    .line 323
    return-void
.end method

.method private applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .parameter "view"
    .parameter "background"
    .parameter "cusResID"
    .parameter "defaultResID"

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, p3, p4}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 327
    .local v0, backgroundPressed:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/camera/SnapboothCustomize$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/camera/SnapboothCustomize$2;-><init>(Lcom/android/camera/SnapboothCustomize;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    return-void
.end method

.method public static getSnapbooth()I
    .locals 1

    .prologue
    .line 1212
    const v0, 0x7f030039

    return v0
.end method

.method public static getSnapboothFrame(I)I
    .locals 1
    .parameter "num"

    .prologue
    .line 1237
    packed-switch p0, :pswitch_data_0

    .line 1248
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1240
    :pswitch_0
    const v0, 0x7f0200f5

    goto :goto_0

    .line 1242
    :pswitch_1
    const v0, 0x7f0200f6

    goto :goto_0

    .line 1244
    :pswitch_2
    const v0, 0x7f0200f7

    goto :goto_0

    .line 1246
    :pswitch_3
    const v0, 0x7f0200f8

    goto :goto_0

    .line 1237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSnapboothLayout()I
    .locals 1

    .prologue
    .line 1217
    const v0, 0x7f080108

    return v0
.end method

.method public static getSnapboothMainLayout()I
    .locals 1

    .prologue
    .line 1222
    const v0, 0x7f08010e

    return v0
.end method

.method public static getSnapboothReviewLayout()I
    .locals 1

    .prologue
    .line 1232
    const v0, 0x7f080110

    return v0
.end method

.method public static getSnapboothSecondLayout()I
    .locals 1

    .prologue
    .line 1227
    const v0, 0x7f080112

    return v0
.end method

.method private handleTouchEventForSkinnedView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .parameter "view"
    .parameter "mv"
    .parameter "background"
    .parameter "backgroundPressed"

    .prologue
    .line 296
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 297
    .local v0, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 298
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-gt v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 300
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    const/4 v2, 0x1

    .line 314
    :goto_0
    return v2

    .line 305
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 314
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 308
    :pswitch_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 311
    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public disableCountBubbles()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 971
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    if-ge v0, v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 974
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 976
    :cond_0
    return-void
.end method

.method public disableCountdowns(Lcom/android/camera/rotate/UIRotation;)V
    .locals 3
    .parameter "rotation"

    .prologue
    const/4 v2, 0x4

    .line 889
    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    if-ge v0, v1, :cond_1

    .line 893
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    if-ge v0, v1, :cond_1

    .line 900
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 903
    :cond_1
    return-void
.end method

.method public enableCountBubble(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 954
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    if-ge v0, v1, :cond_1

    .line 956
    add-int/lit8 v1, p1, -0x1

    if-eq v0, v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 959
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 954
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 963
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 964
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 967
    :cond_1
    return-void
.end method

.method public enableCountdown(ILcom/android/camera/rotate/UIRotation;)V
    .locals 4
    .parameter "index"
    .parameter "rotation"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 857
    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 859
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    if-ge v0, v1, :cond_3

    .line 861
    add-int/lit8 v1, p1, -0x1

    if-eq v0, v1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 859
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 873
    .end local v0           #i:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    if-ge v0, v1, :cond_3

    .line 875
    add-int/lit8 v1, p1, -0x1

    if-eq v0, v1, :cond_2

    .line 877
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 873
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 881
    :cond_2
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 885
    :cond_3
    return-void
.end method

.method public enableGalleryButton(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 459
    .local v0, visibility:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 462
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 464
    if-eqz p1, :cond_0

    goto :goto_0

    .line 458
    .end local v0           #visibility:I
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public getLandGalleryAnimationThumbnail()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandAnimationThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLandGalleryButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getLandGalleryThumbnail()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandthumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLandReviewImg()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLandShutterBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getPortGalleryAnimationThumbnail()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortAnimationThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPortGalleryButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPortGalleryThumbnail()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortthumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPortShutterBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getReviewScreenButtons()[Landroid/view/View;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtons:[Landroid/view/View;

    return-object v0
.end method

.method public getReviewScreenButtonsPanel()Landroid/view/View;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    return-object v0
.end method

.method public getScreenSaveLayout()Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f080115

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method public getScreenSaveTouchReceiver()Landroid/view/View;
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f080117

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewfinderCover()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hideViewfinderCover(Z)V
    .locals 5
    .parameter "showAnimation"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1061
    if-eqz p1, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    .line 1064
    :cond_0
    return-void
.end method

.method public initLandCountBubbleLayer(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "parent"

    .prologue
    const v6, 0x7f08011f

    .line 908
    const v3, 0x7f080157

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 909
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 910
    .local v1, landscapeLayer:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 912
    const v3, 0x7f08011d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 913
    .local v0, countBubbleLayer:Landroid/view/View;
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 915
    const v3, 0x7f080120

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 916
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 918
    const v3, 0x7f080121

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 919
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 921
    const v3, 0x7f080122

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 922
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x3

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 924
    return-object v1
.end method

.method public initLandCountdownLayer(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "parent"

    .prologue
    const v6, 0x7f080126

    .line 814
    const v3, 0x7f080153

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 815
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 817
    .local v1, landscapeLayer:Landroid/view/View;
    const v3, 0x7f080124

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 819
    .local v0, countdownLayer:Landroid/view/View;
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 821
    const v3, 0x7f080127

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 823
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 825
    const v3, 0x7f080128

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 827
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 829
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 831
    return-object v1
.end method

.method public initLandEffectBar(Landroid/view/View;)Landroid/view/View;
    .locals 12
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 618
    const v6, 0x7f080166

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    .line 619
    .local v5, stub:Landroid/view/ViewStub;
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    .line 621
    .local v3, landscapePanel:Landroid/view/View;
    const v6, 0x7f080129

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 622
    .local v0, bar:Landroid/view/View;
    const v6, 0x7f08012a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 624
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f08012b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    .line 625
    const v6, 0x7f08012c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButtonText:Landroid/widget/TextView;

    .line 626
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButtonText:Landroid/widget/TextView;

    const v7, 0x7f0a01f9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 627
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v6}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v6

    if-nez v6, :cond_0

    .line 629
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    const v7, 0x7f0a0030

    const v8, 0x7f0200f3

    invoke-direct {p0, v6, v7, v8}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    .line 630
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    const v7, 0x7f0200f1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 631
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 632
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/camera/SnapboothCustomize$3;

    invoke-direct {v7, p0}, Lcom/android/camera/SnapboothCustomize$3;-><init>(Lcom/android/camera/SnapboothCustomize;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v6, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    if-ge v1, v6, :cond_1

    .line 654
    move v2, v1

    .line 655
    .local v2, index:I
    sget-object v6, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectLayout:[I

    aget v6, v6, v2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 657
    iget-object v7, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectIcons:[Landroid/widget/ImageView;

    sget-object v6, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectIcon:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v7, v1

    .line 658
    iget-object v7, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    sget-object v6, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectButton:[I

    aget v6, v6, v2

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    aput-object v6, v7, v1

    .line 659
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v6, v6, v1

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 660
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v6, v6, v1

    const v7, 0x7f0a002d

    const v8, 0x7f0200d8

    invoke-direct {p0, v6, v11, v7, v8}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    .line 662
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v6, v6, v1

    new-instance v7, Lcom/android/camera/SnapboothCustomize$4;

    invoke-direct {v7, p0, v2}, Lcom/android/camera/SnapboothCustomize$4;-><init>(Lcom/android/camera/SnapboothCustomize;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 646
    .end local v1           #i:I
    .end local v2           #index:I
    :cond_0
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    const v7, 0x7f0200ee

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 647
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    const v7, 0x7f0200f2

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 648
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 649
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButtonText:Landroid/widget/TextView;

    const v7, -0x777778

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 676
    .restart local v1       #i:I
    :cond_1
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v8, 0x7f0a002e

    const v9, 0x7f0200d5

    invoke-static {v7, v8, v9}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 677
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v6, v6, v10

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 679
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 681
    return-object v3
.end method

.method public initLandGalleryBar(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 491
    const v3, 0x7f08014f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 492
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 494
    .local v1, landGalleryLayout:Landroid/view/View;
    const v3, 0x7f080149

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 496
    .local v0, gallery:Landroid/view/View;
    const v3, 0x7f08014b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mLandthumbnail:Landroid/widget/ImageView;

    .line 497
    const v3, 0x7f08014c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mLandAnimationThumbnail:Landroid/widget/ImageView;

    .line 499
    const v3, 0x7f08014d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    .line 500
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 501
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 503
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    const v4, 0x7f0a002f

    const v5, 0x7f0200fc

    invoke-direct {p0, v3, v6, v4, v5}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    .line 505
    return-object v1
.end method

.method public initLandShutterBar(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "parent"

    .prologue
    .line 562
    const v3, 0x7f080168

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 563
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 564
    .local v0, landShutterLayout:Landroid/view/View;
    const v3, 0x7f080119

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 569
    .local v1, layout:Landroid/view/View;
    const v3, 0x7f08011b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    .line 570
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    const v4, 0x7f0a002b

    const v5, 0x7f020105

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    .line 572
    return-object v0
.end method

.method public initPortCountBubbleLayer(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "parent"

    .prologue
    const v6, 0x7f08011f

    .line 929
    const v3, 0x7f080159

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 930
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 931
    .local v1, portraitLayer:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 933
    const v3, 0x7f08011d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, countBubbleLayer:Landroid/view/View;
    move-object v3, v0

    .line 934
    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 935
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 937
    const v3, 0x7f080120

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    .line 938
    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 939
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 941
    const v3, 0x7f080121

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    .line 942
    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 943
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 945
    const v3, 0x7f080122

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    .line 946
    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 947
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x3

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 949
    return-object v1
.end method

.method public initPortCountdownLayer(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "parent"

    .prologue
    const v6, 0x7f080126

    .line 836
    const v3, 0x7f080155

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 837
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 839
    .local v1, portraitLayer:Landroid/view/View;
    const v3, 0x7f080124

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 840
    .local v0, countdownLayer:Lcom/android/camera/rotate/RotateRelativeLayout;
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 841
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    invoke-virtual {v0, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 843
    const v3, 0x7f080127

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #countdownLayer:Lcom/android/camera/rotate/RotateRelativeLayout;
    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 844
    .restart local v0       #countdownLayer:Lcom/android/camera/rotate/RotateRelativeLayout;
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 845
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v0, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 847
    const v3, 0x7f080128

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #countdownLayer:Lcom/android/camera/rotate/RotateRelativeLayout;
    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 848
    .restart local v0       #countdownLayer:Lcom/android/camera/rotate/RotateRelativeLayout;
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 849
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 851
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 852
    return-object v1
.end method

.method public initPortEffectBar(Landroid/view/View;)Landroid/view/View;
    .locals 11
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 686
    const v5, 0x7f08016a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    .line 687
    .local v4, stub:Landroid/view/ViewStub;
    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    .line 689
    .local v3, portraitPanel:Landroid/view/View;
    const v5, 0x7f08012a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, container:Landroid/view/View;
    move-object v5, v0

    .line 690
    check-cast v5, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v6, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 692
    const v5, 0x7f08012b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    .line 693
    const v5, 0x7f08012c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButtonText:Landroid/widget/TextView;

    .line 694
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButtonText:Landroid/widget/TextView;

    const v6, 0x7f0a01f9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 695
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v5}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v5

    if-nez v5, :cond_1

    .line 697
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    const v6, 0x7f0a0030

    const v7, 0x7f0200f3

    invoke-direct {p0, v5, v6, v7}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    .line 698
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 699
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    const v6, 0x7f0200f1

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 700
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/camera/SnapboothCustomize$5;

    invoke-direct {v6, p0}, Lcom/android/camera/SnapboothCustomize$5;-><init>(Lcom/android/camera/SnapboothCustomize;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v5, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    if-ge v1, v5, :cond_2

    .line 722
    move v2, v1

    .line 724
    .local v2, index:I
    sget-object v5, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectLayout:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 725
    instance-of v5, v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 726
    check-cast v5, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v6, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 728
    :cond_0
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectIcons:[Landroid/widget/ImageView;

    sget-object v5, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectIcon:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v1

    .line 729
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    sget-object v5, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectButton:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    aput-object v5, v6, v1

    .line 730
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v5, v5, v1

    invoke-virtual {v5, v10}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v5, v5, v1

    const v6, 0x7f0a002d

    const v7, 0x7f0200d8

    invoke-direct {p0, v5, v10, v6, v7}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    .line 733
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v5, v5, v1

    new-instance v6, Lcom/android/camera/SnapboothCustomize$6;

    invoke-direct {v6, p0, v2}, Lcom/android/camera/SnapboothCustomize$6;-><init>(Lcom/android/camera/SnapboothCustomize;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 714
    .end local v1           #i:I
    .end local v2           #index:I
    :cond_1
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    const v6, 0x7f0200ee

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 715
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    const v6, 0x7f0200f2

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 716
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 717
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButtonText:Landroid/widget/TextView;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 747
    .restart local v1       #i:I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v7, 0x7f0a002e

    const v8, 0x7f0200d5

    invoke-static {v6, v7, v8}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 748
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v5, v5, v9

    invoke-virtual {v5, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 750
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 752
    return-object v3
.end method

.method public initPortGalleryBar(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 525
    const v3, 0x7f080151

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 526
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 528
    .local v1, portGalleryLayout:Landroid/view/View;
    const v3, 0x7f080149

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, gallery:Landroid/view/View;
    move-object v3, v0

    .line 529
    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 531
    const v3, 0x7f08014b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPortthumbnail:Landroid/widget/ImageView;

    .line 532
    const v3, 0x7f08014c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPortAnimationThumbnail:Landroid/widget/ImageView;

    .line 534
    const v3, 0x7f08014d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    .line 535
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 536
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    const v4, 0x7f0a002f

    const v5, 0x7f0200fc

    invoke-direct {p0, v3, v6, v4, v5}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    .line 540
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 541
    return-object v1
.end method

.method public initPortShutterBar(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 582
    const v2, 0x7f08016c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 583
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, portShutterLayout:Landroid/view/View;
    const v2, 0x7f08011b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    .line 586
    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    const v3, 0x7f0a002b

    const v4, 0x7f020105

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    .line 588
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 589
    return-object v0
.end method

.method public initPreviewSurface()Landroid/view/SurfaceView;
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewSurface:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f080109

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewSurface:Landroid/view/SurfaceView;

    .line 365
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f08010a

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewCover:Landroid/view/View;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public initReviewImage(Landroid/view/View;Z)Landroid/view/View;
    .locals 8
    .parameter "parent"
    .parameter "isMain"

    .prologue
    .line 981
    const v4, 0x7f080162

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    .line 983
    const v4, 0x7f080163

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    .line 984
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    const v5, 0x7f080164

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImg:Landroid/widget/ImageView;

    .line 987
    const v4, 0x7f080165

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 989
    if-eqz p2, :cond_0

    .line 990
    const v4, 0x7f08015c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    .line 993
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    const v7, 0x7f08015e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    const v7, 0x7f080160

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtons:[Landroid/view/View;

    .line 999
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v4, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtons:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1002
    .local v1, button:Landroid/view/View;
    const v4, 0x7f0a0031

    const v5, 0x7f020100

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    .line 1001
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 992
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #button:Landroid/view/View;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    const v4, 0x7f080161

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    goto :goto_0

    .line 1005
    :cond_1
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    return-object v4
.end method

.method public isMultiShutter()Z
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z

    return v0
.end method

.method public selectEffectIcon(I)V
    .locals 8
    .parameter "index"

    .prologue
    const v7, 0x7f0a002e

    const v6, 0x7f0a002d

    const v5, 0x7f0200d8

    const v4, 0x7f0200d5

    const/4 v3, 0x0

    .line 757
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    if-ge v0, v1, :cond_1

    .line 759
    if-eq v0, p1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 762
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 763
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v3, v6, v5}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    .line 764
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v3, v6, v5}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    .line 757
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v2, v7, v4}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 769
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v2, v7, v4}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 771
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 774
    :cond_1
    return-void
.end method

.method public setBackground(Z)V
    .locals 2
    .parameter "isLandscape"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mBackground:Landroid/view/View;

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f08010b

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mBackground:Landroid/view/View;

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mBackground:Landroid/view/View;

    if-eqz p1, :cond_4

    const v0, 0x7f02010a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 347
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mHeaderContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mHeaderContainer:Landroid/view/View;

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mHeaderContainer:Landroid/view/View;

    instance-of v0, v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mHeaderContainer:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz p1, :cond_5

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :cond_3
    return-void

    .line 344
    :cond_4
    const v0, 0x7f020108

    goto :goto_0

    .line 350
    :cond_5
    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    goto :goto_1
.end method

.method public setReviewButtonBounds(Z)V
    .locals 6
    .parameter "isLandscape"

    .prologue
    const/16 v5, 0xc

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 1159
    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1160
    .local v1, panelParent:Landroid/view/View;
    instance-of v2, v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v2, :cond_1

    .line 1161
    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    .end local v1           #panelParent:Landroid/view/View;
    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1193
    :goto_1
    return-void

    .line 1161
    :cond_0
    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    .line 1164
    .restart local v1       #panelParent:Landroid/view/View;
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1165
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_2

    .line 1167
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1168
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1169
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_LAND:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1170
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1171
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_LAND:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_LAND:I

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1191
    :goto_2
    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1180
    :cond_2
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1181
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1182
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1183
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_PORT:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1184
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_PORT:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_PORT:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method public setReviewImageBounds(Z)V
    .locals 7
    .parameter "isLandscape"

    .prologue
    const/4 v6, 0x0

    .line 1077
    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v2}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v0

    .line 1078
    .local v0, isSquare:Z
    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1079
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SIZE:I

    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1080
    if-eqz v0, :cond_1

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SIZE:I

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1081
    if-eqz p1, :cond_3

    .line 1083
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_LAND:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_RIGHT_LAND:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1084
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_LAND:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_BOTTOM_LAND:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1085
    if-eqz v0, :cond_2

    .line 1087
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_LEFT_LAND:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_LAND:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_TOP_LAND:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_LAND:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1127
    :goto_2
    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1130
    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1131
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_5

    .line 1133
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SIZE:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1134
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SIZE:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1154
    :goto_3
    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 1155
    return-void

    .line 1079
    :cond_0
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_WIDTH:I

    goto :goto_0

    .line 1080
    :cond_1
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_HEIGHT:I

    goto :goto_1

    .line 1096
    :cond_2
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_LEFT_LAND:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_LAND:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_TOP_LAND:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_LAND:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 1106
    :cond_3
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_PORT:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_BOTTOM_PORT:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1107
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_PORT:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_RIGHT_PORT:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1108
    if-eqz v0, :cond_4

    .line 1110
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_TOP_PORT:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_PORT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_LEFT_PORT:I

    sget v5, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_PORT:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 1119
    :cond_4
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_TOP_PORT:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_PORT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_LEFT_PORT:I

    sget v5, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_PORT:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 1139
    :cond_5
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_WIDTH:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1140
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_HEIGHT:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3
.end method

.method public setReviewImageShadow(ZZ)V
    .locals 2
    .parameter "isLandscape"
    .parameter "isSquare"

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const v0, 0x7f020101

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1072
    return-void

    .line 1071
    :cond_0
    const v0, 0x7f0200fd

    goto :goto_0
.end method

.method public setViewfinderCoverImage(Z)V
    .locals 2
    .parameter "isLandscape"

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f02010b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1016
    return-void

    .line 1015
    :cond_0
    const v0, 0x7f020109

    goto :goto_0
.end method

.method public showActivityCover(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mActivityCover:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f080118

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mActivityCover:Landroid/view/View;

    .line 1262
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mActivityCover:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1263
    return-void

    .line 1262
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showPreviewCover(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x0

    .line 422
    if-eqz p1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewCover:Landroid/view/View;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    goto :goto_0
.end method

.method public showViewfinderCover(ZZ)V
    .locals 8
    .parameter "isLandscape"
    .parameter "showAnimation"

    .prologue
    const/4 v7, 0x0

    .line 1021
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1022
    .local v2, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v3, 0x7f02010b

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1025
    .local v0, image:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1028
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1029
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 1031
    sget v3, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_LEFT_LAND:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_TOP_LAND:I

    invoke-virtual {v1, v3, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1047
    :goto_1
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    .line 1050
    if-eqz p2, :cond_2

    .line 1051
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/16 v6, 0xc8

    invoke-static {v3, v4, v5, v7, v6}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    .line 1054
    :goto_2
    return-void

    .line 1022
    .end local v0           #image:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const v3, 0x7f020109

    goto :goto_0

    .line 1040
    .restart local v0       #image:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    sget v3, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_TOP_PORT:I

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_LEFT_PORT:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 1053
    :cond_2
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public switchMultiBtn()V
    .locals 6

    .prologue
    const v5, 0x7f0a01fa

    const v4, 0x7f0a01f9

    const v3, 0x7f0200f1

    const v2, 0x7f0200f0

    .line 783
    iget-boolean v1, p0, Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 786
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 787
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 788
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 790
    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 792
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectIcons:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/camera/SnapboothCustomize;->EffectIconID_FourShots:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 793
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectIcons:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/camera/SnapboothCustomize;->EffectIconID_FourShots:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 790
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 798
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 799
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 800
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 801
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 803
    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 805
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectIcons:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/camera/SnapboothCustomize;->EffectIconID_OneShot:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 806
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectIcons:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/camera/SnapboothCustomize;->EffectIconID_OneShot:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 803
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 809
    :cond_1
    return-void
.end method

.method public switchShutterBtn(Z)V
    .locals 6
    .parameter "isCancelable"

    .prologue
    const v5, 0x7f0a002b

    const v4, 0x7f020106

    const v3, 0x7f020105

    const v1, 0x7f0200ca

    const v2, 0x7f0200c9

    .line 599
    if-nez p1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 602
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 603
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    invoke-direct {p0, v0, v5, v3}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    .line 604
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    invoke-direct {p0, v0, v5, v3}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    .line 613
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 609
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 610
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    const v1, 0x7f0a002c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    .line 611
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    const v1, 0x7f0a002c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public updatePreviewOrientation(Z)V
    .locals 5
    .parameter "isLandscape"

    .prologue
    .line 378
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 379
    .local v2, viewfinderHeight:I
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    if-nez v3, :cond_0

    .line 383
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v4, 0x7f08010c

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 384
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    .line 387
    .end local v1           #stub:Landroid/view/ViewStub;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 388
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_2

    .line 390
    sget v3, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_LEFT:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 391
    sget v3, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_TOP:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 398
    :goto_0
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 399
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 403
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 404
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_3

    .line 406
    sget v3, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_LEFT:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 407
    sget v3, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_TOP:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 414
    :goto_1
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->requestLayout()V

    .line 415
    return-void

    .line 395
    :cond_2
    sget v3, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_TOP:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 396
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sub-int/2addr v3, v2

    sget v4, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_LEFT:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 411
    :cond_3
    sget v3, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_TOP:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 412
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sub-int/2addr v3, v2

    sget v4, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_LEFT:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1
.end method
