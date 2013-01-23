.class public final Lcom/android/camera/component/AutoSceneUI;
.super Lcom/android/camera/IAutoSceneController;
.source "AutoSceneUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/AutoSceneUI$7;
    }
.end annotation


# static fields
.field static final MSG_CHECK_SCENE:I = 0x2712

.field static final MSG_LINK:I = 0x2713

.field static final MSG_SMART_SCENE_UPDATED:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Auto-Scene UI"


# instance fields
.field private m_AsdType:I

.field private m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

.field private m_EffectManager:Lcom/android/camera/effect/IEffectManager;

.field private m_IsFlashDisabledByAsd:Z

.field private m_IsSmartSceneEntered:Z

.field private m_IsWdrScene:Z

.field private final scene:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/AutoDetectedScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v2, 0x0

    .line 62
    const-string v0, "Auto-Scene UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/IAutoSceneController;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    .line 54
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    .line 55
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsFlashDisabledByAsd:Z

    .line 63
    const-string v0, "AutoSceneController.AutoDetectedScene"

    const/4 v1, 0x2

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    .line 64
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->checkScene()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/AutoSceneUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/effect/IEffectManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/AutoSceneUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/AutoSceneUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkScene()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 346
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v6

    sget-object v7, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v6

    sget-object v7, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-eq v6, v7, :cond_1

    .line 351
    :cond_0
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 514
    :goto_0
    return-void

    .line 354
    :cond_1
    sget-object v7, Lcom/android/camera/component/AutoSceneUI$7;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v6, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v6}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 357
    :pswitch_0
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 367
    :cond_2
    :pswitch_1
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v6, :cond_9

    .line 369
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v6, v6, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 370
    .local v1, effect:Lcom/android/camera/effect/EffectBase;
    instance-of v6, v1, Lcom/android/camera/effect/NoneEffect;

    if-nez v6, :cond_3

    .line 372
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    :cond_3
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v6, v6, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    .line 377
    .local v2, scene:Lcom/android/camera/effect/EffectBase;
    if-eqz v2, :cond_9

    instance-of v6, v2, Lcom/android/camera/effect/AutoScene;

    if-nez v6, :cond_9

    .line 379
    instance-of v6, v2, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v6, :cond_8

    .line 382
    iget-object v6, p0, Lcom/android/camera/IAutoSceneController;->isWdrScene:Lcom/android/camera/property/Property;

    iget-object v7, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-boolean v8, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 385
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkScene() - The ASD type from htccallback is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/component/AutoSceneUI;->m_AsdType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isWdr is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget v6, p0, Lcom/android/camera/component/AutoSceneUI;->m_AsdType:I

    packed-switch v6, :pswitch_data_1

    .line 429
    const-string v4, "auto"

    .line 430
    .local v4, sceneMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->Normal:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 435
    :goto_1
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->Lowlight:Lcom/android/camera/AutoDetectedScene;

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->LowlightPortrait:Lcom/android/camera/AutoDetectedScene;

    if-ne v6, v7, :cond_6

    .line 437
    :cond_4
    iget-boolean v6, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsFlashDisabledByAsd:Z

    if-nez v6, :cond_5

    .line 439
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->disableFlash()V

    .line 440
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsFlashDisabledByAsd:Z

    .line 452
    :cond_5
    :goto_2
    const-class v6, Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0, v6}, Lcom/android/camera/component/AutoSceneUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/ISceneController;

    .line 453
    .local v3, sceneController:Lcom/android/camera/effect/ISceneController;
    if-eqz v3, :cond_7

    .line 455
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "checkScene() - Change scene mode to \'"

    const-string v8, "\'"

    invoke-static {v6, v7, v4, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    invoke-virtual {v3, v4, v9}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 389
    .end local v3           #sceneController:Lcom/android/camera/effect/ISceneController;
    .end local v4           #sceneMode:Ljava/lang/String;
    :pswitch_2
    const-string v4, "auto"

    .line 390
    .restart local v4       #sceneMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->Normal:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    .line 393
    .end local v4           #sceneMode:Ljava/lang/String;
    :pswitch_3
    const-string v4, "landscape"

    .line 394
    .restart local v4       #sceneMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->Landscape:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    .end local v4           #sceneMode:Ljava/lang/String;
    :pswitch_4
    const-string v4, "flowers"

    .line 398
    .restart local v4       #sceneMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->Macro:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    .line 401
    .end local v4           #sceneMode:Ljava/lang/String;
    :pswitch_5
    const-string v4, "snow"

    .line 402
    .restart local v4       #sceneMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->Snowscape:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    .line 405
    .end local v4           #sceneMode:Ljava/lang/String;
    :pswitch_6
    const-string v4, "night"

    .line 406
    .restart local v4       #sceneMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->Lowlight:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    .line 409
    .end local v4           #sceneMode:Ljava/lang/String;
    :pswitch_7
    const-string v4, "backlight"

    .line 410
    .restart local v4       #sceneMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->Backlight:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    .line 413
    .end local v4           #sceneMode:Ljava/lang/String;
    :pswitch_8
    const-string v4, "portrait"

    .line 414
    .restart local v4       #sceneMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->Portrait:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    .line 417
    .end local v4           #sceneMode:Ljava/lang/String;
    :pswitch_9
    const-string v4, "night-portrait"

    .line 418
    .restart local v4       #sceneMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->LowlightPortrait:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 421
    .end local v4           #sceneMode:Ljava/lang/String;
    :pswitch_a
    const-string v4, "backlight_portrait"

    .line 422
    .restart local v4       #sceneMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->PortraitBacklight:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 425
    .end local v4           #sceneMode:Ljava/lang/String;
    :pswitch_b
    const-string v4, "text"

    .line 426
    .restart local v4       #sceneMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->Text:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 445
    :cond_6
    iget-boolean v6, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsFlashDisabledByAsd:Z

    if-eqz v6, :cond_5

    .line 447
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 448
    iput-boolean v9, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsFlashDisabledByAsd:Z

    goto/16 :goto_2

    .line 459
    .restart local v3       #sceneController:Lcom/android/camera/effect/ISceneController;
    :cond_7
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "checkScene() - No ISceneController interface to change scene mode"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    .end local v3           #sceneController:Lcom/android/camera/effect/ISceneController;
    .end local v4           #sceneMode:Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 469
    .end local v1           #effect:Lcom/android/camera/effect/EffectBase;
    .end local v2           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v5

    .line 472
    .local v5, settings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v5, Lcom/android/camera/CameraSettings;->isAutoFiveShotsEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/CameraThread;->hasMovingObjects:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 476
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->FiveShots:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 502
    :cond_a
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v5, Lcom/android/camera/CameraSettings;->mainSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Duration;

    invoke-virtual {v6}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    iget-object v6, v5, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 507
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 513
    :cond_b
    iget-object v6, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 387
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 521
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 529
    :cond_0
    :goto_0
    return v3

    .line 523
    :cond_1
    const-class v0, Lcom/android/camera/component/AutoSceneController;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AutoSceneUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/AutoSceneController;

    iput-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

    .line 524
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

    if-eqz v0, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

    const/16 v2, 0x2713

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/AutoSceneUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 527
    goto :goto_0
.end method

.method private setupEventHandlers()V
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 220
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->activatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$1;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 228
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$2;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 236
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 7

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 244
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    .line 247
    .local v2, settings:Lcom/android/camera/CameraSettings;
    new-instance v0, Lcom/android/camera/component/AutoSceneUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AutoSceneUI$3;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    .line 255
    .local v0, callback:Lcom/android/camera/property/PropertyChangedCallback;
    iget-object v3, p0, Lcom/android/camera/component/AutoSceneUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/android/camera/component/AutoSceneUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v3, v3, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/AutoSceneUI$4;

    invoke-direct {v4, p0}, Lcom/android/camera/component/AutoSceneUI$4;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 268
    iget-object v3, p0, Lcom/android/camera/component/AutoSceneUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v3, v3, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/AutoSceneUI$5;

    invoke-direct {v4, p0}, Lcom/android/camera/component/AutoSceneUI$5;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 307
    :cond_0
    iget-object v3, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 308
    iget-object v3, v1, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 309
    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/component/AutoSceneUI$6;

    iget-object v5, v1, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v6, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/camera/component/AutoSceneUI$6;-><init>(Lcom/android/camera/component/AutoSceneUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->isAutoFiveShotsEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 318
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 336
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->checkScene()V

    .line 337
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 539
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    .line 545
    invoke-super {p0}, Lcom/android/camera/IAutoSceneController;->deinitializeOverride()V

    .line 546
    return-void
.end method

.method public enterSmartSceneDetectMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterSmartSceneDetectMode()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-boolean v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Re-enter SmartSceneDetect mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Re-enter SmartSceneDetect mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    .line 83
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->Normal:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 84
    iput v4, p0, Lcom/android/camera/component/AutoSceneUI;->m_AsdType:I

    .line 85
    iput-boolean v4, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    .line 86
    iput-boolean v4, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsFlashDisabledByAsd:Z

    .line 87
    iget-object v1, p0, Lcom/android/camera/IAutoSceneController;->isWdrScene:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->checkScene()V

    .line 91
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 94
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    instance-of v1, v0, Lcom/android/camera/effect/NoneEffect;

    if-nez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterSmartSceneDetectMode() - current effect is not None Effect. Return."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-boolean v4, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    .line 98
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 108
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->linkToController()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

    const/16 v2, 0x2711

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/AutoSceneUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterSmartSceneDetectMode() - No controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exitSmartSceneDetectMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "exitSmartSceneDetectMode()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit SmartSceneDetect mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 125
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    .line 126
    iget-object v0, p0, Lcom/android/camera/IAutoSceneController;->isWdrScene:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    iput-boolean v3, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    .line 128
    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsFlashDisabledByAsd:Z

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 130
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsFlashDisabledByAsd:Z

    .line 133
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/AutoSceneUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "exitSmartSceneDetectMode() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 183
    invoke-super {p0, p1}, Lcom/android/camera/IAutoSceneController;->handleMessage(Landroid/os/Message;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 150
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->checkScene()V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "SmartSceneDetect mode is not entered. There should be no callbacks."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/camera/HtcCallbackEventArgs;

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/HtcCallbackEventArgs;

    check-cast v0, Lcom/android/camera/HtcCallbackEventArgs;

    iget v0, v0, Lcom/android/camera/HtcCallbackEventArgs;->arg1:I

    iput v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AsdType:I

    .line 166
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/HtcCallbackEventArgs;

    check-cast v0, Lcom/android/camera/HtcCallbackEventArgs;

    iget v0, v0, Lcom/android/camera/HtcCallbackEventArgs;->arg2:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    .line 173
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->checkScene()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 166
    goto :goto_1

    .line 170
    :cond_3
    iput v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_AsdType:I

    .line 171
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    goto :goto_2

    .line 177
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/component/AutoSceneController;

    iput-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

    .line 178
    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/AutoSceneUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/camera/IAutoSceneController;->initializeOverride()V

    .line 199
    const-class v0, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AutoSceneUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;

    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 206
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->setupEventHandlers()V

    .line 209
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->setupPropertyChangedCallbacks()V

    .line 210
    return-void
.end method
