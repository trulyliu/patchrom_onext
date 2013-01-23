.class final Lcom/android/camera/effect/EffectManager;
.super Lcom/android/camera/effect/IEffectManager;
.source "EffectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectManager$10;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "Effect Manager"

.field private static final m_EffectFactories:[Lcom/android/camera/effect/EffectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/android/camera/effect/EffectFactory",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final m_AllEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private final m_AllScenes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private m_CameraSettings:Lcom/android/camera/CameraSettings;

.field private m_CpuFreqLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

.field private m_CpuNumLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

.field private final m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

.field private m_DefaultScene:Lcom/android/camera/effect/EffectBase;

.field private m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

.field private m_FrontCameraModeScene:Lcom/android/camera/effect/EffectBase;

.field private m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

.field private m_FrontVideoModeScene:Lcom/android/camera/effect/EffectBase;

.field private m_IsFlashDisabled:Z

.field private m_IsSelfTimerDisabled:Z

.field private m_LastAppliedEffect:Lcom/android/camera/effect/EffectBase;

.field private m_LastAppliedScene:Lcom/android/camera/effect/EffectBase;

.field private m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

.field private m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

.field private m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

.field private m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

.field private m_NeedToApplyEffectAgain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/android/camera/effect/EffectFactory;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/effect/DistortionEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/DistortionEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/effect/VignetteEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/VignetteEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/camera/effect/DepthOfFieldEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/DepthOfFieldEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/camera/effect/DotsEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/DotsEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/camera/effect/SplitToningMonoEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/SplitToningMonoEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/camera/effect/NashEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/NashEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/camera/effect/VintageHighEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/VintageHighEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/camera/effect/VintageRedEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/VintageRedEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/camera/effect/VintageGreenEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/VintageGreenEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/android/camera/effect/GrayscaleEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/GrayscaleEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/android/camera/effect/SepiaEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/SepiaEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/android/camera/effect/NegativeEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/NegativeEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/android/camera/effect/SolarizeEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/SolarizeEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/android/camera/effect/PosterizeEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/PosterizeEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/android/camera/effect/AquaEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/AquaEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/android/camera/effect/HdrSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/HdrSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/android/camera/effect/PanoramaSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/PanoramaSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/android/camera/sina/GifModeSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/sina/GifModeSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/android/camera/effect/LandscapeSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/LandscapeSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/android/camera/effect/PortraitSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/PortraitSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/android/camera/effect/BacklightSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/BacklightSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/android/camera/effect/LowlightSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/LowlightSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/android/camera/effect/TextSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/TextSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/android/camera/effect/CloseUpSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/CloseUpSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/android/camera/effect/SmartShotSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/SmartShotSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/android/camera/effect/BurstSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/BurstSceneFactory;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/effect/EffectManager;->m_EffectFactories:[Lcom/android/camera/effect/EffectFactory;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 12
    .parameter "cameraActivity"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 116
    const-string v7, "Effect Manager"

    invoke-direct {p0, v7, v11, p1}, Lcom/android/camera/effect/IEffectManager;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;)V

    .line 107
    iput-object v8, p0, Lcom/android/camera/effect/EffectManager;->m_CpuFreqLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 108
    iput-object v8, p0, Lcom/android/camera/effect/EffectManager;->m_CpuNumLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 119
    if-nez p1, :cond_0

    .line 121
    const-string v7, "cameraActivity"

    invoke-static {v7}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 122
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "cameraActivity is NULL"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_CameraSettings:Lcom/android/camera/CameraSettings;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, allEffects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/effect/EffectBase;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, effects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/effect/EffectBase;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v6, scenes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/effect/EffectBase;>;"
    new-instance v7, Lcom/android/camera/effect/NoneEffect;

    invoke-direct {v7, p1}, Lcom/android/camera/effect/NoneEffect;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v7, Lcom/android/camera/effect/SmartSceneDetectorScene;

    invoke-direct {v7, p1}, Lcom/android/camera/effect/SmartSceneDetectorScene;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v7, Lcom/android/camera/effect/AutoScene;

    invoke-direct {v7, p1}, Lcom/android/camera/effect/AutoScene;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    sget-object v7, Lcom/android/camera/effect/EffectManager;->m_EffectFactories:[Lcom/android/camera/effect/EffectFactory;

    array-length v7, v7

    if-ge v5, v7, :cond_4

    .line 141
    sget-object v7, Lcom/android/camera/effect/EffectManager;->m_EffectFactories:[Lcom/android/camera/effect/EffectFactory;

    aget-object v4, v7, v5

    .line 144
    .local v4, factory:Lcom/android/camera/effect/EffectFactory;,"Lcom/android/camera/effect/EffectFactory<*>;"
    :try_start_0
    invoke-virtual {v4, p1}, Lcom/android/camera/effect/EffectFactory;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 147
    invoke-virtual {v4, p1}, Lcom/android/camera/effect/EffectFactory;->createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    .line 150
    .local v1, effect:Lcom/android/camera/effect/EffectBase;
    instance-of v7, v1, Lcom/android/camera/effect/IEffect;

    if-eqz v7, :cond_2

    .line 151
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v1           #effect:Lcom/android/camera/effect/EffectBase;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    .restart local v1       #effect:Lcom/android/camera/effect/EffectBase;
    :cond_2
    instance-of v7, v1, Lcom/android/camera/effect/IScene;

    if-eqz v7, :cond_3

    .line 153
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 158
    .end local v1           #effect:Lcom/android/camera/effect/EffectBase;
    :catch_0
    move-exception v3

    .line 160
    .local v3, ex:Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot create effect by factory \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 155
    .end local v3           #ex:Ljava/lang/Throwable;
    .restart local v1       #effect:Lcom/android/camera/effect/EffectBase;
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot categorize \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 163
    .end local v1           #effect:Lcom/android/camera/effect/EffectBase;
    .end local v4           #factory:Lcom/android/camera/effect/EffectFactory;,"Lcom/android/camera/effect/EffectFactory<*>;"
    :cond_4
    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    .line 164
    iput-object v6, p0, Lcom/android/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/effect/EffectBase;

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    .line 168
    const-string v7, "Smart Scene"

    iget-object v8, p0, Lcom/android/camera/effect/EffectManager;->m_CameraSettings:Lcom/android/camera/CameraSettings;

    const-string v9, "pref_camera_scene"

    invoke-virtual {v8, v9}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 169
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/effect/EffectBase;

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    .line 172
    :goto_2
    iget-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_CameraSettings:Lcom/android/camera/CameraSettings;

    const-string v8, "pref_camera_scene"

    iget-object v9, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v9}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0, v10}, Lcom/android/camera/effect/EffectManager;->reset(Z)V

    .line 174
    return-void

    .line 171
    :cond_5
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/effect/EffectBase;

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_2
.end method

.method static synthetic access$002(Lcom/android/camera/effect/EffectManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectManager;->m_NeedToApplyEffectAgain:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/effect/EffectManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectManager;->reset(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/effect/EffectManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/effect/EffectManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectManager;->prepareEffectForNewMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/effect/EffectManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/effect/EffectManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/effect/EffectManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/camera/effect/EffectManager;->unLockCpu()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/effect/EffectManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/camera/effect/EffectManager;->setupCurrentEffectAndScene()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/CameraSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_CameraSettings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method private applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 8
    .parameter "newEffect"

    .prologue
    .line 182
    instance-of v6, p1, Lcom/android/camera/effect/IEffect;

    .line 183
    .local v6, isEffect:Z
    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_LastAppliedEffect:Lcom/android/camera/effect/EffectBase;

    .line 186
    .local v7, prevEffect:Lcom/android/camera/effect/EffectBase;
    :goto_0
    if-ne v7, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectManager;->m_NeedToApplyEffectAgain:Z

    if-nez v0, :cond_1

    .line 232
    :goto_1
    return-void

    .line 183
    .end local v7           #prevEffect:Lcom/android/camera/effect/EffectBase;
    :cond_0
    iget-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_LastAppliedScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_0

    .line 190
    .restart local v7       #prevEffect:Lcom/android/camera/effect/EffectBase;
    :cond_1
    if-eqz v7, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "applyEffect() - Cancel "

    if-eqz v6, :cond_6

    const-string v2, "effect"

    :goto_2
    const-string v3, " \'"

    invoke-virtual {v7}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v7, p1}, Lcom/android/camera/effect/EffectBase;->cancel(Lcom/android/camera/effect/EffectBase;)V

    .line 194
    iget-object v0, p0, Lcom/android/camera/effect/IEffectManager;->effectCanceledEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/camera/effect/IEffectManager;->effectCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v1, v7}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 199
    :cond_2
    if-eqz p1, :cond_5

    .line 201
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "applyEffect() - Apply "

    if-eqz v6, :cond_7

    const-string v2, "effect"

    :goto_3
    const-string v3, " \'"

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    instance-of v0, p1, Lcom/android/camera/effect/IEffect;

    if-eqz v0, :cond_3

    .line 207
    instance-of v0, p1, Lcom/android/camera/effect/GpuEffectBase;

    if-eqz v0, :cond_8

    .line 209
    invoke-direct {p0}, Lcom/android/camera/effect/EffectManager;->lockCpu()V

    .line 219
    :cond_3
    :goto_4
    instance-of v0, p1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_4

    .line 221
    invoke-direct {p0}, Lcom/android/camera/effect/EffectManager;->resetImageSettings()V

    .line 224
    :cond_4
    invoke-virtual {p1, v7}, Lcom/android/camera/effect/EffectBase;->apply(Lcom/android/camera/effect/EffectBase;)V

    .line 225
    iget-object v0, p0, Lcom/android/camera/effect/IEffectManager;->effectAppliedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p0, Lcom/android/camera/effect/IEffectManager;->effectAppliedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v1, p1}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 228
    :cond_5
    if-eqz v6, :cond_9

    .line 229
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_LastAppliedEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    .line 192
    :cond_6
    const-string v2, "scene"

    goto :goto_2

    .line 201
    :cond_7
    const-string v2, "scene"

    goto :goto_3

    .line 213
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/effect/EffectManager;->unLockCpu()V

    goto :goto_4

    .line 231
    :cond_9
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_LastAppliedScene:Lcom/android/camera/effect/EffectBase;

    goto/16 :goto_1
