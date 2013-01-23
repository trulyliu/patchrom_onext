.class public Lcom/android/camera/menu/WhiteBalanceMenuItem;
.super Lcom/android/camera/menu/ListPreferenceMenuItem;
.source "WhiteBalanceMenuItem.java"


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private final m_CameraType:Lcom/android/camera/CameraType;

.field private m_EffectManager:Lcom/android/camera/effect/IEffectManager;

.field private final m_ImageSettings:Lcom/android/camera/ImageSettings;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;I)V
    .locals 8
    .parameter "cameraActivity"
    .parameter "cameraType"
    .parameter "titleResId"

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "pref_camera_white_balance"

    :goto_0
    const v5, 0x7f07001e

    const v6, 0x7f07001d

    const-string v7, "auto"

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/menu/ListPreferenceMenuItem;-><init>(Landroid/content/Context;Lcom/android/camera/Settings;Ljava/lang/String;IIILjava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 41
    iput-object p2, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_CameraType:Lcom/android/camera/CameraType;

    .line 42
    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p1}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_ImageSettings:Lcom/android/camera/ImageSettings;

    .line 43
    iget-object v0, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    .line 44
    return-void

    .line 32
    :cond_0
    const-string v3, "pref_camera_white_balance_2nd"

    goto :goto_0
.end method


# virtual methods
.method protected checkSubItemVisibility(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)Z
    .locals 1
    .parameter "item"
    .parameter "value"

    .prologue
    .line 52
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected onSubItemClicked(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)V
    .locals 4
    .parameter "item"
    .parameter "value"

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/camera/menu/ListPreferenceMenuItem;->onSubItemClicked(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_CameraType:Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_ImageSettings:Lcom/android/camera/ImageSettings;

    iput-object p2, v2, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v2

    const-class v3, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IImageSettingsController;

    .line 67
    .local v0, controller:Lcom/android/camera/IImageSettingsController;
    if-eqz v0, :cond_0

    .line 68
    iget-object v2, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_ImageSettings:Lcom/android/camera/ImageSettings;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    .line 70
    :cond_0
    const-string v2, "auto"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v2, v2, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    const-class v3, Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    .line 78
    iget-object v2, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v2

    const-class v3, Lcom/android/camera/IToastManager;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IToastManager;

    .line 79
    .local v1, toastManager:Lcom/android/camera/IToastManager;
    if-eqz v1, :cond_3

    .line 80
    const v2, 0x7f0a0065

    invoke-virtual {v1, v2}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    .line 86
    .end local v1           #toastManager:Lcom/android/camera/IToastManager;
    :cond_1
    :goto_1
    return-void

    .line 65
    .end local v0           #controller:Lcom/android/camera/IImageSettingsController;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_ImageSettings:Lcom/android/camera/ImageSettings;

    iput-object p2, v2, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    goto :goto_0

    .line 82
    .restart local v0       #controller:Lcom/android/camera/IImageSettingsController;
    .restart local v1       #toastManager:Lcom/android/camera/IToastManager;
    :cond_3
    const-string v2, "WhiteBalanceMenuItem"

    const-string v3, "onSubItemClicked() - No IToastManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
