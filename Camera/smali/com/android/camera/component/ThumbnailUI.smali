.class public Lcom/android/camera/component/ThumbnailUI;
.super Lcom/android/camera/component/UIComponent;
.source "ThumbnailUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ThumbnailUI$15;,
        Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;
    }
.end annotation


# static fields
.field private static final FADEIN_TIMEOUT:I = 0x7d0

.field static final MSG_DISABLE_THUMB:I = 0x2713

.field static final MSG_ENABLE_THUMB:I = 0x2712

.field private static final MSG_FADEOUT:I = 0x2714

.field static final MSG_THUMB_IMAGE_CREATED:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Thumbnail UI"


# instance fields
.field private m_AnimationDownRatio:F

.field private m_AnimationUpRatio:F

.field private m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

.field private final m_FirstThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private m_HasPendingClickEvent:Z

.field private m_IsEnabled:Z

.field private m_IsFirstThumbnail:Z

.field private m_MediaInfo:Lcom/android/camera/MediaInfo;

.field private final m_SecondThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private m_ThumbnailButton:Landroid/view/View;

.field private m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

.field private m_ThumbnailDrawable:Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;

.field private m_ThumbnailImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v2, 0x1

    .line 171
    const-string v0, "Thumbnail UI"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 59
    iput-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    .line 70
    new-instance v0, Lcom/android/camera/component/ThumbnailUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailUI$1;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_FirstThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 97
    new-instance v0, Lcom/android/camera/component/ThumbnailUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailUI$2;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_SecondThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ThumbnailUI;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_SecondThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->createThumbnailImage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/ThumbnailUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailUI;->startThumbnailUpdateAnimation(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/camera/component/ThumbnailUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/component/ThumbnailUI;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/component/ThumbnailUI;)Lcom/android/camera/component/ThumbnailController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/ThumbnailUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/camera/component/ThumbnailUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/ThumbnailUI;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/ThumbnailUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ThumbnailUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ThumbnailUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ThumbnailUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->onThumbnailButtonClicked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/ThumbnailUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->startAlbum()Z

    move-result v0

    return v0
.end method

.method private clearThumbnailImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "clearThumbnailImage()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "clearThumbnailImage() - Invalidate thumbnail button"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 187
    :cond_1
    iput-object v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    .line 188
    iput-object v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    .line 189
    return-void
.end method