.end method

.method private canEnableFlash(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)Z
    .locals 1
    .parameter "effect"
    .parameter "scene"

    .prologue
    .line 1010
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/android/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/android/camera/effect/EffectBase;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/camera/effect/EffectBase;"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    .local p2, effectClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 351
    .local v0, candEffect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    .end local v0           #candEffect:Lcom/android/camera/effect/EffectBase;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEffectList(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, allEffects:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v6

    .line 364
    .local v6, mode:Lcom/android/camera/CameraMode;
    const/4 v7, 0x0

    .line 365
    .local v7, modeCapabilityFlag:I
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v9

    if-nez v9, :cond_2

    .line 366
    sget-object v9, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v6, v9, :cond_1

    const/16 v7, 0x10

    .line 378
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v1

    .line 380
    .local v1, cameraType:Lcom/android/camera/CameraType;
    sget-object v9, Lcom/android/camera/effect/EffectManager$10;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 392
    iget-object v9, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getEffectList() - Unknown camera type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x0

    .line 398
    .local v0, cameraCapabilityFlag:I
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/effect/EffectBase;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 401
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/EffectBase;

    .line 402
    .local v3, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v3}, Lcom/android/camera/effect/EffectBase;->getCapabilities()I

    move-result v2

    .line 403
    .local v2, capabilities:I
    and-int v9, v2, v7

    if-ne v9, v7, :cond_0

    and-int v9, v2, v0

    if-ne v9, v0, :cond_0

    .line 404
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 366
    .end local v0           #cameraCapabilityFlag:I
    .end local v1           #cameraType:Lcom/android/camera/CameraType;
    .end local v2           #capabilities:I
    .end local v3           #effect:Lcom/android/camera/effect/EffectBase;
    .end local v4           #i:I
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/effect/EffectBase;>;"
    :cond_1
    const/16 v7, 0x20

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v8

    .line 370
    .local v8, startMode:Lcom/android/camera/CameraStartMode;
    iget-boolean v9, v8, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-nez v9, :cond_3

    .line 371
    const/16 v7, 0x20

    .line 372
    :cond_3
    iget-boolean v9, v8, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-nez v9, :cond_4

    .line 373
    const/16 v7, 0x10

    .line 374
    :cond_4
    or-int/lit8 v7, v7, 0x40

    goto :goto_0

    .line 383
    .end local v8           #startMode:Lcom/android/camera/CameraStartMode;
    .restart local v1       #cameraType:Lcom/android/camera/CameraType;
    :pswitch_0
    const/4 v0, 0x1

    .line 384
    .restart local v0       #cameraCapabilityFlag:I
    goto :goto_1

    .line 386
    .end local v0           #cameraCapabilityFlag:I
    :pswitch_1
    const/4 v0, 0x2

    .line 387
    .restart local v0       #cameraCapabilityFlag:I
    goto :goto_1

    .line 389
    .end local v0           #cameraCapabilityFlag:I
    :pswitch_2
    const/4 v0, 0x4

    .line 390
    .restart local v0       #cameraCapabilityFlag:I
    goto :goto_1

    .line 406
    .restart local v4       #i:I
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/effect/EffectBase;>;"
    :cond_5
    return-object v5

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private lockCpu()V
    .locals 5

    .prologue
    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_CpuFreqLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_CpuNumLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    if-nez v2, :cond_0

    .line 309
    new-instance v1, Lcom/htc/wrap/android/os/HtcWrapPowerManager;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/wrap/android/os/HtcWrapPowerManager;-><init>(Landroid/content/Context;)V

    .line 310
    .local v1, mHWPM:Lcom/htc/wrap/android/os/HtcWrapPowerManager;
    const/16 v2, 0x100

    const/4 v3, 0x3

    const-string v4, "CameraGpuEffect"

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->newHtcCpuCtrlWrap(IILjava/lang/String;)Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_CpuFreqLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 311
    const/16 v2, 0x400

    const/4 v3, 0x2

    const-string v4, "CameraGpuEffect"

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->newHtcCpuCtrlWrap(IILjava/lang/String;)Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_CpuNumLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 313
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "[Gavin] lockCpu() - Lock CPU"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_CpuFreqLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-virtual {v2}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->acquire()V

    .line 315
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_CpuNumLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-virtual {v2}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->acquire()V

    .line 327
    .end local v1           #mHWPM:Lcom/htc/wrap/android/os/HtcWrapPowerManager;
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "[Gavin] CPU is already locked"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "[Gavin] lockCpu() - RemoteException"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private prepareEffectForNewMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)V
    .locals 9
    .parameter "newCameraType"
    .parameter "newMode"

    .prologue
    const/4 v5, 0x1

    .line 575
    iget-object v6, p0, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 576
    .local v0, currentEffect:Lcom/android/camera/effect/EffectBase;
    iget-object v6, p0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 578
    .local v1, currentScene:Lcom/android/camera/effect/EffectBase;
    sget-object v6, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne p2, v6, :cond_4

    move v2, v5

    .line 579
    .local v2, isCameraMode:Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 581
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 582
    .local v3, nextEffect:Lcom/android/camera/effect/EffectBase;
    :goto_1
    if-eqz v3, :cond_0

    instance-of v6, v3, Lcom/android/camera/effect/NoneEffect;

    if-eqz v6, :cond_7

    .line 583
    :cond_0
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    .line 593
    .local v4, nextScene:Lcom/android/camera/effect/EffectBase;
    :goto_2
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "prepareEffectForNewMode() - Next effect : "

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 594
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "prepareEffectForNewMode() - Next scene : "

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 597
    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    .line 599
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "prepareEffectForNewMode() - Cancel effect : "

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 600
    invoke-virtual {v0, v3}, Lcom/android/camera/effect/EffectBase;->cancel(Lcom/android/camera/effect/EffectBase;)V

    .line 602
    :cond_1
    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_2

    .line 604
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "prepareEffectForNewMode() - Cancel scene : "

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 605
    invoke-virtual {v1, v4}, Lcom/android/camera/effect/EffectBase;->cancel(Lcom/android/camera/effect/EffectBase;)V

    .line 609
    :cond_2
    if-eqz v3, :cond_3

    .line 610
    invoke-virtual {v3, v0, v5}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    .line 611
    :cond_3
    invoke-virtual {v4, v1, v5}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    .line 612
    return-void

    .line 578
    .end local v2           #isCameraMode:Z
    .end local v3           #nextEffect:Lcom/android/camera/effect/EffectBase;
    .end local v4           #nextScene:Lcom/android/camera/effect/EffectBase;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 581
    .restart local v2       #isCameraMode:Z
    :cond_5
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    .line 583
    .restart local v3       #nextEffect:Lcom/android/camera/effect/EffectBase;
    :cond_6
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_2

    .line 585
    :cond_7
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    .restart local v4       #nextScene:Lcom/android/camera/effect/EffectBase;
    goto :goto_2

    .line 589
    .end local v3           #nextEffect:Lcom/android/camera/effect/EffectBase;
    .end local v4           #nextScene:Lcom/android/camera/effect/EffectBase;
    :cond_8
    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 590
    .restart local v3       #nextEffect:Lcom/android/camera/effect/EffectBase;
    :goto_3
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    .restart local v4       #nextScene:Lcom/android/camera/effect/EffectBase;
    goto :goto_2

    .line 589
    .end local v3           #nextEffect:Lcom/android/camera/effect/EffectBase;
    .end local v4           #nextScene:Lcom/android/camera/effect/EffectBase;
    :cond_9
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_3
.end method

