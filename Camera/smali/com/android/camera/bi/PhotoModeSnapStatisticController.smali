.class public Lcom/android/camera/bi/PhotoModeSnapStatisticController;
.super Lcom/android/camera/bi/MediaStatisticController;
.source "PhotoModeSnapStatisticController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "PhotoMode Snap Statistic Controller"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 40
    const-string v0, "PhotoModeSnapStatisticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/bi/MediaStatisticController;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected getAutoSmileCaptureKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isAutoSmileCaptureEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 121
    const-string v0, "1"

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getAutoUploadKeyValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    const-string v3, "pref_auto_upload"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, autoupload_service:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "Off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    :cond_0
    const-string v2, "0"

    .line 203
    :goto_0
    return-object v2

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    const-string v3, "pref_auto_upload_label"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, servicelabel:Ljava/lang/String;
    const-string v2, "facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    const-string v2, "FB"

    goto :goto_0

    .line 200
    :cond_2
    const-string v2, "flicker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    const-string v2, "FC"

    goto :goto_0

    .line 203
    :cond_3
    const-string v2, "0"

    goto :goto_0
.end method

.method protected getContinuousBurstAutoReviewKeyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isContinuousBurstAutoReview:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "1"

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getContinuousBurstEnabledKeyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "1"

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getGeoTagKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 185
    const-string v0, "1"

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getImageAdjustMentKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    const/high16 v3, 0x4000

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, Value:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 132
    .local v1, fvalue:Ljava/lang/Float;
    const-string v2, "Brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->brightness:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 143
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0

    .line 134
    :cond_0
    const-string v2, "Contrast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->contrast:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 136
    :cond_1
    const-string v2, "Saturation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->saturation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 138
    :cond_2
    const-string v2, "Sharpness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->sharpness:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_3
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0
.end method

.method protected getResolutionKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    const-class v1, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ICaptureResolutionManager;

    .line 151
    .local v0, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    iget-object v1, v0, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Resolution;

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getSceneKeyValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 87
    .local v0, activity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 89
    .local v1, scene:Lcom/android/camera/effect/EffectBase;
    instance-of v2, v1, Lcom/android/camera/effect/AutoScene;

    if-eqz v2, :cond_0

    .line 90
    const-string v2, "0"

    .line 114
    :goto_0
    return-object v2

    .line 91
    :cond_0
    instance-of v2, v1, Lcom/android/camera/effect/HdrScene;

    if-eqz v2, :cond_1

    .line 92
    const-string v2, "1"

    goto :goto_0

    .line 93
    :cond_1
    instance-of v2, v1, Lcom/android/camera/effect/PanoramaScene;

    if-eqz v2, :cond_2

    .line 94
    const-string v2, "2"

    goto :goto_0

    .line 95
    :cond_2
    instance-of v2, v1, Lcom/android/camera/effect/PortraitScene;

    if-eqz v2, :cond_3

    .line 96
    const-string v2, "3"

    goto :goto_0

    .line 97
    :cond_3
    instance-of v2, v1, Lcom/android/camera/effect/SmartShotScene;

    if-eqz v2, :cond_4

    .line 98
    const-string v2, "4"

    goto :goto_0

    .line 99
    :cond_4
    instance-of v2, v1, Lcom/android/camera/effect/LandscapeScene;

    if-eqz v2, :cond_5

    .line 100
    const-string v2, "5"

    goto :goto_0

    .line 101
    :cond_5
    instance-of v2, v1, Lcom/android/camera/effect/WhiteboardEffect;

    if-eqz v2, :cond_6

    .line 102
    const-string v2, "6"

    goto :goto_0

    .line 103
    :cond_6
    instance-of v2, v1, Lcom/android/camera/effect/CloseUpScene;

    if-eqz v2, :cond_7

    .line 104
    const-string v2, "7"

    goto :goto_0

    .line 105
    :cond_7
    instance-of v2, v1, Lcom/android/camera/effect/LowlightScene;

    if-eqz v2, :cond_8

    .line 106
    const-string v2, "8"

    goto :goto_0

    .line 107
    :cond_8
    instance-of v2, v1, Lcom/android/camera/effect/TextScene;

    if-eqz v2, :cond_9

    .line 108
    const-string v2, "9"

    goto :goto_0

    .line 109
    :cond_9
    instance-of v2, v1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v2, :cond_a

    .line 110
    const-string v2, "10"

    goto :goto_0

    .line 111
    :cond_a
    instance-of v2, v1, Lcom/android/camera/effect/BacklightScene;

    if-eqz v2, :cond_b

    .line 112
    const-string v2, "11"

    goto :goto_0

    .line 114
    :cond_b
    const-string v2, "0"

    goto :goto_0
.end method

.method protected getSelftimerKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    invoke-virtual {v0}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/camera/bi/MediaStatisticController;->initializeOverride()V

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    .line 66
    const-string v1, "pref_bi_photo_mode_setting_snap_history"

    invoke-virtual {p0, v1}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->rebuildComposeKeyTable(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/bi/MediaStatisticController;->m_mediaTaken:I

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 71
    .local v0, activity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/bi/PhotoModeSnapStatisticController$1;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/bi/PhotoModeSnapStatisticController$1;-><init>(Lcom/android/camera/bi/PhotoModeSnapStatisticController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method protected rebuildComposeKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    iget-boolean v2, p0, Lcom/android/camera/bi/MediaStatisticController;->mIsResetToDefault:Z

    if-eqz v2, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    .line 212
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 214
    .local v1, settingsbuffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getCameraTypeKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSceneKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getEffectKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getAutoSmileCaptureKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v2, "Brightness"

    invoke-virtual {p0, v2}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getImageAdjustMentKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v2, "Contrast"

    invoke-virtual {p0, v2}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getImageAdjustMentKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const-string v2, "Saturation"

    invoke-virtual {p0, v2}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getImageAdjustMentKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    const-string v2, "Sharpness"

    invoke-virtual {p0, v2}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getImageAdjustMentKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getResolutionKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getContinuousBurstEnabledKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getContinuousBurstAutoReviewKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getReviewDurationKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSelftimerKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getGeoTagKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getAutoUploadKeyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, result:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method protected writeBehaviorData(Ljava/lang/String;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_bi_photo_mode_setting_snap_history"

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 264
    return-void
.end method
