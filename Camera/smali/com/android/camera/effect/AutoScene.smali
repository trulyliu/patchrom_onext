.class public final Lcom/android/camera/effect/AutoScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "AutoScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# instance fields
.field private m_IsFaceBeautifierEnabled:Z

.field private m_IsSkinBeautyEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "cameraActivity"

    .prologue
    .line 30
    const-string v0, "auto"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 33
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isFrontCameraFaceBeautifierSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/effect/AutoScene$1;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$1;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 49
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/effect/AutoScene$2;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$2;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 63
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isFrontFaceBeautifierEnabled:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/effect/AutoScene$3;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$3;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 80
    :cond_0
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isHTCSkinBeautiferSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/effect/AutoScene$4;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$4;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 95
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/effect/AutoScene$5;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$5;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 109
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/effect/AutoScene$6;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$6;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 123
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/effect/AutoScene$7;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$7;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 137
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->frontHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/effect/AutoScene$8;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$8;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 151
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mainHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/effect/AutoScene$9;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$9;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 166
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/AutoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->canEnableFaceBeautifier()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/effect/AutoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->enableFaceBeautifier()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/effect/AutoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->disableFaceBeautifier()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/effect/AutoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->canEnableSkinBeauty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/effect/AutoScene;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/effect/AutoScene;->enableSkinBeauty(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/effect/AutoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->disableSkinBeauty()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/effect/AutoScene;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/effect/AutoScene;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/effect/AutoScene;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private canEnableFaceBeautifier()Z
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 206
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    .line 207
    .local v1, settings:Lcom/android/camera/CameraSettings;
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isFrontCameraFaceBeautifierSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/camera/CameraSettings;->isFrontFaceBeautifierEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private canEnableSkinBeauty()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 219
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    .line 220
    .local v2, settings:Lcom/android/camera/CameraSettings;
    const/4 v1, 0x1

    .line 221
    .local v1, isSkinBeautiferLevelZero:Z
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->mainHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    .line 230
    :goto_0
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isHTCSkinBeautiferSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v3, v5}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/camera/effect/NoneEffect;

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 227
    :cond_0
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->frontHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 230
    goto :goto_1
.end method

.method private disableFaceBeautifier()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "disableFaceBeautifier()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-boolean v0, p0, Lcom/android/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "disableFaceBeautifier() - Face beautifier is already disabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->linkToSceneController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/effect/AutoScene$10;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$10;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 260
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getSceneController()Lcom/android/camera/effect/ISceneController;

    move-result-object v0

    const-string v1, "auto"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;Z)V

    .line 264
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "disableFaceBeautifier() - No ISceneController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private disableSkinBeauty()V
    .locals 4

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "disableSkinBeauty()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-boolean v2, p0, Lcom/android/camera/effect/AutoScene;->m_IsSkinBeautyEnabled:Z

    if-nez v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "disableSkinBeauty() - Skin beautifier is already disabled"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 312
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    .line 313
    .local v1, settings:Lcom/android/camera/CameraSettings;
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->linkToSceneController()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    new-instance v3, Lcom/android/camera/effect/AutoScene$12;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/AutoScene$12;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 332
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/effect/AutoScene;->m_IsSkinBeautyEnabled:Z

    goto :goto_0

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "disableSkinBeauty() - No ISceneController interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private enableFaceBeautifier()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 272
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableFaceBeautifier()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-boolean v0, p0, Lcom/android/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableFaceBeautifier() - Face beautifier is already enabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->linkToSceneController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/effect/AutoScene$11;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$11;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 291
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getSceneController()Lcom/android/camera/effect/ISceneController;

    move-result-object v0

    const-string v1, "portrait"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;Z)V

    .line 295
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableFaceBeautifier() - No ISceneController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private enableSkinBeauty(Z)V
    .locals 4
    .parameter "isChange"

    .prologue
    .line 340
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "enableSkinBeauty()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-boolean v2, p0, Lcom/android/camera/effect/AutoScene;->m_IsSkinBeautyEnabled:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 344
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "enableSkinBeauty() - Skin beautifier is already enabled"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 349
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    .line 350
    .local v1, settings:Lcom/android/camera/CameraSettings;
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->linkToSceneController()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    new-instance v3, Lcom/android/camera/effect/AutoScene$13;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/effect/AutoScene$13;-><init>(Lcom/android/camera/effect/AutoScene;Lcom/android/camera/CameraSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 377
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/effect/AutoScene;->m_IsSkinBeautyEnabled:Z

    goto :goto_0

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "enableSkinBeauty() - No ISceneController interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 1
    .parameter "prevEffect"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->canEnableFaceBeautifier()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-super {p0, p1}, Lcom/android/camera/effect/SceneEffectBase;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->enableFaceBeautifier()V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 1
    .parameter "nextEffect"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/effect/AutoScene;->m_IsSkinBeautyEnabled:Z

    if-nez v0, :cond_1

    .line 187
    invoke-super {p0, p1}, Lcom/android/camera/effect/SceneEffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    if-eqz v0, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->disableFaceBeautifier()V

    .line 194
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/effect/AutoScene;->m_IsSkinBeautyEnabled:Z

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->disableSkinBeauty()V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 386
    const v0, 0x7fffffff

    return v0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method
