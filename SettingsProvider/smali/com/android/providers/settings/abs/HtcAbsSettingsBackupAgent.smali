.class public Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "HtcAbsSettingsBackupAgent.java"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 37
    const-class v0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method private backupBeatsAudio()V
    .locals 4

    .prologue
    .line 169
    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IAudioService;->getGlobalEffect()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, state:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_beats_audio"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1           #state:Ljava/lang/String;
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private backupFontSize()V
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 201
    .local v0, conf:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->fontsize:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_font_size"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    return-void
.end method

.method private prepareAppStorageLocationKeysForBackup()V
    .locals 13

    .prologue
    .line 69
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardAndPhoneStorage:Z

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v10

    const/high16 v11, 0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_PREFIX_APP_STORAGE_LOCATION"

    const-string v12, "htc_app_storage_loc_"

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, prefixAppStorageLocStr:Ljava/lang/String;
    const-string v2, ""

    .line 82
    .local v2, backupStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 83
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "com.htc.settings.category.APP_STORAGE_SETTINGS"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/16 v10, 0x80

    invoke-virtual {v6, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 92
    .local v8, resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 93
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 95
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_2

    .line 96
    iget-object v10, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found a app storage location settings, packageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", label: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, databaseKey:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    .line 110
    .local v9, value:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 111
    .end local v9           #value:I
    :catch_0
    move-exception v4

    .line 112
    .local v4, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 118
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #databaseKey:Ljava/lang/String;
    .end local v4           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_APP_STORAGE_LOCATION_BACKUP"

    const-string v12, "htc_app_storage_loc_backup"

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, HTC_APP_STORAGE_LOCATION_BACKUP:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private restoreAppStorageLocationKeys()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 132
    sget-boolean v6, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardAndPhoneStorage:Z

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v6

    const/high16 v7, 0x4080

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 165
    :cond_0
    return-void

    .line 138
    :cond_1
    sget-object v6, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v7, "HTC_APP_STORAGE_LOCATION_BACKUP"

    const-string v8, "htc_app_storage_loc_backup"

    invoke-static {v6, v7, v8}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, HTC_APP_STORAGE_LOCATION_BACKUP:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, backupStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 151
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, appStorageLocSettings:[Ljava/lang/String;
    array-length v1, v2

    .line 153
    .local v1, appNum:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 157
    aget-object v6, v2, v4

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, keyValue:[Ljava/lang/String;
    sget-boolean v6, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_2

    .line 159
    iget-object v6, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    aget-object v7, v5, v9

    aget-object v8, v5, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private restoreBeatsAudio()V
    .locals 5

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_beats_audio"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 188
    :cond_0
    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "com.android.settings"

    invoke-interface {v2, v3, v4}, Landroid/media/IAudioService;->setGlobalEffect(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 194
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private restoreBrightness()V
    .locals 7

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 260
    .local v0, auto:Z
    if-nez v0, :cond_0

    .line 266
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 269
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_2

    .line 270
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    .line 275
    .local v1, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    const-string v5, "Set the backlight brightness failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    const-string v5, "Set the backlight brightness failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private restoreFontSize()V
    .locals 8

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "htc_font_size"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, value:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 245
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 214
    .local v1, conf:Landroid/content/res/Configuration;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Landroid/content/res/Configuration;->fontsize:I

    .line 217
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 219
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v3, fontSizeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x3f59999a

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/high16 v7, 0x3f80

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x3f933333

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x3fa66666

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget v6, v1, Landroid/content/res/Configuration;->fontsize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 235
    :try_start_1
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.FONT_SIZE_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "fontsize"

    iget v7, v1, Landroid/content/res/Configuration;->fontsize:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v4}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    .end local v3           #fontSizeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 221
    .local v2, e:Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    const-string v7, "Unable to save HTC font size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v6, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 236
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #fontSizeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    :catch_1
    move-exception v2

    .line 237
    .restart local v2       #e:Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    const-string v7, "Unable to save google font size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v6, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method protected onBackupPreprocess()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->prepareAppStorageLocationKeysForBackup()V

    .line 51
    invoke-direct {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->backupBeatsAudio()V

    .line 52
    invoke-direct {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->backupFontSize()V

    .line 53
    return-void
.end method

.method protected onFullBackupPreprocess()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->onBackupPreprocess()V

    .line 44
    return-void
.end method

.method protected onRestorePostProcess()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->restoreAppStorageLocationKeys()V

    .line 60
    invoke-direct {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->restoreBeatsAudio()V

    .line 61
    invoke-direct {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->restoreFontSize()V

    .line 62
    invoke-direct {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->restoreBrightness()V

    .line 63
    return-void
.end method
