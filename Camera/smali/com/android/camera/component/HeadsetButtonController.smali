.class final Lcom/android/camera/component/HeadsetButtonController;
.super Lcom/android/camera/component/IntentReceiver;
.source "HeadsetButtonController.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Headset Button Controller"


# instance fields
.field private m_ActionScreenDisableCounter:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6
    .parameter "cameraActivity"

    .prologue
    .line 33
    const-string v1, "Headset Button Controller"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HeadsetButtonController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/component/HeadsetButtonController;->m_ActionScreenDisableCounter:I

    return v0
.end method

.method static synthetic access$006(Lcom/android/camera/component/HeadsetButtonController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/component/HeadsetButtonController;->m_ActionScreenDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/component/HeadsetButtonController;->m_ActionScreenDisableCounter:I

    return v0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/camera/component/IntentReceiver;->initializeOverride()V

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/component/HeadsetButtonController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 47
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/HeadsetButtonController$1;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/HeadsetButtonController$1;-><init>(Lcom/android/camera/component/HeadsetButtonController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/HeadsetButtonController$2;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/HeadsetButtonController$2;-><init>(Lcom/android/camera/component/HeadsetButtonController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CAMERA_BUTTON"

    if-ne v1, v2, :cond_2

    .line 79
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Trigger taking picture by phone button"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/component/HeadsetButtonController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    .line 81
    .local v8, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->disableActionScreen()V

    .line 82
    const-string v1, "Press Headset Camera Button"

    invoke-virtual {v8, v1}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget v1, p0, Lcom/android/camera/component/HeadsetButtonController;->m_ActionScreenDisableCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/component/HeadsetButtonController;->m_ActionScreenDisableCounter:I

    .line 138
    .end local v8           #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v8       #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot take picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->enableActionScreen()V

    goto :goto_0

    .line 93
    .end local v8           #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    if-ne v1, v2, :cond_0

    .line 95
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/view/KeyEvent;

    .line 96
    .local v11, keyEvent:Landroid/view/KeyEvent;
    if-nez v11, :cond_3

    .line 98
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onIntentReceived() - No key event"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 108
    :sswitch_0
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0
    const/4 v10, 0x1

    .line 121
    .local v10, isKeyDown:Z
    :goto_1
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/16 v6, 0x1b

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 127
    .end local v11           #keyEvent:Landroid/view/KeyEvent;
    .local v0, keyEvent:Landroid/view/KeyEvent;
    new-instance v9, Lcom/android/camera/input/KeyEventArgs;

    invoke-direct {v9, v0}, Lcom/android/camera/input/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    .line 130
    .local v9, e:Lcom/android/camera/input/KeyEventArgs;
    if-eqz v10, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/component/HeadsetButtonController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v9}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    .line 114
    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    .end local v9           #e:Lcom/android/camera/input/KeyEventArgs;
    .end local v10           #isKeyDown:Z
    .restart local v11       #keyEvent:Landroid/view/KeyEvent;
    :pswitch_1
    const/4 v10, 0x0

    .line 115
    .restart local v10       #isKeyDown:Z
    goto :goto_1

    .line 133
    .end local v11           #keyEvent:Landroid/view/KeyEvent;
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    .restart local v9       #e:Lcom/android/camera/input/KeyEventArgs;
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/component/HeadsetButtonController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->keyUpEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v9}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReceiverRegistered()V
    .locals 5

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/camera/component/HeadsetButtonController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 148
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    new-instance v0, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, audioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/component/HeadsetButtonController;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 152
    invoke-super {p0}, Lcom/android/camera/component/IntentReceiver;->onReceiverRegistered()V

    .line 153
    return-void
.end method

.method protected onReceiverUnregistered()V
    .locals 5

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/camera/component/HeadsetButtonController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 163
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    new-instance v0, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, audioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/component/HeadsetButtonController;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 167
    invoke-super {p0}, Lcom/android/camera/component/IntentReceiver;->onReceiverUnregistered()V

    .line 168
    return-void
.end method

.method protected prepareIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 176
    const-string v0, "android.intent.action.CAMERA_BUTTON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 179
    return-void
.end method
