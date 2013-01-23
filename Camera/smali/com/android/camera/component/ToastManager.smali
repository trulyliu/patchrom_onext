.class Lcom/android/camera/component/ToastManager;
.super Lcom/android/camera/IToastManager;
.source "ToastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ToastManager$6;,
        Lcom/android/camera/component/ToastManager$ToastHandle;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_TOAST:I = 0x2711

.field private static final MSG_TOAST_TIMEOUT:I = 0x2712

.field static final NAME:Ljava/lang/String; = "Toast Manager"

.field private static final SHOW_TOAST_DELAY:I = 0x2bc

.field private static final TOAST_TIMEOUT:I = 0x7d0


# instance fields
.field private m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;

.field private m_IsToastTimeout:Z

.field private m_Toast:Landroid/widget/Toast;

.field private m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_ToastContainerRotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 65
    const-string v0, "Toast Manager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/IToastManager;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    .line 58
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainerRotation:Lcom/android/camera/rotate/UIRotation;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ToastManager;)Lcom/android/camera/component/ToastManager$ToastHandle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ToastManager;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ToastManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/component/ToastManager;->m_IsToastTimeout:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/ToastManager;Lcom/android/camera/component/ToastManager$ToastHandle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/component/ToastManager;->showToast(Lcom/android/camera/component/ToastManager$ToastHandle;)V

    return-void
.end method

.method private showToast(Lcom/android/camera/component/ToastManager$ToastHandle;)V
    .locals 8
    .parameter "handle"

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "showToast() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 285
    :cond_0
    const/4 v6, 0x1

    .line 288
    .local v6, delay:Z
    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 304
    :goto_1
    iput-object p1, p0, Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;

    .line 305
    iput-boolean v0, p0, Lcom/android/camera/component/ToastManager;->m_IsToastTimeout:Z

    .line 306
    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ToastManager;->removeMessages(I)V

    .line 307
    const/16 v2, 0x2711

    if-eqz v6, :cond_1

    const/16 v0, 0x2bc

    :cond_1
    int-to-long v3, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ToastManager;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/component/ToastManager$ToastHandle;->message:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    .line 296
    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v7

    .line 297
    .local v7, view:Landroid/view/View;
    new-instance v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 298
    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->addView(Landroid/view/View;)V

    .line 299
    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public cancelToast(Lcom/android/camera/Handle;)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 75
    if-nez p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "cancelToast() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;

    if-ne v0, p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 88
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ToastManager;->m_IsToastTimeout:Z

    .line 90
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ToastManager;->removeMessages(I)V

    .line 91
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ToastManager;->removeMessages(I)V

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/android/camera/IToastManager;->deinitializeOverride()V

    .line 109
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-super {p0, p1}, Lcom/android/camera/IToastManager;->handleMessage(Landroid/os/Message;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;

    iget-object v1, v1, Lcom/android/camera/component/ToastManager$ToastHandle;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->setToastRotation()V

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainerRotation:Lcom/android/camera/rotate/UIRotation;

    .line 125
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainerRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    const/16 v2, 0x2712

    const-wide/16 v3, 0x7d0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ToastManager;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 134
    iput-boolean v5, p0, Lcom/android/camera/component/ToastManager;->m_IsToastTimeout:Z

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/camera/IToastManager;->initializeOverride()V

    .line 153
    const-class v2, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ToastManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    .line 156
    .local v0, autoFocusController:Lcom/android/camera/IAutoFocusController;
    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 157
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    if-eqz v0, :cond_0

    .line 159
    iget-object v2, v0, Lcom/android/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ToastManager$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ToastManager$1;-><init>(Lcom/android/camera/component/ToastManager;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 171
    :goto_0
    iget-object v2, v1, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ToastManager$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ToastManager$2;-><init>(Lcom/android/camera/component/ToastManager;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 181
    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/component/ToastManager$3;

    iget-object v4, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/camera/component/ToastManager$3;-><init>(Lcom/android/camera/component/ToastManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v2, v1, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ToastManager$4;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ToastManager$4;-><init>(Lcom/android/camera/component/ToastManager;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 203
    return-void

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "initializeOverride() - No IAutoFocusController interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setToastRotation()V
    .locals 7

    .prologue
    .line 210
    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-nez v5, :cond_0

    .line 245
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 215
    .local v0, gravity:I
    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getXOffset()I

    move-result v2

    .line 216
    .local v2, mX:I
    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    .line 217
    .local v3, mY:I
    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v1

    .line 218
    .local v1, hMargin:F
    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v4

    .line 220
    .local v4, vMargin:F
    sget-object v6, Lcom/android/camera/component/ToastManager$6;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v5}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 231
    const/16 v0, 0x51

    .line 236
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v5}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainerRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v6}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v6

    if-ne v5, v6, :cond_1

    .line 237
    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5, v0, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 238
    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5, v1, v4}, Landroid/widget/Toast;->setMargin(FF)V

    goto :goto_0

    .line 222
    :pswitch_0
    const/16 v0, 0x13

    .line 223
    goto :goto_1

    .line 225
    :pswitch_1
    const/16 v0, 0x31

    .line 226
    goto :goto_1

    .line 228
    :pswitch_2
    const/16 v0, 0x15

    .line 229
    goto :goto_1

    .line 241
    :cond_1
    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5, v0, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 242
    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5, v4, v1}, Landroid/widget/Toast;->setMargin(FF)V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showToast(Ljava/lang/String;)Lcom/android/camera/Handle;
    .locals 3
    .parameter "message"

    .prologue
    .line 254
    new-instance v0, Lcom/android/camera/component/ToastManager$ToastHandle;

    invoke-direct {v0, p1}, Lcom/android/camera/component/ToastManager$ToastHandle;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, handle:Lcom/android/camera/component/ToastManager$ToastHandle;
    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-direct {p0, v0}, Lcom/android/camera/component/ToastManager;->showToast(Lcom/android/camera/component/ToastManager$ToastHandle;)V

    .line 273
    :goto_0
    return-object v0

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "showToast() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v1, Lcom/android/camera/component/ToastManager$5;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/component/ToastManager$5;-><init>(Lcom/android/camera/component/ToastManager;Lcom/android/camera/component/ToastManager$ToastHandle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ToastManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
