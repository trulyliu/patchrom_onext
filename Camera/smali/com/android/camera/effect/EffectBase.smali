.class public abstract Lcom/android/camera/effect/EffectBase;
.super Lcom/android/camera/ThreadDependencyObject;
.source "EffectBase.java"


# static fields
.field public static final CAPABILITY_SUPPORTS_ALL:I = 0x7fffffff

.field public static final CAPABILITY_SUPPORTS_CAMERA_MODE:I = 0x10

.field public static final CAPABILITY_SUPPORTS_FRONT_3D_CAMERA:I = 0x8

.field public static final CAPABILITY_SUPPORTS_FRONT_CAMERA:I = 0x4

.field public static final CAPABILITY_SUPPORTS_MAIN_3D_CAMERA:I = 0x2

.field public static final CAPABILITY_SUPPORTS_MAIN_CAMERA:I = 0x1

.field public static final CAPABILITY_SUPPORTS_SERVICE_MODE:I = 0x40

.field public static final CAPABILITY_SUPPORTS_VIDEO_MODE:I = 0x20

.field private static final FLAG_APPLIED:I = 0x2

.field private static final FLAG_PREPARED:I = 0x1

.field private static final FLAG_RELEASED:I = 0x4

.field public static final PA_FLAG_WILL_RESTART_PREVIEW:I = 0x1

.field public static final PC_FLAG_WILL_RESTART_PREVIEW:I = 0x1


# instance fields
.field private m_BackupImageSettings:Lcom/android/camera/ImageSettings;

.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private final m_CameraThread:Lcom/android/camera/CameraThread;

.field private m_EffectController:Lcom/android/camera/effect/IEffectController;

.field private m_Flags:I

.field private final m_Name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "name"
    .parameter "cameraActivity"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 48
    const-string v0, "name"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 53
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :cond_1
    iput-object p1, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/android/camera/effect/EffectBase;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 60
    invoke-virtual {p2}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraThread:Lcom/android/camera/CameraThread;

    .line 63
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "There is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 68
    :cond_2
    return-void
.end method


# virtual methods
.method final apply(Lcom/android/camera/effect/EffectBase;)V
    .locals 8
    .parameter "prevEffect"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 79
    iget v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    .line 81
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Effect is released"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 86
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Effect \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' has already been applied"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    iget v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    .line 93
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lcom/android/camera/effect/EffectBase;->prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V

    .line 94
    iget v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    .line 98
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectBase;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 99
    iget v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v0

    .line 103
    .local v0, disabledImageSettings:I
    if-eqz p1, :cond_5

    if-eq p1, p0, :cond_5

    .line 105
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v2

    .line 106
    .local v2, prevDisabledImgSettings:I
    xor-int/lit8 v5, v0, -0x1

    and-int v4, v2, v5

    .line 107
    .local v4, restoredSettings:I
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getBackupImageSettings()Lcom/android/camera/ImageSettings;

    move-result-object v3

    .line 108
    .local v3, prevSettings:Lcom/android/camera/ImageSettings;
    if-eqz v3, :cond_5

    .line 110
    if-eqz v4, :cond_4

    .line 112
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    .line 114
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Restore image settings"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, v4}, Lcom/android/camera/ImageSettings;->apply(I)V

    .line 120
    :cond_4
    :goto_1
    new-instance v5, Lcom/android/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    const v7, 0x7fffffff

    invoke-direct {v5, v6, v3, v7}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/ImageSettings;I)V

    iput-object v5, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    .line 125
    .end local v2           #prevDisabledImgSettings:I
    .end local v3           #prevSettings:Lcom/android/camera/ImageSettings;
    .end local v4           #restoredSettings:I
    :cond_5
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getAppliedImageSettings()Lcom/android/camera/ImageSettings;

    move-result-object v1

    .line 128
    .local v1, newSettings:Lcom/android/camera/ImageSettings;
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_7

    .line 132
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Apply special image settings"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Lcom/android/camera/ImageSettings;->apply()V

    goto/16 :goto_0

    .line 118
    .end local v1           #newSettings:Lcom/android/camera/ImageSettings;
    .restart local v2       #prevDisabledImgSettings:I
    .restart local v3       #prevSettings:Lcom/android/camera/ImageSettings;
    .restart local v4       #restoredSettings:I
    :cond_6
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Resetting to default, no need to restore image settings"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    .end local v2           #prevDisabledImgSettings:I
    .end local v3           #prevSettings:Lcom/android/camera/ImageSettings;
    .end local v4           #restoredSettings:I
    .restart local v1       #newSettings:Lcom/android/camera/ImageSettings;
    :cond_7
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Resetting to default, no need to apply special image settings"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected abstract applyEffect(Lcom/android/camera/effect/EffectBase;)V
.end method

