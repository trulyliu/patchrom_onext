.class public final Lcom/android/camera/component/BurstUI;
.super Lcom/android/camera/component/UIComponent;
.source "BurstUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/BurstUI$9;
    }
.end annotation


# static fields
.field public static final MSG_ADD_CONTENT_URI:I = 0x5

.field public static final MSG_BURST_COMPLETED:I = 0x3

.field public static final MSG_CAPTURE_START:I = 0x1

.field public static final MSG_PHOTO_SAVED:I = 0x4

.field public static final MSG_THUMB_CREATED:I = 0x2

.field public static final NAME:Ljava/lang/String; = "Burst UI"


# instance fields
.field private linearLayoutThumbBar:Landroid/widget/LinearLayout;

.field m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

.field private m_BurstController:Lcom/android/camera/component/BurstController;

.field private m_CapturingInstanceID:J

.field private m_Inflater:Landroid/view/LayoutInflater;

.field private m_InstanceID:J

.field private m_IsModeEntered:Z

.field private m_IsResolutionSyncBackNeeded:Z

.field private m_IsRestartingPreviewNeeded:Z

.field private m_IsUIInitialized:Z

.field private m_RotateReviewScreenContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_StoredPictureUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

.field private m_ThumbnailHeight:I

.field private m_ThumbnailHeightWide:I

.field private m_ThumbnailWidth:I

.field private m_ThumbnailWidthWide:I

.field m_baseLayout:Landroid/view/View;

.field private m_burstReviewFrame:Landroid/widget/ImageView;

.field private m_burstReviewScreenHeightWide_l:I

.field private m_burstReviewScreenHeightWide_p:I

.field private m_burstReviewScreenHeight_l:I

.field private m_burstReviewScreenHeight_p:I

.field private m_burstReviewScreenWidthWide_p:I

.field private m_burstReviewScreenWidth_l:I

.field private m_burstReviewScreenWidth_p:I

.field private m_burstThumbBarHeight_l:I

.field private m_burstThumbBarHeight_p:I

.field private m_burstThumbBarPadding_l:I

.field private m_burstThumbBarPadding_p:I

.field private m_burstThumbBarWidth_l:I

.field private m_burstThumbBarWidth_p:I

.field private m_burstThumbItemMargin_l:I

.field private m_burstThumbItemMargin_p:I

