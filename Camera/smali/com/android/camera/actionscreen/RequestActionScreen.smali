.class public Lcom/android/camera/actionscreen/RequestActionScreen;
.super Lcom/android/camera/actionscreen/ActionScreen;
.source "RequestActionScreen.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Request Action Screen"


# instance fields
.field private m_DoneButton:Landroid/view/View;

.field private m_IsLayoutLoaded:Z

.field private m_IsRequestLayoutOpen:Z

.field private m_ReCaptureButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "cameraActivity"

    .prologue
    .line 39
    const-string v0, "Request Action Screen"

    const v1, 0x7f03002a

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/actionscreen/ActionScreen;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;I)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actionscreen/RequestActionScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/actionscreen/RequestActionScreen;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/actionscreen/RequestActionScreen;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/actionscreen/RequestActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->onDoneClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/actionscreen/RequestActionScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/actionscreen/RequestActionScreen;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/actionscreen/RequestActionScreen;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/actionscreen/RequestActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->onReCaptureClicked()V

    return-void
.end method

.method private onDoneClicked()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onDoneClicked() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->returnRequestedMedia()V

    .line 73
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onDoneClicked() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onReCaptureClicked()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onReCaptureClicked() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->deleteLatestMedia()V

    .line 137
    sget-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actionscreen/RequestActionScreen;->close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onReCaptureClicked() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openRequestLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 158
    iget-boolean v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsRequestLayoutOpen:Z

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/actionscreen/RequestActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 163
    iput-boolean v1, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsRequestLayoutOpen:Z

    .line 166
    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 167
    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    goto :goto_0
.end method


# virtual methods
.method protected closeActionScreen(Z)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsRequestLayoutOpen:Z

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->completeCloseActionScreen()V

    .line 57
    :cond_0
    return-void
.end method

.method protected onKeyDown(ILcom/android/camera/input/KeyEventArgs;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 82
    iget v0, p2, Lcom/android/camera/input/KeyEventArgs;->repeatCount:I

    if-nez v0, :cond_0

    .line 84
    packed-switch p1, :pswitch_data_0

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/actionscreen/ActionScreen;->onKeyDown(ILcom/android/camera/input/KeyEventArgs;)Z

    move-result v0

    :goto_0
    return v0

    .line 87
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->onReCaptureClicked()V

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/MediaEventArgs;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media save failed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->openRequestLayout()V

    goto :goto_0
.end method

.method protected openActionScreen()V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->openRequestLayout()V

    .line 150
    :cond_0
    return-void
.end method

.method protected prepareActionScreen(Lcom/android/camera/CaptureHandle;)V
    .locals 5
    .parameter "captureHandle"

    .prologue
    const/4 v4, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, baseLayout:Landroid/view/View;
    const v2, 0x7f0800e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, footer:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsLayoutLoaded:Z

    if-nez v2, :cond_1

    .line 182
    instance-of v2, v1, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 183
    check-cast v2, Lcom/htc/widget/HtcFooter;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 184
    :cond_0
    const v2, 0x7f0800e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    .line 185
    const v2, 0x7f0800e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    .line 188
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 190
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$1;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen$1;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    :goto_0
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 252
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$4;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen$4;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    :goto_1
    iput-boolean v4, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsLayoutLoaded:Z

    .line 294
    :cond_1
    instance-of v2, v1, Lcom/htc/widget/HtcFooter;

    if-nez v2, :cond_2

    .line 304
    :cond_2
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 306
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02003b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 309
    :cond_3
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 311
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02002e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 316
    :cond_4
    instance-of v2, v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v2, :cond_5

    move-object v2, v0

    .line 317
    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 318
    :cond_5
    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 319
    return-void

    .line 218
    :cond_6
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$2;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen$2;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$3;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen$3;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 280
    :cond_7
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$5;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen$5;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