.method final cancel(Lcom/android/camera/effect/EffectBase;)V
    .locals 6
    .parameter "nextEffect"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 151
    iget v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Effect is released"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 156
    :cond_0
    iget v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 158
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/effect/EffectBase;->prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V

    .line 159
    iget v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    .line 163
    :cond_1
    iget v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 165
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Effect \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has already been canceled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_2
    if-eqz p1, :cond_4

    if-eq p1, p0, :cond_4

    .line 172
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v1

    .line 173
    .local v1, disabledImgSettings:I
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v2

    .line 174
    .local v2, newDisabledImgSettings:I
    xor-int/lit8 v3, v1, -0x1

    and-int v0, v2, v3

    .line 175
    .local v0, backupSettings:I
    if-eqz v0, :cond_4

    .line 177
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Backup current image settings"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    if-nez v3, :cond_3

    .line 179
    new-instance v3, Lcom/android/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v3, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    .line 180
    :cond_3
    iget-object v3, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    invoke-virtual {v3, v0}, Lcom/android/camera/ImageSettings;->backup(I)V

    .line 185
    .end local v0           #backupSettings:I
    .end local v1           #disabledImgSettings:I
    .end local v2           #newDisabledImgSettings:I
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->cancelImplicitly()V

    goto :goto_0
.end method

.method protected abstract cancelEffect(Lcom/android/camera/effect/EffectBase;)V
.end method

.method protected cancelImplicitly()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 199
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    .line 200
    return-void
.end method

.method public getAppliedImageSettings()Lcom/android/camera/ImageSettings;
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ImageSettings;->getDefaultSettings(Lcom/android/camera/HTCCamera;I)Lcom/android/camera/ImageSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getBackupImageSettings()Lcom/android/camera/ImageSettings;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/android/camera/HTCCamera;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method public abstract getCapabilities()I
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 244
    sget v0, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    return v0
.end method

.method protected final getEffectController()Lcom/android/camera/effect/IEffectController;
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/IEffectController;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectController;

    iput-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public final isApplied()Z
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public isSelfTimerSupported()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method final prepareApply(Lcom/android/camera/effect/EffectBase;I)V
    .locals 3
    .parameter "prevEffect"
    .parameter "flags"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 298
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Effect is released"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 303
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has already been prepared or applied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;->prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V

    .line 311
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    goto :goto_0
.end method

.method protected prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 0
    .parameter "prevEffect"
    .parameter "flags"

    .prologue
    .line 314
    return-void
.end method

.method final prepareCancel(Lcom/android/camera/effect/EffectBase;I)V
    .locals 3
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 325
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Effect is released"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void

    .line 330
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has already been prepared for canceling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;->prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V

    .line 338
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    goto :goto_0
.end method

.method protected prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 0
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 341
    return-void
.end method

.method public final release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 352
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 356
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {p0, v1}, Lcom/android/camera/effect/EffectBase;->cancel(Lcom/android/camera/effect/EffectBase;)V

    .line 362
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->releaseOverride()V

    .line 363
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    goto :goto_0

    .line 358
    :cond_2
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/effect/EffectBase;->prepareCancel(Lcom/android/camera/effect/EffectBase;I)V

    goto :goto_1
.end method

.method public releaseCachedResources()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    .line 376
    return-void
.end method

.method protected releaseOverride()V
    .locals 0

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    .line 368
    return-void
.end method

.method public final resetParameters()V
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 387
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->resetParametersOverride()V

    goto :goto_0
.end method

.method protected resetParametersOverride()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    return-object v0
.end method