.method private reset(Z)V
    .locals 4
    .parameter "apply"

    .prologue
    .line 620
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 621
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 622
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 623
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 624
    if-eqz p1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v1}, Lcom/android/camera/effect/EffectManager;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 629
    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_CameraSettings:Lcom/android/camera/CameraSettings;

    const-string v3, "pref_camera_scene"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 630
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    iput-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    .line 634
    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    iput-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    .line 635
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    iput-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    .line 636
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    iput-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeScene:Lcom/android/camera/effect/EffectBase;

    .line 637
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    iput-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeScene:Lcom/android/camera/effect/EffectBase;

    .line 638
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    .line 640
    .local v0, scene:Lcom/android/camera/effect/EffectBase;
    :goto_1
    if-eqz p1, :cond_1

    .line 641
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectManager;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 644
    return-void

    .line 632
    .end local v0           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    iput-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_0

    .line 638
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private resetImageSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    .line 242
    .local v2, settings:Lcom/android/camera/CameraSettings;
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->brightness:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 243
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->contrast:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 244
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->saturation:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 245
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->sharpness:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 248
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->iso:Lcom/android/camera/property/Property;

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->mainWhiteBalance:Lcom/android/camera/property/Property;

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 259
    :goto_0
    new-instance v1, Lcom/android/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 262
    .local v1, imageSettings:Lcom/android/camera/ImageSettings;
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 263
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 264
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 265
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 268
    const-string v3, "auto"

    iput-object v3, v1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    const-string v3, "auto"

    iput-object v3, v1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 277
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v3

    const-class v4, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IImageSettingsController;

    .line 278
    .local v0, controller:Lcom/android/camera/IImageSettingsController;
    if-eqz v0, :cond_0

    .line 279
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    .line 280
    :cond_0
    return-void

    .line 254
    .end local v0           #controller:Lcom/android/camera/IImageSettingsController;
    .end local v1           #imageSettings:Lcom/android/camera/ImageSettings;
    :cond_1
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->frontWhiteBalance:Lcom/android/camera/property/Property;

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    .restart local v1       #imageSettings:Lcom/android/camera/ImageSettings;
    :cond_2
    const-string v3, "auto"

    iput-object v3, v1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    goto :goto_1
