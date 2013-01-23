.class public final Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;
.super Lcom/android/camera/preferences/PreferenceUpgradeWorker;
.source "Sense40PlusPreferenceUpgradeWorker.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    const v0, 0x132b677

    const v1, 0x133042b

    invoke-direct {p0, v0, v1}, Lcom/android/camera/preferences/PreferenceUpgradeWorker;-><init>(II)V

    .line 20
    return-void
.end method

.method private convertBarLevelValue(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "editor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, preferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1, p2}, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;->getAsInt(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 29
    .local v0, level:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_1

    .line 35
    const/high16 v1, -0x4080

    .line 44
    .local v1, newValue:F
    :goto_1
    const/high16 v2, 0x447a

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-interface {p3, p2, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 36
    .end local v1           #newValue:F
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 37
    const/high16 v1, -0x4100

    .restart local v1       #newValue:F
    goto :goto_1

    .line 38
    .end local v1           #newValue:F
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 39
    const/4 v1, 0x0

    .restart local v1       #newValue:F
    goto :goto_1

    .line 40
    .end local v1           #newValue:F
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 41
    const/high16 v1, 0x3f00

    .restart local v1       #newValue:F
    goto :goto_1

    .line 43
    .end local v1           #newValue:F
    :cond_4
    const/high16 v1, 0x3f80

    .restart local v1       #newValue:F
    goto :goto_1
.end method

.method private convertDuration(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter
    .parameter "key"
    .parameter "editor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, preferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v1, "no_review"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    :cond_2
    const-string v1, "0s"

    invoke-interface {p3, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private convertResolution(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "key"
    .parameter "editor"
    .parameter "resKeyPrefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, preferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-wide v9, 0x3f847ae147ae147bL

    .line 68
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 69
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_1

    .line 96
    .end local v4           #value:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local v4       #value:Ljava/lang/Object;
    :cond_1
    check-cast v4, Ljava/lang/String;

    .end local v4           #value:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/camera/Resolution;->getResolution(Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v3

    .line 72
    .local v3, resolution:Lcom/android/camera/Resolution;
    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v7

    int-to-double v7, v7

    div-double v1, v5, v7

    .line 77
    .local v1, resRatio:D
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, resKeyBuffer:Ljava/lang/StringBuilder;
    const-wide v5, 0x3ff553f7ced91687L

    sub-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v9

    if-gtz v5, :cond_2

    .line 79
    const-string v5, "_4_3_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :goto_1
    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const/16 v5, 0x78

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/Resolution;->getResolution(Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v3

    .line 94
    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, p2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 80
    :cond_2
    const-wide v5, 0x3ffaac083126e979L

    sub-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v9

    if-gtz v5, :cond_3

    .line 81
    const-string v5, "_5_3_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 82
    :cond_3
    const-wide v5, 0x3ffc72b020c49ba6L

    sub-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v9

    if-gtz v5, :cond_4

    .line 83
    const-string v5, "_16_9_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 84
    :cond_4
    const-wide v5, 0x3ff999999999999aL

    sub-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v9

    if-gtz v5, :cond_0

    .line 85
    const-string v5, "_16_10_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getAsInt(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, preferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #value:Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v1

    .line 113
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public upgradePreferences(Landroid/content/Context;Ljava/util/Map;Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "editor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, preferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v1, "pref_camera_brightness"

    invoke-direct {p0, p2, v1, p3}, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;->convertBarLevelValue(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 126
    const-string v1, "pref_camera_contrast"

    invoke-direct {p0, p2, v1, p3}, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;->convertBarLevelValue(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 129
    const-string v1, "pref_panorama_resolution"

    const-string v2, "PHOTO"

    invoke-direct {p0, p2, v1, p3, v2}, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;->convertResolution(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 132
    const-string v1, "pref_capture_resolution_photo_main"

    const-string v2, "PHOTO"

    invoke-direct {p0, p2, v1, p3, v2}, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;->convertResolution(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 133
    const-string v1, "pref_capture_resolution_photo_2nd"

    const-string v2, "PHOTO"

    invoke-direct {p0, p2, v1, p3, v2}, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;->convertResolution(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 134
    const-string v1, "pref_capture_resolution_photo_3D"

    const-string v2, "PHOTO"

    invoke-direct {p0, p2, v1, p3, v2}, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;->convertResolution(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 137
    const-string v1, "pref_camera_review_duration"

    invoke-direct {p0, p2, v1, p3}, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;->convertDuration(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 140
    const-string v1, "pref_camera_saturation"

    invoke-direct {p0, p2, v1, p3}, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;->convertBarLevelValue(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 143
    const-string v1, "pref_camera_self_timer"

    invoke-direct {p0, p2, v1, p3}, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;->convertDuration(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 144
    const-string v1, "pref_camera_self_timer"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "pref_camera_self_timer_main"

    check-cast v0, Ljava/lang/String;

    .end local v0           #value:Ljava/lang/Object;
    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    :cond_0
    const-string v1, "pref_camera_shaprness"

    invoke-direct {p0, p2, v1, p3}, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;->convertBarLevelValue(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 150
    return-void
.end method