.method private createThumbnailImage()V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    if-nez v1, :cond_0

    .line 199
    const/16 v0, 0x32

    .local v0, retryCounter:I
    :goto_0
    if-lez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    const-string v2, "Thumbnail Controller"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/ThumbnailController;

    iput-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    .line 202
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    invoke-virtual {v1, p0}, Lcom/android/camera/component/ThumbnailController;->link(Lcom/android/camera/component/ThumbnailUI;)V

    .line 220
    .end local v0           #retryCounter:I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    const/16 v2, 0x2711

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/ThumbnailUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 224
    :goto_1
    return-void

    .line 211
    .restart local v0       #retryCounter:I
    :cond_1
    const-wide/16 v1, 0x1e

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    .end local v0           #retryCounter:I
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "No thumbnail controller to create thumbnail image"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    .restart local v0       #retryCounter:I
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private onThumbnailButtonClicked()V
    .locals 4

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 369
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 371
    :cond_1
    sget-object v3, Lcom/android/camera/component/ThumbnailUI$15;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v2, v1, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 378
    sget-object v3, Lcom/android/camera/component/ThumbnailUI$15;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v2, v1, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/RecordingState;

    invoke-virtual {v2}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .line 387
    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 389
    iget-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z

    if-eqz v2, :cond_2

    .line 390
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->startAlbum()Z

    goto :goto_0

    .line 392
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z

    goto :goto_0

    .line 396
    :cond_3
    const-class v2, Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ThumbnailUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/actionscreen/ActionScreen;

    .line 397
    .local v0, actionScreen:Lcom/android/camera/actionscreen/ActionScreen;
    instance-of v2, v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 399
    check-cast v2, Lcom/android/camera/actionscreen/CommonActionScreen;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$4;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/component/ThumbnailUI$4;-><init>(Lcom/android/camera/component/ThumbnailUI;Lcom/android/camera/actionscreen/ActionScreen;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/actionscreen/CommonActionScreen;->performAction(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 378
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onThumbnailImageCreated(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 12
    .parameter "path"
    .parameter "image"
    .parameter "mime"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated(\'"

    const-string v3, "\', "

    const-string v5, ")"

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v0}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v11

    .line 420
    .local v11, previousFilePath:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    .line 421
    .local v9, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v0, v9, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v11, :cond_3

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated() - Activity is paused or file path is same as previous one"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    if-eqz p2, :cond_1

    .line 425
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 426
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    .line 476
    :goto_1
    return-void

    .line 419
    .end local v9           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v11           #previousFilePath:Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 431
    .restart local v9       #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v11       #previousFilePath:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->clearThumbnailImage()V

    .line 434
    iput-object p2, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    .line 435
    if-eqz p1, :cond_4

    .line 437
    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    .line 438
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    new-instance v1, Lcom/android/camera/io/Path;

    invoke-direct {v1, p1}, Lcom/android/camera/io/Path;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 439
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    iput-object p3, v0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_5

    .line 444
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated() - Invalidate thumbnail button"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 446
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailDrawable:Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;

    if-eq v0, v1, :cond_5

    .line 448
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated() - Unexpected thumbnail button background found"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThumbnailImageCreated() - Current background : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThumbnailImageCreated() - Expected background : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailDrawable:Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_5
    sget-object v1, Lcom/android/camera/component/ThumbnailUI$15;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, v9, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 466
    const/4 v10, 0x0

    .line 471
    .local v10, isVideoSnapshot:Z
    :goto_2
    if-nez v10, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    if-nez v0, :cond_7

    .line 472
    :cond_6
    invoke-direct {p0, v10}, Lcom/android/camera/component/ThumbnailUI;->startThumbnailUpdateAnimation(Z)V

    .line 475
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    goto/16 :goto_1

    .line 461
    .end local v10           #isVideoSnapshot:Z
    :pswitch_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V

    .line 462
    const/16 v2, 0x2714

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x7d0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ThumbnailUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 463
    const/4 v10, 0x1

    .line 464
    .restart local v10       #isVideoSnapshot:Z
    goto :goto_2

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 496
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->mediaScannerFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailUI$5;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 506
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->storageUnmountedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailUI$6;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 516
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->reviewAnimationCompletedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailUI$7;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 525
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->restartingCameraEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailUI$8;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 547
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 6

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 559
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$9;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$9;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 584
    new-instance v1, Lcom/android/camera/component/ThumbnailUI$10;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ThumbnailUI$10;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    .line 591
    .local v1, modeChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 592
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 595
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$11;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$11;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 612
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$12;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$12;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 648
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$13;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$13;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 663
    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$14;

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/camera/component/ThumbnailUI$14;-><init>(Lcom/android/camera/component/ThumbnailUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    return-void
.end method

.method private showThumbnailButton(ZZ)V
    .locals 3
    .parameter "visible"
    .parameter "animation"

    .prologue
    const/high16 v2, 0x3f80

    .line 682
    const/16 v1, 0x2714

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ThumbnailUI;->removeMessages(I)V

    .line 685
    if-eqz p1, :cond_3

    .line 687
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 688
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_0
    :goto_0
    return-void

    .line 690
    .restart local v0       #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_1
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/camera/component/ThumbnailUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 697
    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_2

    .line 699
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 700
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    .line 701
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 702
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1
.end method

.method private startAlbum()Z
    .locals 3

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 717
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    const/4 v2, 0x0

    .line 731
    :goto_0
    return v2

    .line 722
    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    if-eqz v2, :cond_1

    .line 723
    new-instance v1, Lcom/android/camera/ThumbnailButtonEventArgs;

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    invoke-direct {v1, v2}, Lcom/android/camera/ThumbnailButtonEventArgs;-><init>(Lcom/android/camera/MediaInfo;)V

    .line 726
    .local v1, e:Lcom/android/camera/ThumbnailButtonEventArgs;
    :goto_1
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->thumbnailButtonClickedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v2, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 729
    invoke-virtual {v1}, Lcom/android/camera/ThumbnailButtonEventArgs;->isHandled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 730
    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v0, v2}, Lcom/android/camera/HTCCamera;->startAlbum(Lcom/android/camera/MediaInfo;)Z

    move-result v2

    goto :goto_0

    .line 725
    .end local v1           #e:Lcom/android/camera/ThumbnailButtonEventArgs;
    :cond_1
    new-instance v1, Lcom/android/camera/ThumbnailButtonEventArgs;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/camera/ThumbnailButtonEventArgs;-><init>(Lcom/android/camera/MediaInfo;)V

    .restart local v1       #e:Lcom/android/camera/ThumbnailButtonEventArgs;
    goto :goto_1

    .line 731
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startThumbnailUpdateAnimation(Z)V
    .locals 3
    .parameter "isVideoSnapshot"

    .prologue
    .line 740
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationUpRatio:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 749
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationUpRatio:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 750
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 751
    .local v0, firstAnimator:Landroid/view/ViewPropertyAnimator;
    iget v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationDownRatio:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 752
    iget v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationDownRatio:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 753
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 754
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_FirstThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 756
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 757
    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->clearThumbnailImage()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    .line 234
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 235
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 243
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 293
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 259
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z

    goto :goto_0

    .line 263
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z

    .line 264
    iget-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z

    if-eqz v2, :cond_0

    .line 266
    iput-boolean v3, p0, Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z

    .line 267
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->startAlbum()Z

    goto :goto_0

    .line 272
    :pswitch_2
    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V

    goto :goto_0

    .line 278
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 279
    .local v0, array:[Ljava/lang/Object;
    const/16 v2, 0x2711

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ThumbnailUI;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    aget-object v1, v0, v4

    check-cast v1, Landroid/graphics/Bitmap;

    .line 282
    .local v1, image:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 288
    .end local v1           #image:Landroid/graphics/Bitmap;
    :cond_1
    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    aget-object v3, v0, v4

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/component/ThumbnailUI;->onThumbnailImageCreated(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 305
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 308
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    const v1, 0x7f08016e

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    .line 309
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    .line 311
    new-instance v0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;-><init>(Lcom/android/camera/component/ThumbnailUI;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailDrawable:Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;

    .line 312
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailDrawable:Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcIconButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 313
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Background of thumbnail button is prepared"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/component/ThumbnailUI$3;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ThumbnailUI$3;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationDownRatio:F

    .line 333
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00be

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationUpRatio:F

    .line 336
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->registerListeners()V

    .line 339
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->setupPropertyChangedCallbacks()V

    .line 340
    return-void

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeOverride() - Unexpected thumbnail button type : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "null"

    goto :goto_1
.end method

.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 2
    .parameter "fakeRotation"
    .parameter "uiRotation"

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/component/ThumbnailUI;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    goto :goto_0
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "fakeRotation"
    .parameter "uiRotation"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/ThumbnailUI;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 360
    return-void
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "prevRotation"
    .parameter "rotation"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/component/ThumbnailUI;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    .line 485
    return-void
.end method