.field private m_thumbItemsContainer:[Landroid/widget/RelativeLayout;

.field private m_thumbnailItemHeightController_l:I

.field private m_thumbnailItemHeightController_p:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 119
    const-string v0, "Burst UI"

    const/4 v1, 0x1

    const v2, 0x7f08004d

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->disableAutoInflateView()V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/BurstUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/BurstUI;Lcom/android/camera/widget/ImageCheckBox;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/component/BurstUI;->updateReviewScreenStatus(Lcom/android/camera/widget/ImageCheckBox;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/BurstUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/BurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/BurstUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->hideThumbnailBar()V

    return-void
.end method

.method static synthetic access$604(Lcom/android/camera/component/BurstUI;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/BurstUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/component/BurstUI;->showThunbmailBar(Z)V

    return-void
.end method

.method private getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method private hideThumbnailBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 349
    iget-boolean v5, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-nez v5, :cond_0

    .line 369
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 356
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    invoke-virtual {p0, v5, v7, v7}, Lcom/android/camera/component/BurstUI;->showUI(Landroid/view/View;ZZ)V

    .line 359
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    .local v0, arr$:[Lcom/android/camera/widget/ImageCheckBox;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 361
    .local v2, frame:Lcom/android/camera/widget/ImageCheckBox;
    invoke-virtual {v2}, Lcom/android/camera/widget/ImageCheckBox;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 362
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Lcom/android/camera/widget/ImageCheckBox;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    invoke-virtual {v2}, Lcom/android/camera/widget/ImageCheckBox;->getCheckBox()Lcom/htc/widget/HtcCheckBox;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 365
    invoke-static {v1}, Lcom/android/camera/imaging/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 368
    .end local v0           #arr$:[Lcom/android/camera/widget/ImageCheckBox;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #frame:Lcom/android/camera/widget/ImageCheckBox;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private initializeUI()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 436
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->prepareContentLayout()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    .line 439
    iget-boolean v4, p0, Lcom/android/camera/component/BurstUI;->m_IsUIInitialized:Z

    if-eqz v4, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    if-nez v4, :cond_2

    .line 444
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "initializeUI() - m_baseLayout is null"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_2
    iput-boolean v7, p0, Lcom/android/camera/component/BurstUI;->m_IsUIInitialized:Z

    .line 452
    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v5, 0x7f080014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v4, p0, Lcom/android/camera/component/BurstUI;->m_RotateReviewScreenContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 454
    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v5, 0x7f080016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    .line 456
    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v5, 0x7f080017

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/camera/component/BurstUI;->linearLayoutThumbBar:Landroid/widget/LinearLayout;

    .line 457
    const/4 v4, 0x5

    new-array v5, v4, [Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f080018

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v9

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08001a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v7

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08001c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v10

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08001e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v11

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f080020

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v8

    iput-object v5, p0, Lcom/android/camera/component/BurstUI;->m_thumbItemsContainer:[Landroid/widget/RelativeLayout;

    .line 466
    const/4 v4, 0x5

    new-array v5, v4, [Lcom/android/camera/widget/ImageCheckBox;

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f080019

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v9

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08001b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v7

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08001d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v10

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08001f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v11

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f080021

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v8

    iput-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    .line 473
    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    .local v0, arr$:[Lcom/android/camera/widget/ImageCheckBox;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 477
    .local v1, frame:Lcom/android/camera/widget/ImageCheckBox;
    new-instance v4, Lcom/android/camera/component/BurstUI$1;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/component/BurstUI$1;-><init>(Lcom/android/camera/component/BurstUI;Lcom/android/camera/widget/ImageCheckBox;)V

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/ImageCheckBox;->setOnClickChangedListener(Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;)V

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private onBurstCompleted()V
    .locals 4

    .prologue
    .line 511
    iget-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    iget-wide v2, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->notifyProcessingTakenPictures()V

    goto :goto_0
.end method

.method private onPhotoSaved(Lcom/android/camera/CaptureHandle;)V
    .locals 4
    .parameter "captureHandle"

    .prologue
    .line 527
    iget-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    iget-wide v2, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/HTCCamera;->completeTakingPicture(Lcom/android/camera/CaptureHandle;)V

    goto :goto_0
.end method

.method private onThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 19
    .parameter "index"
    .parameter "thumbnail"

    .prologue
    .line 545
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1

    .line 547
    if-eqz p2, :cond_0

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    if-eqz p2, :cond_2

    .line 555
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Lcom/android/camera/widget/ImageCheckBox;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    .line 557
    .local v7, imageView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v15

    iget v15, v15, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/camera/imaging/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 561
    .end local v7           #imageView:Landroid/widget/ImageView;
    :cond_2
    if-nez p1, :cond_0

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbnailWidth()I

    move-result v14

    .line 565
    .local v14, thumbWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbnailHeight()I

    move-result v12

    .line 566
    .local v12, thumbHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getBurstReviewHeight()I

    move-result v3

    .line 567
    .local v3, burstReviewHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getBurstReviewWidth()I

    move-result v4

    .line 570
    .local v4, burstReviewWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    .local v2, arr$:[Lcom/android/camera/widget/ImageCheckBox;
    array-length v9, v2

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v9, :cond_3

    aget-object v5, v2, v6

    .line 572
    .local v5, frame:Lcom/android/camera/widget/ImageCheckBox;
    invoke-virtual {v5}, Lcom/android/camera/widget/ImageCheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 573
    .local v8, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iput v14, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 574
    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 576
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/camera/widget/ImageCheckBox;->setCheck(Z)V

    .line 577
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/camera/widget/ImageCheckBox;->setFocus(Z)V

    .line 578
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/camera/widget/ImageCheckBox;->addImageUri(Landroid/net/Uri;)V

    .line 579
    invoke-virtual {v5}, Lcom/android/camera/widget/ImageCheckBox;->requestLayout()V

    .line 570
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 583
    .end local v5           #frame:Lcom/android/camera/widget/ImageCheckBox;
    .end local v8           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->linearLayoutThumbBar:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbBarWidth()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->linearLayoutThumbBar:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbBarHeight()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbBarPadding()I

    move-result v10

    .line 586
    .local v10, linearLayoutPadding:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->linearLayoutThumbBar:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbItemMargin()I

    move-result v13

    .line 590
    .local v13, thumbItemMargin:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/BurstUI;->m_thumbItemsContainer:[Landroid/widget/RelativeLayout;

    .local v2, arr$:[Landroid/widget/RelativeLayout;
    array-length v9, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_4

    aget-object v11, v2, v6

    .line 592
    .local v11, thumbContaiter:Landroid/widget/RelativeLayout;
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 593
    .local v8, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v14, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbnailItemControllerHeight()I

    move-result v15

    iput v15, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 595
    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 596
    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 597
    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 598
    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 599
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 590
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 601
    .end local v8           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11           #thumbContaiter:Landroid/widget/RelativeLayout;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    aget-object v15, v15, p1

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/widget/ImageCheckBox;->setCheck(Z)V

    .line 602
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    aget-object v15, v15, p1

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/widget/ImageCheckBox;->setFocus(Z)V

    .line 603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    if-eqz v15, :cond_5

    .line 604
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/component/BurstController;->updateThumbItemsStatus(Ljava/util/ArrayList;)V

    .line 605
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    invoke-static {v15, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    invoke-static {v15, v4}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 608
    if-eqz p2, :cond_6

    .line 609
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/camera/imaging/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 610
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private registerListeners()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 620
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 637
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->queryConfirmDeletingMediaMessageEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BurstUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstUI$2;-><init>(Lcom/android/camera/component/BurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 646
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->queryMediaToSetAsEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BurstUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstUI$3;-><init>(Lcom/android/camera/component/BurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 663
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->queryMediaToShareEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BurstUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstUI$4;-><init>(Lcom/android/camera/component/BurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 683
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->thumbnailButtonClickedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BurstUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstUI$5;-><init>(Lcom/android/camera/component/BurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 699
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/BurstUI$6;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/BurstUI$6;-><init>(Lcom/android/camera/component/BurstUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/BurstUI$7;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/BurstUI$7;-><init>(Lcom/android/camera/component/BurstUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 737
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/BurstUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstUI$8;-><init>(Lcom/android/camera/component/BurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 756
    return-void
.end method

.method private showThunbmailBar(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 768
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_RotateReviewScreenContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_RotateReviewScreenContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 786
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 789
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateReviewScreenStatus(Lcom/android/camera/widget/ImageCheckBox;)V
    .locals 9
    .parameter "thumbItem"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 817
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    .local v0, arr$:[Lcom/android/camera/widget/ImageCheckBox;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 818
    .local v1, frame:Lcom/android/camera/widget/ImageCheckBox;
    invoke-virtual {v1, v7}, Lcom/android/camera/widget/ImageCheckBox;->setFocus(Z)V

    .line 817
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 820
    .end local v1           #frame:Lcom/android/camera/widget/ImageCheckBox;
    :cond_0
    invoke-virtual {p1, v8}, Lcom/android/camera/widget/ImageCheckBox;->setFocus(Z)V

    .line 821
    invoke-virtual {p1}, Lcom/android/camera/widget/ImageCheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 822
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/camera/widget/ImageCheckBox;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v5, :cond_2

    .line 837
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    iget-object v6, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/camera/component/BurstController;->updateThumbItemsStatus(Ljava/util/ArrayList;)V

    .line 839
    :cond_2
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 841
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->setDeleteButtonEnabled(Z)V

    .line 842
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->setSetAsButtonEnabled(Z)V

    .line 843
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->setShareButtonEnabled(Z)V

    .line 853
    :goto_2
    return-void

    .line 825
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 828
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/camera/widget/ImageCheckBox;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 830
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 825
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 845
    .end local v2           #i:I
    :cond_5
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 847
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->setDeleteButtonEnabled(Z)V

    .line 848
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->setSetAsButtonEnabled(Z)V

    .line 849
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->setShareButtonEnabled(Z)V

    goto :goto_2

    .line 852
    :cond_6
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->setSetAsButtonEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public enterBurstMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter burst mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter burst mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    const-string v1, "Burst Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/BurstController;

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    .line 139
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    invoke-virtual {v0, p0}, Lcom/android/camera/component/BurstController;->link(Lcom/android/camera/component/BurstUI;)V

    .line 146
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    .line 147
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v0, :cond_2

    .line 148
    iget-object v1, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    iget-wide v4, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/BurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 151
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    if-eqz v0, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->restartPreview()Z

    .line 154
    iput-boolean v3, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    .line 155
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Waiting for re-starting preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_1
    return-void

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->initializeUI()V

    .line 164
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    goto :goto_1
.end method

.method public exitBurstMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit burst mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->restartPreview()Z

    .line 183
    iput-boolean v1, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 190
    iput-boolean v1, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    .line 191
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/BurstUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->collapseContentLayout()V

    goto :goto_0
.end method

.method public getBurstReviewHeight()I
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 262
    .local v0, isWidePhoto:Z
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeightWide_p:I

    .line 265
    :goto_0
    return v1

    .line 263
    :cond_0
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeight_p:I

    goto :goto_0

    .line 265
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_l:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_l:I

    goto :goto_0
.end method

.method public getBurstReviewWidth()I
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 253
    .local v0, isWidePhoto:Z
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidthWide_p:I

    .line 256
    :goto_0
    return v1

    .line 254
    :cond_0
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_p:I

    goto :goto_0

    .line 256
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeightWide_l:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeight_l:I

    goto :goto_0
.end method

.method protected getContentLayoutID()I
    .locals 1

    .prologue
    .line 205
    const v0, 0x7f030002

    return v0
.end method

.method public getThumbBarHeight()I
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarHeight_p:I

    .line 284
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarHeight_l:I

    goto :goto_0
.end method

.method public getThumbBarPadding()I
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarPadding_p:I

    .line 292
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarPadding_l:I

    goto :goto_0
.end method

.method public getThumbBarWidth()I
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarWidth_p:I

    .line 274
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarWidth_l:I

    goto :goto_0
.end method

.method public getThumbItemMargin()I
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbItemMargin_p:I

    .line 300
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbItemMargin_l:I

    goto :goto_0
.end method

.method public getThumbnailHeight()I
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 229
    .local v0, isWidePhoto:Z
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    .line 232
    :goto_0
    return v1

    .line 230
    :cond_0
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    goto :goto_0

    .line 232
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    goto :goto_0
.end method

.method public getThumbnailItemControllerHeight()I
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 213
    .local v0, isWidePhoto:Z
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_p:I

    .line 216
    :goto_0
    return v1

    .line 214
    :cond_0
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_p:I

    goto :goto_0

    .line 216
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_l:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_l:I

    goto :goto_0
.end method

.method public getThumbnailWidth()I
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 243
    .local v0, isWidePhoto:Z
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    .line 246
    :goto_0
    return v1

    .line 244
    :cond_0
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    goto :goto_0

    .line 246
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 309
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 338
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 312
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->onBurstCompleted()V

    goto :goto_0

    .line 316
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    goto :goto_0

    .line 320
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v1}, Lcom/android/camera/component/BurstUI;->onPhotoSaved(Lcom/android/camera/CaptureHandle;)V

    goto :goto_0

    .line 325
    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/BurstUI;->onThumbnailCreated(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 329
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 330
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    aget-object v2, v1, v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/ImageCheckBox;->addImageUri(Landroid/net/Uri;)V

    .line 331
    if-nez v0, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    const v3, 0x7f0b0178

    const v2, 0x7f0b0176

    .line 378
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    .line 384
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 385
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    .line 389
    const v1, 0x7f0b0177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    .line 391
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_l:I

    .line 392
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_p:I

    .line 393
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    .line 396
    const v1, 0x7f0b016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeightWide_p:I

    .line 397
    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeight_p:I

    .line 398
    const v1, 0x7f0b016d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_p:I

    .line 399
    const v1, 0x7f0b016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidthWide_p:I

    .line 401
    const v1, 0x7f0b017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeight_l:I

    .line 402
    const v1, 0x7f0b017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeightWide_l:I

    .line 403
    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_l:I

    .line 404
    const v1, 0x7f0b017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarHeight_l:I

    .line 405
    const v1, 0x7f0b017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarWidth_l:I

    .line 406
    const v1, 0x7f0b0173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarHeight_p:I

    .line 407
    const v1, 0x7f0b0172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarWidth_p:I

    .line 410
    const v1, 0x7f0b0174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarPadding_p:I

    .line 411
    const v1, 0x7f0b0175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbItemMargin_p:I

    .line 412
    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarPadding_l:I

    .line 413
    const v1, 0x7f0b0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbItemMargin_l:I

    .line 424
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->registerListeners()V

    .line 427
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->setupPropertyChangedCallbacks()V

    .line 428
    return-void

    .line 418
    :cond_0
    const v1, 0x7f0b00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    .line 419
    const v1, 0x7f0b00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    .line 420
    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    goto :goto_0
.end method

.method public isBurstModeEntered()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    return v0
.end method
