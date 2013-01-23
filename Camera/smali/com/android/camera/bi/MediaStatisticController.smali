.class public abstract Lcom/android/camera/bi/MediaStatisticController;
.super Lcom/android/camera/component/UIComponent;
.source "MediaStatisticController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/bi/MediaStatisticController$5;
    }
.end annotation


# instance fields
.field protected mComposeKey:Ljava/lang/String;

.field protected mComposeKeysTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsResetToDefault:Z

.field protected mResetToDefaultCompleted:Z

.field protected m_mediaTaken:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V
    .locals 2
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "baseLayoutId"

    .prologue
    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    .line 42
    iput-boolean v1, p0, Lcom/android/camera/bi/MediaStatisticController;->mIsResetToDefault:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/camera/bi/MediaStatisticController;->mResetToDefaultCompleted:Z

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/bi/MediaStatisticController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/bi/MediaStatisticController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 172
    iget-object v0, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 176
    return-void
.end method

.method protected getCameraTypeKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/android/camera/bi/MediaStatisticController$5;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p0}, Lcom/android/camera/bi/MediaStatisticController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 204
    const-string v0, "0"

    :goto_0
    return-object v0

    .line 200
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 201
    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    .line 202
    :pswitch_2
    const-string v0, "1"

    goto :goto_0

    .line 203
    :pswitch_3
    const-string v0, "3"

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getEffectKeyValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/camera/bi/MediaStatisticController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 211
    .local v0, activity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 212
    .local v1, effect:Lcom/android/camera/effect/EffectBase;
    instance-of v2, v1, Lcom/android/camera/effect/NoneEffect;

    if-eqz v2, :cond_0

    .line 213
    const-string v2, "0"

    .line 245
    :goto_0
    return-object v2

    .line 214
    :cond_0
    instance-of v2, v1, Lcom/android/camera/effect/DistortionEffect;

    if-eqz v2, :cond_1

    .line 215
    const-string v2, "21"

    goto :goto_0

    .line 216
    :cond_1
    instance-of v2, v1, Lcom/android/camera/effect/VignetteEffect;

    if-eqz v2, :cond_2

    .line 217
    const-string v2, "22"

    goto :goto_0

    .line 218
    :cond_2
    instance-of v2, v1, Lcom/android/camera/effect/DepthOfFieldEffect;

    if-eqz v2, :cond_3

    .line 219
    const-string v2, "23"

    goto :goto_0

    .line 220
    :cond_3
    instance-of v2, v1, Lcom/android/camera/effect/DotsEffect;

    if-eqz v2, :cond_4

    .line 221
    const-string v2, "24"

    goto :goto_0

    .line 222
    :cond_4
    instance-of v2, v1, Lcom/android/camera/effect/SplitToningMonoEffect;

    if-eqz v2, :cond_5

    .line 223
    const-string v2, "25"

    goto :goto_0

    .line 224
    :cond_5
    instance-of v2, v1, Lcom/android/camera/effect/NashEffect;

    if-eqz v2, :cond_6

    .line 225
    const-string v2, "26"

    goto :goto_0

    .line 226
    :cond_6
    instance-of v2, v1, Lcom/android/camera/effect/VintageHighEffect;

    if-eqz v2, :cond_7

    .line 227
    const-string v2, "27"

    goto :goto_0

    .line 228
    :cond_7
    instance-of v2, v1, Lcom/android/camera/effect/VintageRedEffect;

    if-eqz v2, :cond_8

    .line 229
    const-string v2, "28"

    goto :goto_0

    .line 230
    :cond_8
    instance-of v2, v1, Lcom/android/camera/effect/VintageGreenEffect;

    if-eqz v2, :cond_9

    .line 231
    const-string v2, "29"

    goto :goto_0

    .line 232
    :cond_9
    instance-of v2, v1, Lcom/android/camera/effect/GrayscaleEffect;

    if-eqz v2, :cond_a

    .line 233
    const-string v2, "1"

    goto :goto_0

    .line 234
    :cond_a
    instance-of v2, v1, Lcom/android/camera/effect/SepiaEffect;

    if-eqz v2, :cond_b

    .line 235
    const-string v2, "2"

    goto :goto_0

    .line 236
    :cond_b
    instance-of v2, v1, Lcom/android/camera/effect/NegativeEffect;

    if-eqz v2, :cond_c

    .line 237
    const-string v2, "3"

    goto :goto_0

    .line 238
    :cond_c
    instance-of v2, v1, Lcom/android/camera/effect/SolarizeEffect;

    if-eqz v2, :cond_d

    .line 239
    const-string v2, "4"

    goto :goto_0

    .line 240
    :cond_d
    instance-of v2, v1, Lcom/android/camera/effect/PosterizeEffect;

    if-eqz v2, :cond_e

    .line 241
    const-string v2, "5"

    goto :goto_0

    .line 242
    :cond_e
    instance-of v2, v1, Lcom/android/camera/effect/AquaEffect;

    if-eqz v2, :cond_f

    .line 243
    const-string v2, "6"

    goto :goto_0

    .line 245
    :cond_f
    const-string v2, "0"

    goto :goto_0
.end method

.method protected getMediaCountInComposeKeyTable(Ljava/lang/String;)I
    .locals 3
    .parameter "settingkey"

    .prologue
    const/4 v1, 0x0

    .line 180
    if-nez p1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 185
    .local v0, MediaTaken:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method protected getReviewDurationKeyValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/camera/bi/MediaStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_camera_review_duration"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, review:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 254
    const-string v1, "0"

    .line 267
    :goto_0
    return-object v1

    .line 256
    :cond_0
    const-string v1, "2s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    const-string v1, "2"

    goto :goto_0

    .line 258
    :cond_1
    const-string v1, "3s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    const-string v1, "3"

    goto :goto_0

    .line 260
    :cond_2
    const-string v1, "5s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    const-string v1, "5"

    goto :goto_0

    .line 262
    :cond_3
    const-string v1, "10s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 263
    const-string v1, "10"

    goto :goto_0

    .line 264
    :cond_4
    const-string v1, "no_limit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 265
    const-string v1, "*"

    goto :goto_0

    .line 267
    :cond_5
    const-string v1, "0"

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/bi/MediaStatisticController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 65
    .local v0, activity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/bi/MediaStatisticController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/bi/MediaStatisticController$1;-><init>(Lcom/android/camera/bi/MediaStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 82
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/bi/MediaStatisticController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/bi/MediaStatisticController$2;-><init>(Lcom/android/camera/bi/MediaStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 98
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/bi/MediaStatisticController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/bi/MediaStatisticController$3;-><init>(Lcom/android/camera/bi/MediaStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 116
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/bi/MediaStatisticController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/bi/MediaStatisticController$4;-><init>(Lcom/android/camera/bi/MediaStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 165
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method protected abstract rebuildComposeKey()Ljava/lang/String;
.end method

.method protected rebuildComposeKeyTable(Ljava/lang/String;)V
    .locals 8
    .parameter "PreferenceName"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/camera/bi/MediaStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, history:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 274
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .local v3, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, pattern:Ljava/lang/String;
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, item:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 288
    .end local v1           #item:[Ljava/lang/String;
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #st:Ljava/util/StringTokenizer;
    :cond_0
    return-void
.end method

.method protected setMediaCountInComposeKeyTable(Ljava/lang/String;I)V
    .locals 2
    .parameter "settingkey"
    .parameter "photo_taken"

    .prologue
    .line 192
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 193
    .local v0, Photo_Taken:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method protected abstract writeBehaviorData(Ljava/lang/String;)V
.end method