.end method

.method private setupCurrentEffectAndScene()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 851
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "setupCurrentEffectAndScene() - Start"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v3

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v3, v5, :cond_2

    const/4 v2, 0x1

    .line 856
    .local v2, isCameraMode:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 859
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 860
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 863
    if-eqz v2, :cond_3

    .line 865
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    .line 866
    .local v1, appliedScene:Lcom/android/camera/effect/EffectBase;
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 900
    .local v0, appliedEffect:Lcom/android/camera/effect/EffectBase;
    :goto_1
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/camera/effect/AutoScene;

    if-nez v3, :cond_0

    instance-of v3, v1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v3, :cond_8

    .line 903
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/effect/EffectManager;->updateSceneList(Lcom/android/camera/effect/EffectBase;)V

    .line 906
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectManager;->updateEffectList(Lcom/android/camera/effect/EffectBase;)V

    .line 919
    :goto_2
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/android/camera/effect/AutoScene;

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-nez v3, :cond_1

    .line 920
    move-object v0, v1

    .line 921
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;)V

    .line 922
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectManager;->updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V

    .line 925
    iput-boolean v4, p0, Lcom/android/camera/effect/EffectManager;->m_NeedToApplyEffectAgain:Z

    .line 927
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "setupCurrentEffectAndScene() - End"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    return-void

    .end local v0           #appliedEffect:Lcom/android/camera/effect/EffectBase;
    .end local v1           #appliedScene:Lcom/android/camera/effect/EffectBase;
    .end local v2           #isCameraMode:Z
    :cond_2
    move v2, v4

    .line 855
    goto :goto_0

    .line 870
    .restart local v2       #isCameraMode:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    .line 871
    .restart local v1       #appliedScene:Lcom/android/camera/effect/EffectBase;
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .restart local v0       #appliedEffect:Lcom/android/camera/effect/EffectBase;
    goto :goto_1

    .line 877
    .end local v0           #appliedEffect:Lcom/android/camera/effect/EffectBase;
    .end local v1           #appliedScene:Lcom/android/camera/effect/EffectBase;
    :cond_4
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 878
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 881
    if-eqz v2, :cond_6

    .line 883
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isFrontCameraSceneEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 884
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeScene:Lcom/android/camera/effect/EffectBase;

    .line 887
    .restart local v1       #appliedScene:Lcom/android/camera/effect/EffectBase;
    :goto_3
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .restart local v0       #appliedEffect:Lcom/android/camera/effect/EffectBase;
    goto :goto_1

    .line 886
    .end local v0           #appliedEffect:Lcom/android/camera/effect/EffectBase;
    .end local v1           #appliedScene:Lcom/android/camera/effect/EffectBase;
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #appliedScene:Lcom/android/camera/effect/EffectBase;
    goto :goto_3

    .line 891
    .end local v1           #appliedScene:Lcom/android/camera/effect/EffectBase;
    :cond_6
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isFrontCameraSceneEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 892
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeScene:Lcom/android/camera/effect/EffectBase;

    .line 895
    .restart local v1       #appliedScene:Lcom/android/camera/effect/EffectBase;
    :goto_4
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .restart local v0       #appliedEffect:Lcom/android/camera/effect/EffectBase;
    goto :goto_1

    .line 894
    .end local v0           #appliedEffect:Lcom/android/camera/effect/EffectBase;
    .end local v1           #appliedScene:Lcom/android/camera/effect/EffectBase;
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #appliedScene:Lcom/android/camera/effect/EffectBase;
    goto :goto_4

    .line 911
    .restart local v0       #appliedEffect:Lcom/android/camera/effect/EffectBase;
    :cond_8
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    .line 912
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectManager;->updateEffectList(Lcom/android/camera/effect/EffectBase;)V

    .line 915
    invoke-direct {p0, v1}, Lcom/android/camera/effect/EffectManager;->updateSceneList(Lcom/android/camera/effect/EffectBase;)V

    goto :goto_2
