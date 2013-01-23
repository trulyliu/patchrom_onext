.class public Lcom/android/camera/CameraStorageLocationSettings;
.super Ljava/lang/Object;
.source "CameraStorageLocationSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraStorageLocationSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromDatabase(Landroid/content/ContentResolver;)Lcom/android/camera/io/StorageSlot;
    .locals 5
    .parameter "c"

    .prologue
    .line 28
    :try_start_0
    const-string v3, "htc_app_storage_loc_com.android.camera"

    invoke-static {p0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 29
    .local v2, storagelocation:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 30
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v1

    .line 42
    .end local v2           #storagelocation:I
    .local v1, storageSlot:Lcom/android/camera/io/StorageSlot;
    :goto_0
    if-eqz v1, :cond_2

    .line 46
    .end local v1           #storageSlot:Lcom/android/camera/io/StorageSlot;
    :goto_1
    return-object v1

    .line 32
    .restart local v2       #storagelocation:I
    :cond_0
    sget-object v1, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #storageSlot:Lcom/android/camera/io/StorageSlot;
    goto :goto_0

    .line 33
    .end local v1           #storageSlot:Lcom/android/camera/io/StorageSlot;
    .end local v2           #storagelocation:I
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "CameraStorageLocationSettings"

    const-string v4, "Fail to get HTC_PREFIX_APP_STORAGE_LOCATION status, use available slot"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v1

    .restart local v1       #storageSlot:Lcom/android/camera/io/StorageSlot;
    goto :goto_0

    .line 38
    .end local v1           #storageSlot:Lcom/android/camera/io/StorageSlot;
    :cond_1
    sget-object v1, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    .restart local v1       #storageSlot:Lcom/android/camera/io/StorageSlot;
    goto :goto_0

    .line 45
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    const-string v3, "CameraStorageLocationSettings"

    const-string v4, "readFromDatabase() - No available storage slot"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    goto :goto_1
.end method

.method public static writeToDatabase(Landroid/content/ContentResolver;Lcom/android/camera/io/StorageSlot;)V
    .locals 2
    .parameter "c"
    .parameter "slot"

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const-string v0, "htc_app_storage_loc_com.android.camera"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    const-string v0, "htc_app_storage_loc_com.android.camera"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
