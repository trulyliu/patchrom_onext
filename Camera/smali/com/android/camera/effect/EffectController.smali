.class Lcom/android/camera/effect/EffectController;
.super Lcom/android/camera/effect/IEffectController;
.source "EffectController.java"


# static fields
.field private static final MSG_SET_GPU_EFFECT_PARAMETERS:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Effect Controller"

.field private static final m_NoneEffectInfo:Lcom/android/camera/effect/GpuEffectInfo;


# instance fields
.field private m_ColorEffect:Ljava/lang/String;

.field private m_GpuEffect:Ljava/lang/String;

.field private final m_GpuEffectParams:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/effect/GpuEffectParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v7, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v8, "0_bypass"

    const/4 v0, 0x2

    new-array v9, v0, [Lcom/android/camera/effect/GpuEffectParameters;

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v9, v2

    const/4 v10, 0x1

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    sput-object v7, Lcom/android/camera/effect/EffectController;->m_NoneEffectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 3
    .parameter "cameraThread"

    .prologue
    .line 41
    const-string v0, "Effect Controller"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/effect/IEffectController;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    .line 28
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/effect/EffectController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/effect/EffectController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->m_GpuEffect:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/effect/EffectController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/camera/effect/EffectController;->m_GpuEffect:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/effect/EffectController;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;

    return-object v0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 50
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 60
    invoke-super {p0, p1}, Lcom/android/camera/effect/IEffectController;->handleMessage(Landroid/os/Message;)V

    .line 63
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 55
    .local v0, params:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/android/camera/effect/GpuEffectParameters;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/effect/EffectController;->setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;Z)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/camera/effect/IEffectController;->initializeOverride()V

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 76
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/effect/EffectController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/EffectController$1;-><init>(Lcom/android/camera/effect/EffectController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 87
    iget-object v1, v0, Lcom/android/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/effect/EffectController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/EffectController$2;-><init>(Lcom/android/camera/effect/EffectController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 109
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;Z)V
    .locals 8
    .parameter "effect"
    .parameter "applyImmediately"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setColorEffect("

    const-string v3, ", "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setColorEffect() - Called from another thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/android/camera/effect/EffectController$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/effect/EffectController$3;-><init>(Lcom/android/camera/effect/EffectController;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setColorEffect() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    move-object v7, p1

    .line 143
    .local v7, newEffect:Ljava/lang/String;
    if-nez v7, :cond_3

    .line 144
    const-string v7, "none"

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setColorEffect() - Change to same effect"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_4
    iput-object v7, p0, Lcom/android/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v6

    .line 156
    .local v6, controller:Lcom/android/camera/CameraController;
    if-eqz v6, :cond_0

    .line 158
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraController;->setColorEffect(Ljava/lang/String;)V

    .line 159
    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method public setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;Z)V
    .locals 13
    .parameter "effectInfo"
    .parameter "applyImmediately"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setGpuEffect() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v1, Lcom/android/camera/effect/EffectController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/effect/EffectController$4;-><init>(Lcom/android/camera/effect/EffectController;Lcom/android/camera/effect/GpuEffectInfo;Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/EffectController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setGpuEffect() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v1

    if-nez v1, :cond_3

    .line 193
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setGpuEffect() - GPU effect is not supported"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_3
    move-object v11, p1

    .line 199
    .local v11, newEffectInfo:Lcom/android/camera/effect/GpuEffectInfo;
    if-nez v11, :cond_4

    .line 200
    sget-object v11, Lcom/android/camera/effect/EffectController;->m_NoneEffectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    .line 202
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setGpuEffect() - Effect name : "

    iget-object v3, v11, Lcom/android/camera/effect/GpuEffectInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    iget-object v1, v11, Lcom/android/camera/effect/GpuEffectInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/effect/EffectController;->m_GpuEffect:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 207
    iget-object v9, v11, Lcom/android/camera/effect/GpuEffectInfo;->parameters:[Lcom/android/camera/effect/GpuEffectParameters;

    .line 208
    .local v9, initParams:[Lcom/android/camera/effect/GpuEffectParameters;
    if-eqz v9, :cond_5

    .line 210
    move-object v7, v9

    .local v7, arr$:[Lcom/android/camera/effect/GpuEffectParameters;
    array-length v10, v7

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_5

    aget-object v12, v7, v8

    .line 211
    .local v12, params:Lcom/android/camera/effect/GpuEffectParameters;
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;

    iget-object v2, v12, Lcom/android/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 215
    .end local v7           #arr$:[Lcom/android/camera/effect/GpuEffectParameters;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #params:Lcom/android/camera/effect/GpuEffectParameters;
    :cond_5
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/EffectController;->removeMessages(I)V

    .line 218
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 219
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 221
    iget-object v1, v11, Lcom/android/camera/effect/GpuEffectInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 222
    if-eqz v9, :cond_6

    .line 224
    move-object v7, v9

    .restart local v7       #arr$:[Lcom/android/camera/effect/GpuEffectParameters;
    array-length v10, v7

    .restart local v10       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v10, :cond_6

    aget-object v12, v7, v8

    .line 225
    .restart local v12       #params:Lcom/android/camera/effect/GpuEffectParameters;
    iget-object v1, v12, Lcom/android/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    iget v2, v12, Lcom/android/camera/effect/GpuEffectParameters;->n0:I

    iget v3, v12, Lcom/android/camera/effect/GpuEffectParameters;->n1:I

    iget v4, v12, Lcom/android/camera/effect/GpuEffectParameters;->n2:I

    iget v5, v12, Lcom/android/camera/effect/GpuEffectParameters;->n3:I

    iget-boolean v6, v12, Lcom/android/camera/effect/GpuEffectParameters;->enabled:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 224
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 227
    .end local v7           #arr$:[Lcom/android/camera/effect/GpuEffectParameters;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #params:Lcom/android/camera/effect/GpuEffectParameters;
    :cond_6
    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method public setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;Z)V
    .locals 7
    .parameter "params"
    .parameter "applyImmediately"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 239
    if-nez p1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setGpuEffectParameters() - No parameters specified"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setGpuEffectParameters() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/16 v2, 0x2711

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v6

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/EffectController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 256
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setGpuEffectParameters() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v1

    if-nez v1, :cond_4

    .line 261
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setGpuEffectParameters() - GPU effect is not supported"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_4
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;

    iget-object v2, p1, Lcom/android/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 270
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p1, Lcom/android/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/effect/GpuEffectParameters;->n0:I

    iget v3, p1, Lcom/android/camera/effect/GpuEffectParameters;->n1:I

    iget v4, p1, Lcom/android/camera/effect/GpuEffectParameters;->n2:I

    iget v5, p1, Lcom/android/camera/effect/GpuEffectParameters;->n3:I

    iget-boolean v6, p1, Lcom/android/camera/effect/GpuEffectParameters;->enabled:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 273
    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method