.end method

.method private unLockCpu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_CpuFreqLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_CpuNumLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "[Gavin] Unlock CPU"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_CpuFreqLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-virtual {v0}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->release()V

    .line 334
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_CpuNumLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-virtual {v0}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->release()V

    .line 335
    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_CpuFreqLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 336
    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_CpuNumLocker:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "[Gavin] CPU is not locked"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateEffectList(Lcom/android/camera/effect/EffectBase;)V
    .locals 4
    .parameter "newEffect"

    .prologue
    .line 936
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/camera/effect/EffectManager;->getEffectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 937
    .local v0, effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "updateEffectList() - Size of effect list is "

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 940
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 941
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/camera/effect/EffectBase;

    .line 944
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/IEffectManager;->effectList:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 947
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectManager;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 948
    iget-object v1, p0, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 949
    return-void
.end method

.method private updateFlashState(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 978
    instance-of v0, p1, Lcom/android/camera/effect/IEffect;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V

    .line 985
    :goto_0
    return-void

    .line 980
    :cond_0
    instance-of v0, p1, Lcom/android/camera/effect/IScene;

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V

    goto :goto_0

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    iget-object v1, p0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V

    goto :goto_0
.end method

.method private updateFlashState(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V
    .locals 4
    .parameter "effect"
    .parameter "scene"

    .prologue
    .line 989
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFlashState - effect is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , scene is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 991
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectManager;->canEnableFlash(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 993
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    if-eqz v1, :cond_0

    .line 995
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    .line 996
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    if-nez v1, :cond_0

    .line 1003
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    .line 1004
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    goto :goto_0
.end method

.method private updateSceneList(Lcom/android/camera/effect/EffectBase;)V
    .locals 4
    .parameter "newScene"

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/camera/effect/EffectManager;->getEffectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1025
    .local v0, sceneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "updateSceneList() - Size of scene list is "

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1028
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1029
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/camera/effect/EffectBase;

    .line 1032
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/IEffectManager;->sceneList:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1035
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectManager;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 1036
    iget-object v1, p0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1037
    return-void
.end method

.method private updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1045
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->isSelfTimerSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1047
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    if-eqz v1, :cond_1

    .line 1049
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    .line 1050
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableSelfTimer()V

    .line 1061
    :cond_1
    :goto_0
    return-void

    .line 1055
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    if-nez v1, :cond_1

    .line 1057
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    .line 1058
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableSelfTimer()V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 4

    .prologue
    .line 289
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 290
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->release()V

    goto :goto_0

    .line 293
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    .line 294
    .local v2, scene:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v2}, Lcom/android/camera/effect/EffectBase;->release()V

    goto :goto_1

    .line 297
    .end local v2           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_1
    invoke-super {p0}, Lcom/android/camera/effect/IEffectManager;->deinitializeOverride()V

    .line 298
    return-void
.end method

.method protected initializeOverride()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 416
    invoke-super {p0}, Lcom/android/camera/effect/IEffectManager;->initializeOverride()V

    .line 419
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 420
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 421
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "scene-mode"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, initialSceneName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeOverride() - Initial scene name is \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    if-eqz v3, :cond_0

    .line 426
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/camera/effect/EffectManager;->updateSceneList(Lcom/android/camera/effect/EffectBase;)V

    .line 429
    iget-object v7, p0, Lcom/android/camera/effect/IEffectManager;->sceneList:Lcom/android/camera/property/Property;

    invoke-virtual {v7}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 430
    .local v6, sceneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 432
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/effect/EffectBase;

    .line 433
    .local v5, scene:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v5}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 435
    iget-object v7, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeOverride() - Initial scene is \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v7

    sget-object v8, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v7, v8, :cond_1

    .line 437
    iput-object v5, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    .line 445
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/effect/EffectManager;->setupCurrentEffectAndScene()V

    .line 452
    .end local v2           #i:I
    .end local v5           #scene:Lcom/android/camera/effect/EffectBase;
    .end local v6           #sceneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    :cond_0
    :goto_2
    iget-object v7, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v8, Lcom/android/camera/effect/EffectManager$1;

    invoke-direct {v8, p0}, Lcom/android/camera/effect/EffectManager$1;-><init>(Lcom/android/camera/effect/EffectManager;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 460
    iget-object v7, v0, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    new-instance v8, Lcom/android/camera/effect/EffectManager$2;

    invoke-direct {v8, p0}, Lcom/android/camera/effect/EffectManager$2;-><init>(Lcom/android/camera/effect/EffectManager;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 469
    iget-object v7, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v8, Lcom/android/camera/effect/EffectManager$3;

    invoke-direct {v8, p0}, Lcom/android/camera/effect/EffectManager$3;-><init>(Lcom/android/camera/effect/EffectManager;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 476
    iget-object v7, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v8, Lcom/android/camera/effect/EffectManager$4;

    invoke-direct {v8, p0}, Lcom/android/camera/effect/EffectManager$4;-><init>(Lcom/android/camera/effect/EffectManager;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 483
    iget-object v7, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/camera/effect/EffectManager$5;

    iget-object v9, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lcom/android/camera/effect/EffectManager$5;-><init>(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v7, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/camera/effect/EffectManager$6;

    iget-object v9, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lcom/android/camera/effect/EffectManager$6;-><init>(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v7, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/camera/effect/EffectManager$7;

    iget-object v9, v0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lcom/android/camera/effect/EffectManager$7;-><init>(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v1, Lcom/android/camera/effect/EffectManager$8;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/EffectManager$8;-><init>(Lcom/android/camera/effect/EffectManager;)V

    .line 558
    .local v1, captureFailedEventHandler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/CaptureEventArgs;>;"
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    new-instance v8, Lcom/android/camera/effect/EffectManager$9;

    invoke-direct {v8, p0, v1}, Lcom/android/camera/effect/EffectManager$9;-><init>(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 567
    return-void

    .line 438
    .end local v1           #captureFailedEventHandler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/CaptureEventArgs;>;"
    .restart local v2       #i:I
    .restart local v5       #scene:Lcom/android/camera/effect/EffectBase;
    .restart local v6       #sceneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    :cond_1
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isVideoSceneSupported()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 439
    iput-object v5, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    .line 442
    :cond_2
    iget-object v7, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "initializeOverride() - Video scene is not supported"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 430
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0
.end method

.method public setCurrentEffect(Ljava/lang/Class;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, effectClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 653
    if-nez p1, :cond_0

    .line 655
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setCurrentEffect() - No effect class"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :goto_0
    return v3

    .line 659
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "setCurrentEffect() - Class : "

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 662
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->threadAccessCheck()V

    .line 663
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->isRunning()Z

    move-result v6

    if-nez v6, :cond_1

    .line 665
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setCurrentEffect() - Component is not running"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_1
    iget-object v6, p0, Lcom/android/camera/effect/IEffectManager;->effectList:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 671
    .local v1, effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    if-nez v1, :cond_2

    .line 673
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setCurrentEffect() - No effect list"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/android/camera/effect/EffectManager;->findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    .line 677
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    if-nez v0, :cond_3

    .line 679
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setCurrentEffect() - No effect found"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_3
    instance-of v6, v0, Lcom/android/camera/effect/NoneEffect;

    if-nez v6, :cond_4

    .line 686
    iget-object v6, p0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/effect/EffectBase;

    .line 687
    .local v4, scene:Lcom/android/camera/effect/EffectBase;
    if-eqz v4, :cond_4

    instance-of v6, v4, Lcom/android/camera/effect/AutoScene;

    if-nez v6, :cond_4

    instance-of v6, v4, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-nez v6, :cond_4

    .line 689
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setCurrentEffect() - Cannot change effect because current scene is not auto"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    .end local v4           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_4
    sget-object v6, Lcom/android/camera/effect/EffectManager$10;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 730
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectManager;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 731
    iget-object v6, p0, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v7, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v6, v7, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 734
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;)V

    .line 735
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectManager;->updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V

    move v3, v5

    .line 736
    goto :goto_0

    .line 699
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getCapabilities()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_5

    move v3, v5

    .line 700
    .local v3, isVideoModeSupported:Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 702
    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 703
    if-eqz v3, :cond_6

    move-object v6, v0

    :goto_2
    iput-object v6, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_2

    .line 707
    :cond_7
    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 708
    if-eqz v3, :cond_8

    move-object v6, v0

    :goto_3
    iput-object v6, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_3

    .line 714
    .end local v3           #isVideoModeSupported:Z
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getCapabilities()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_9

    move v2, v5

    .line 715
    .local v2, isCameraModeSupported:Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 717
    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 718
    if-eqz v2, :cond_a

    move-object v6, v0

    :goto_5
    iput-object v6, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    .end local v2           #isCameraModeSupported:Z
    :cond_9
    move v2, v3

    .line 714
    goto :goto_4

    .line 718
    .restart local v2       #isCameraModeSupported:Z
    :cond_a
    iget-object v6, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_5

    .line 722
    :cond_b
    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 723
    if-eqz v2, :cond_c

    move-object v6, v0

    :goto_6
    iput-object v6, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    :cond_c
    iget-object v6, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_6

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentScene(Ljava/lang/Class;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, sceneClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 746
    if-nez p1, :cond_0

    .line 748
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setCurrentScene() - No scene class"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :goto_0
    return v4

    .line 752
    :cond_0
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setCurrentScene() - Class : "

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 755
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->threadAccessCheck()V

    .line 756
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->isRunning()Z

    move-result v5

    if-nez v5, :cond_1

    .line 758
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setCurrentScene() - Component is not running"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_1
    iget-object v5, p0, Lcom/android/camera/effect/IEffectManager;->sceneList:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 764
    .local v3, sceneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    if-nez v3, :cond_2

    .line 766
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setCurrentScene() - No scene list"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_2
    invoke-direct {p0, v3, p1}, Lcom/android/camera/effect/EffectManager;->findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    .line 770
    .local v2, scene:Lcom/android/camera/effect/EffectBase;
    if-nez v2, :cond_3

    .line 772
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "setCurrentScene() - No scene found"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_3
    sget-object v4, Lcom/android/camera/effect/EffectManager$10;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 794
    :goto_1
    instance-of v4, v2, Lcom/android/camera/effect/AutoScene;

    if-nez v4, :cond_4

    instance-of v4, v2, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v4, :cond_a

    .line 797
    :cond_4
    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v5

    if-ne v4, v5, :cond_5

    .line 798
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_CameraSettings:Lcom/android/camera/CameraSettings;

    const-string v5, "pref_camera_scene"

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 801
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/camera/effect/EffectManager;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 802
    iget-object v4, p0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 806
    sget-object v4, Lcom/android/camera/effect/EffectManager$10;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 815
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    .line 820
    .local v1, prevEffect:Lcom/android/camera/effect/EffectBase;
    :goto_2
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCurrentScene() - Restore effect to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-direct {p0, v1}, Lcom/android/camera/effect/EffectManager;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 822
    iget-object v4, p0, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v4, v5, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 841
    .end local v1           #prevEffect:Lcom/android/camera/effect/EffectBase;
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;)V

    .line 842
    invoke-direct {p0, v2}, Lcom/android/camera/effect/EffectManager;->updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V

    .line 843
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 780
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 781
    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    .line 783
    :cond_6
    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    .line 786
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 787
    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    goto/16 :goto_1

    .line 789
    :cond_7
    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeScene:Lcom/android/camera/effect/EffectBase;

    goto/16 :goto_1

    .line 809
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 810
    .restart local v1       #prevEffect:Lcom/android/camera/effect/EffectBase;
    :goto_4
    goto :goto_2

    .line 809
    .end local v1           #prevEffect:Lcom/android/camera/effect/EffectBase;
    :cond_8
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_4

    .line 812
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 813
    .restart local v1       #prevEffect:Lcom/android/camera/effect/EffectBase;
    :goto_5
    goto :goto_2

    .line 812
    .end local v1           #prevEffect:Lcom/android/camera/effect/EffectBase;
    :cond_9
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_5

    .line 827
    :cond_a
    iget-object v4, p0, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 828
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    if-eqz v0, :cond_b

    instance-of v4, v0, Lcom/android/camera/effect/NoneEffect;

    if-nez v4, :cond_b

    .line 830
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "setCurrentScene() - Change effect to \'none\'"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v4}, Lcom/android/camera/effect/EffectManager;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 832
    iget-object v4, p0, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 836
    :cond_b
    invoke-direct {p0, v2}, Lcom/android/camera/effect/EffectManager;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 837
    iget-object v4, p0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 806
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
