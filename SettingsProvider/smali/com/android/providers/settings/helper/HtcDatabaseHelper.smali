.class public Lcom/android/providers/settings/helper/HtcDatabaseHelper;
.super Ljava/lang/Object;
.source "HtcDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;,
        Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

.field private mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

.field private mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

.field private mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

.field private mContext:Landroid/content/Context;

.field private mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 61
    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 62
    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 63
    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 74
    iput-object p1, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    .line 76
    return-void
.end method

.method private closeCompiledStatements()V
    .locals 1

    .prologue
    .line 206
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 207
    const-string v0, ">> closeCompiledStatements()"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 211
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 212
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 213
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 215
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 216
    const-string v0, "<< closeCompiledStatements()"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 218
    :cond_1
    return-void
.end method

.method private getIntValueFromSystem(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 1245
    .line 1247
    if-nez p3, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return p2

    .line 1250
    :cond_1
    :try_start_0
    const-string v1, "system"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1252
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1253
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1254
    if-nez v0, :cond_3

    .line 1257
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1254
    :cond_3
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result p2

    goto :goto_1

    .line 1257
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private initializeRequiredKeysOnCreate()V
    .locals 4

    .prologue
    .line 500
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v0, :cond_1

    .line 501
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t WIFI_ONLY_flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t hardware_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.serialno"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 507
    :cond_0
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "hardware_id"

    const-string v2, "ro.serialno"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    :cond_1
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadAppStorageLocationSettings(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 523
    return-void
.end method

.method private initializeRequiredKeysOnUpgrade()V
    .locals 1

    .prologue
    .line 448
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadAppStorageLocationSettings(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 450
    return-void
.end method

.method private loadAppStorageLocationSettings(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 13
    .parameter "stage"

    .prologue
    .line 938
    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v10

    const/high16 v11, 0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 939
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_0

    .line 940
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sense "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " doesn\'t support application storage locations settings"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 1029
    :cond_0
    return-void

    .line 947
    :cond_1
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_PREFIX_APP_STORAGE_LOCATION"

    const-string v12, "htc_app_storage_loc_"

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, HtcPrefixAppStorageLocStr:Ljava/lang/String;
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_APP_STORAGE_LOCATION_UNKNOWN_STORAGE"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 958
    .local v3, UNKNOWN_STORAGE_TYPE:I
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_APP_STORAGE_LOCATION_SD_CARD_STORAGE"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 962
    .local v2, SD_CARD_STORAGE_TYPE:I
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_APP_STORAGE_LOCATION_PHONE_STORAGE"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 970
    .local v1, PHONE_STORAGE_TYPE:I
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardAndPhoneStorage:Z

    if-eqz v10, :cond_4

    .line 972
    move v6, v1

    .line 989
    .local v6, defValue:I
    :goto_0
    iget-object v10, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 990
    .local v8, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 995
    .local v7, intent:Landroid/content/Intent;
    const-string v10, "com.htc.settings.category.APP_STORAGE_SETTINGS"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    const/16 v10, 0x80

    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 999
    .local v9, resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1000
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1002
    .local v4, activityInfo:Landroid/content/pm/ActivityInfo;
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_2

    .line 1003
    sget-object v10, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found a app storage location settings, packageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", label: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1012
    .local v5, databaseKey:Ljava/lang/String;
    sget-object v10, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v10, :cond_3

    .line 1015
    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.android.bluetooth"

    if-ne v10, v11, :cond_3

    .line 1017
    sget-object v10, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v10, v5, v11}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1024
    :cond_3
    sget-object v10, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v10, v5, v11}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 973
    .end local v4           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v5           #databaseKey:Ljava/lang/String;
    .end local v6           #defValue:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasPhoneStorage:Z

    if-nez v10, :cond_5

    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardStorage:Z

    if-eqz v10, :cond_5

    .line 977
    move v6, v2

    .restart local v6       #defValue:I
    goto/16 :goto_0

    .line 978
    .end local v6           #defValue:I
    :cond_5
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasPhoneStorage:Z

    if-eqz v10, :cond_6

    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardStorage:Z

    if-nez v10, :cond_6

    .line 982
    move v6, v1

    .restart local v6       #defValue:I
    goto/16 :goto_0

    .line 986
    .end local v6           #defValue:I
    :cond_6
    move v6, v3

    .restart local v6       #defValue:I
    goto/16 :goto_0
.end method

.method private loadJBVolumeLevels(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 1166
    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    move-object/from16 v0, p1

    if-eq v0, v1, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    if-nez p2, :cond_2

    .line 1171
    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "db == null fail to FOAT volume from ICS to JB"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1174
    :cond_2
    const-string v3, "volume"

    .line 1175
    const-string v4, "_last_audible"

    .line 1176
    const/4 v1, 0x7

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_voice"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "_system"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "_ring"

    aput-object v2, v5, v1

    const/4 v1, 0x3

    const-string v2, "_music"

    aput-object v2, v5, v1

    const/4 v1, 0x4

    const-string v2, "_alarm"

    aput-object v2, v5, v1

    const/4 v1, 0x5

    const-string v2, "_notification"

    aput-object v2, v5, v1

    const/4 v1, 0x6

    const-string v2, "_bluetooth_sco"

    aput-object v2, v5, v1

    .line 1177
    const/16 v1, 0x13

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_earpiece"

    aput-object v2, v6, v1

    const/4 v1, 0x1

    const-string v2, "_speaker"

    aput-object v2, v6, v1

    const/4 v1, 0x2

    const-string v2, "_headset"

    aput-object v2, v6, v1

    const/4 v1, 0x3

    const-string v2, "_headphone"

    aput-object v2, v6, v1

    const/4 v1, 0x4

    const-string v2, "_bt_sco"

    aput-object v2, v6, v1

    const/4 v1, 0x5

    const-string v2, "_bt_sco_hs"

    aput-object v2, v6, v1

    const/4 v1, 0x6

    const-string v2, "_bt_sco_carkit"

    aput-object v2, v6, v1

    const/4 v1, 0x7

    const-string v2, "_bt_a2dp"

    aput-object v2, v6, v1

    const/16 v1, 0x8

    const-string v2, "_bt_a2dp_hp"

    aput-object v2, v6, v1

    const/16 v1, 0x9

    const-string v2, "_bt_a2dp_spk"

    aput-object v2, v6, v1

    const/16 v1, 0xa

    const-string v2, "_aux_digital"

    aput-object v2, v6, v1

    const/16 v1, 0xb

    const-string v2, "_analog_dock"

    aput-object v2, v6, v1

    const/16 v1, 0xc

    const-string v2, "_digital_dock"

    aput-object v2, v6, v1

    const/16 v1, 0xd

    const-string v2, "_usb_accessory"

    aput-object v2, v6, v1

    const/16 v1, 0xe

    const-string v2, "_usb_device"

    aput-object v2, v6, v1

    const/16 v1, 0xf

    const-string v2, "_fm_device"

    aput-object v2, v6, v1

    const/16 v1, 0x10

    const-string v2, "_fm_tx_device"

    aput-object v2, v6, v1

    const/16 v1, 0x11

    const-string v2, "_direct_output"

    aput-object v2, v6, v1

    const/16 v1, 0x12

    const-string v2, "_hdmi"

    aput-object v2, v6, v1

    .line 1180
    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Handset_"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string v2, "MutiMedia_"

    aput-object v2, v7, v1

    .line 1181
    const-string v8, "_headset"

    .line 1182
    const/4 v1, 0x0

    :goto_1
    array-length v2, v5

    if-ge v1, v2, :cond_0

    .line 1183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v9, v5, v1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1185
    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v9, v2, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->getIntValueFromSystem(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase;)I

    move-result v10

    .line 1187
    const/4 v2, -0x1

    if-eq v10, v2, :cond_6

    .line 1188
    const/4 v2, 0x0

    :goto_2
    array-length v11, v6

    if-ge v2, v11, :cond_4

    .line 1189
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v5, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v6, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1190
    sget-boolean v12, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v12, :cond_3

    .line 1191
    sget-object v12, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FOTA volume to jb "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_3
    sget-object v12, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {p0, v12, v11, v13}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1188
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1195
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v11, v5, v1

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1196
    sget-boolean v11, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_5

    .line 1197
    sget-object v11, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FOTA volume to jb "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "->"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "("

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ")"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_5
    sget-object v9, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v9, v2, v10}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1201
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v9, v5, v1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1202
    const/4 v9, -0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v9, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->getIntValueFromSystem(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase;)I

    move-result v9

    .line 1203
    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    .line 1204
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v5, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1205
    sget-boolean v11, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_7

    .line 1206
    sget-object v11, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FOTA volume to jb "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "->"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "("

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ")"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_7
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v2, v10, v9}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1211
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v9, v5, v1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1212
    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v9, v2, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->getIntValueFromSystem(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase;)I

    move-result v10

    .line 1213
    const/4 v2, -0x1

    if-eq v10, v2, :cond_c

    .line 1214
    const/4 v2, 0x0

    :goto_3
    array-length v11, v6

    if-ge v2, v11, :cond_a

    .line 1215
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v5, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v6, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1216
    sget-boolean v12, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v12, :cond_9

    .line 1217
    sget-object v12, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FOTA volume to jb "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_9
    sget-object v12, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {p0, v12, v11, v13}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1214
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1221
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v11, v5, v1

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1222
    sget-boolean v11, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_b

    .line 1223
    sget-object v11, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FOTA volume to jb "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "->"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "("

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ")"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_b
    sget-object v9, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v9, v2, v10}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1227
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v9, v5, v1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1228
    const/4 v9, -0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v9, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->getIntValueFromSystem(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase;)I

    move-result v9

    .line 1229
    const/4 v10, -0x1

    if-eq v9, v10, :cond_f

    .line 1230
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v5, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1231
    sget-boolean v11, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_d

    .line 1232
    sget-object v11, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FOTA volume to jb "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_d
    sget-object v11, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {p0, v11, v10, v12}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1235
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v5, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1236
    sget-boolean v11, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_e

    .line 1237
    sget-object v11, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FOTA volume to jb "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "->"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "("

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ")"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_e
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v2, v10, v9}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1182
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method private loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "table"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 229
    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    if-ne p1, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 234
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 235
    const/4 v1, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 237
    return-void

    .line 232
    .end local v0           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .restart local v0       #stmt:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0
.end method

.method private loadVersion1(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 533
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_APPLICATION_AUTOMATIC_STARTUP"

    const-string v3, "htc_application_automatic_startup"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_application_automatic_startup()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_APPLICATION_NOTIFICATION"

    const-string v3, "htc_application_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_application_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    return-void
.end method

.method private loadVersion10(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 790
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CUSTOM_ORIENTATION"

    const-string v3, "custom_orientation"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_custom_orientation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 797
    return-void
.end method

.method private loadVersion11(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    .line 809
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "auto_time_zone"

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_auto_time_zone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 813
    return-void
.end method

.method private loadVersion12(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 821
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "COMPASS_WARNING"

    const-string v3, "compass_warning"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_compass_warning()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 829
    return-void
.end method

.method private loadVersion13(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 835
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_MESSAGE_NOTIFICATION"

    const-string v3, "charm_message_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_message_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 842
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_PHONE_NOTIFICATION"

    const-string v3, "charm_phone_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_phone_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 849
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_VOICE_MAIL_NOTIFICATION"

    const-string v3, "charm_voice_mail_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_voice_mail_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 856
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_MESSAGE_RECEIVED_NOTIFICATION"

    const-string v3, "charm_message_received_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_message_received_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 863
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_INDICATOR_SUPPORTED"

    const-string v3, "charm_indicator_supported"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_indicator_supported()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 870
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "htc_phone_notification_preview"

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_phone_notification_preview()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 874
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "htc_message_notification_preview"

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_message_notification_preview()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 878
    return-void
.end method

.method private loadVersion14(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 885
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTCSPEAK_DEFALUT_LANG"

    const-string v3, "htcspeak_default_lang"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htcspeak_default_lang()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 892
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_MUSIC_BYPASS_ENABLED"

    const-string v3, "htc_music_bypass_enabled"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_music_bypass_enabled()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 899
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_GESTURES_ENABLED"

    const-string v3, "htc_gestures_enabled"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_gestures_enabled()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 906
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_ANIMATION_ENABLED"

    const-string v3, "htc_animation_enabled"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_animation_enabled()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 913
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_WINDOW_ANIMATION_SCALE"

    const-string v3, "htc_window_animation_scale"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_window_animation_scale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 920
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_TRANSITION_ANIMATION_SCALE"

    const-string v3, "htc_transition_animation_scale"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_transition_animation_scale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 927
    return-void
.end method

.method private loadVersion15(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "stage"
    .parameter "db"

    .prologue
    .line 1050
    sget-boolean v1, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createProfileTable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 1055
    :cond_0
    :try_start_0
    const-string v1, "CREATE TABLE profile (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT UNIQUE ON CONFLICT REPLACE, value TEXT);"

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1060
    const-string v1, "CREATE INDEX profileIndex1 ON profile (name);"

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :goto_0
    return-void

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "The table \'profile\' already exists"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadVersion16(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 1072
    return-void
.end method

.method private loadVersion17(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 1076
    return-void
.end method

.method private loadVersion18(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 23
    .parameter "stage"
    .parameter "db"

    .prologue
    .line 1084
    sget-boolean v19, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v19, :cond_0

    .line 1085
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Sense: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_0
    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v19

    const/high16 v20, 0x4080

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_1

    .line 1162
    :goto_0
    return-void

    .line 1093
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-string v19, "htc.intent.action.QUICK_TIPS"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 1098
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1099
    .local v13, packageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1100
    .local v16, ri:Landroid/content/pm/ResolveInfo;
    sget-boolean v19, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v19, :cond_3

    .line 1101
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ri.activityInfo.name: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ri.activityInfo.packageName: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_3
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1106
    .local v11, metaData:Landroid/os/Bundle;
    sget-boolean v19, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v19, :cond_4

    .line 1107
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "metaData: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_4
    if-eqz v11, :cond_7

    .line 1112
    const-string v19, "com.htc.android.settings.quicktips"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1114
    .local v15, quicktips:Ljava/lang/String;
    sget-boolean v19, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v19, :cond_5

    .line 1115
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "quicktips: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_5
    if-eqz v15, :cond_6

    .line 1118
    const-string v19, ";"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1119
    .local v18, tips:[Ljava/lang/String;
    move-object/from16 v4, v18

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v9, :cond_2

    aget-object v17, v4, v7

    .line 1120
    .local v17, tip:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1119
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1124
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v17           #tip:Ljava/lang/String;
    .end local v18           #tips:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1128
    .end local v15           #quicktips:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1132
    .end local v11           #metaData:Landroid/os/Bundle;
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1133
    .local v5, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_show_all_quick_tips()Z

    move-result v14

    .line 1135
    .local v14, quickTips:Z
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3b

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1136
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1137
    .local v12, packageName:Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3a

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3b

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1140
    .end local v12           #packageName:Ljava/lang/String;
    :cond_9
    sget-boolean v19, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v19, :cond_a

    .line 1141
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "queryIntentActivities().size(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "packageSet.size(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "builder.toString(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_a
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v20, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v21, "SHOW_ALL_QUICK_TIPS"

    const-string v22, "show_all_quick_tips"

    invoke-static/range {v20 .. v22}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 1153
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v20, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v21, "SHOW_ALL_QUICK_TIPS"

    const-string v22, "show_all_quick_tips"

    invoke-static/range {v20 .. v22}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1161
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadJBVolumeLevels(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0
.end method

.method private loadVersion2(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    .line 560
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 564
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isC0001:Z

    if-eqz v0, :cond_0

    .line 565
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "accelerometer_rotation"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 568
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "accelerometer_rotation"

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_accelerometer_rotation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 574
    :cond_0
    return-void
.end method

.method private loadVersion3(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 582
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_NEW_MESSAGE_NOTIFICATION"

    const-string v3, "htc_new_message_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_new_message_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    return-void
.end method

.method private loadVersion4(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 597
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_3d_home_screen()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 604
    return-void
.end method

.method private loadVersion5(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 621
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 624
    invoke-static {}, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info;->getDeviceType()Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    if-ne v0, v1, :cond_0

    .line 626
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 634
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_3d_home_screen()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 643
    :cond_0
    return-void
.end method

.method private loadVersion6(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 651
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 654
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 662
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_3d_home_screen()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 670
    :cond_0
    return-void
.end method

.method private loadVersion7(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 677
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 680
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "ENABLE_HTC_FASTBOOT"

    const-string v3, "enable_fastboot"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_fastboot_allowed()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    :cond_0
    return-void
.end method

.method private loadVersion8(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 696
    invoke-static {}, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info;->getDeviceType()Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    if-ne v0, v1, :cond_0

    .line 698
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_WIRELESS_SLEEP_MODE_ENABLED"

    const-string v3, "htc_wireless_sleep_mode_enabled"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_wireless_sleep_mode_enabled()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 705
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_WIRELESS_SLEEP_START_TIME"

    const-string v3, "htc_wireless_sleep_start_time"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_wireless_sleep_start_time()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 712
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_WIRELESS_SLEEP_END_TIME"

    const-string v3, "htc_wireless_sleep_end_time"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_wireless_sleep_end_time()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 720
    :cond_0
    return-void
.end method

.method private loadVersion9(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 732
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 735
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "INACTIVITY_TIME"

    const-string v3, "inactivity_time"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 743
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "INACTIVITY_TIME"

    const-string v3, "inactivity_time"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_inactivity_time()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 751
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 262
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method private onInternalCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->initializeRequiredKeysOnCreate()V

    .line 273
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion1(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 274
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion2(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 275
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion3(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 276
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion4(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 277
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion5(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 278
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion6(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 279
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion7(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 280
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion8(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 281
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion9(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 282
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion10(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 283
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion11(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 284
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion12(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 285
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion13(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 286
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion14(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 287
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion15(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 288
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion16(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 289
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion17(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 290
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion18(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 291
    return-void
.end method

.method private onInternalFactoryPostCreate()V
    .locals 3

    .prologue
    .line 299
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 300
    const-string v0, ">> onInternalFactoryPostCreate()"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 305
    :cond_0
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isV0006:Z

    if-eqz v0, :cond_1

    .line 306
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "mobile_data"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "mobile_data"

    const-string v2, "0"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    :cond_1
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    .line 318
    const-string v0, "<< onInternalFactoryPostCreate()"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 320
    :cond_2
    return-void
.end method

.method private onInternalUpgrade(ILandroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .parameter "oldHtcVersion"
    .parameter "db"

    .prologue
    .line 324
    const-string v0, "upgrading to the version"

    .line 325
    .local v0, UPGRADE_INFO:Ljava/lang/String;
    move v1, p1

    .line 327
    .local v1, upgradeVersion:I
    if-nez v1, :cond_0

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 329
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion1(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 330
    const/4 v1, 0x1

    .line 333
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 335
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion2(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 336
    const/4 v1, 0x2

    .line 339
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 341
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion3(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 342
    const/4 v1, 0x3

    .line 345
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 347
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion4(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 348
    const/4 v1, 0x4

    .line 351
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 353
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion5(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 354
    const/4 v1, 0x5

    .line 357
    :cond_4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 359
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion6(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 360
    const/4 v1, 0x6

    .line 363
    :cond_5
    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 365
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion7(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 366
    const/4 v1, 0x7

    .line 369
    :cond_6
    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 371
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion8(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 372
    const/16 v1, 0x8

    .line 375
    :cond_7
    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 377
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion9(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 378
    const/16 v1, 0x9

    .line 381
    :cond_8
    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 383
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion10(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 384
    const/16 v1, 0xa

    .line 387
    :cond_9
    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 389
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion11(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 390
    const/16 v1, 0xb

    .line 393
    :cond_a
    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 395
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion12(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 396
    const/16 v1, 0xc

    .line 399
    :cond_b
    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 401
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion13(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 402
    const/16 v1, 0xd

    .line 405
    :cond_c
    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 407
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion14(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 408
    const/16 v1, 0xe

    .line 411
    :cond_d
    const/16 v2, 0xe

    if-ne v1, v2, :cond_e

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 413
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2, p2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion15(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 414
    const/16 v1, 0xf

    .line 418
    :cond_e
    const/16 v2, 0xf

    if-ne v1, v2, :cond_f

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 420
    const/16 v1, 0x10

    .line 421
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion16(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 426
    :cond_f
    const/16 v2, 0x10

    if-ne v1, v2, :cond_10

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 428
    const/16 v1, 0x11

    .line 429
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion17(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 433
    :cond_10
    const/16 v2, 0x11

    if-ne v1, v2, :cond_11

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 435
    const/16 v1, 0x12

    .line 436
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2, p2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion18(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 439
    :cond_11
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->initializeRequiredKeysOnUpgrade()V

    .line 441
    return v1
.end method

.method private removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V
    .locals 2
    .parameter "table"
    .parameter "key"

    .prologue
    .line 248
    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    if-ne p1, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 253
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 255
    return-void

    .line 251
    .end local v0           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .restart local v0       #stmt:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0
.end method

.method private setupCompiledStatements(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 181
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 182
    const-string v0, ">> setupCompiledStatements(...)"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 186
    :cond_0
    const-string v0, "INSERT OR IGNORE INTO system (name, value) VALUES(?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 188
    const-string v0, "INSERT OR IGNORE INTO secure (name, value) VALUES(?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 192
    const-string v0, "DELETE FROM system WHERE name=?;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 194
    const-string v0, "DELETE FROM secure WHERE name=?;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 197
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "<< setupCompiledStatements(...)"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 200
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 86
    const-string v0, ">> onCreate(...)"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->setupCompiledStatements(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->onInternalCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t Boot mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.bootmode"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 103
    :cond_1
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isFactoryMode:Z

    if-eqz v0, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->onInternalFactoryPostCreate()V

    .line 108
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->closeCompiledStatements()V

    .line 111
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->insertHtcVersion(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 113
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    .line 114
    const-string v0, "<< onCreate(...)"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 116
    :cond_3
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 5
    .parameter "db"
    .parameter "oldGoogleVersion"
    .parameter "currentGoogleVersion"

    .prologue
    const/16 v4, 0x12

    .line 122
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 123
    const-string v2, ">> onUpgrade(...)"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t oldGoogleVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t currentGoogleVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->setupCompiledStatements(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    invoke-static {p1}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->queryHtcVersion(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 135
    .local v0, oldVersion:I
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t oldHtcVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 137
    const-string v2, "\t currentHtcVersion: 18"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 141
    :cond_1
    if-eq v0, v4, :cond_3

    .line 143
    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->onInternalUpgrade(ILandroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 149
    .local v1, upgradeVersion:I
    :goto_0
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->closeCompiledStatements()V

    .line 151
    if-eq v1, v4, :cond_4

    .line 152
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_2

    .line 153
    const-string v2, "\t Upgrade failed!"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t upgradeVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 155
    const-string v2, "\t HTC_DATABASE_VERSION: 18"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 156
    const-string v2, "<< onUpgrade(...): false"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 158
    :cond_2
    const/4 v2, 0x0

    .line 172
    :goto_1
    return v2

    .line 145
    .end local v1           #upgradeVersion:I
    :cond_3
    const/16 v1, 0x12

    .restart local v1       #upgradeVersion:I
    goto :goto_0

    .line 161
    :cond_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 163
    const/16 v2, 0x12

    :try_start_0
    invoke-static {p1, v2}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->updateHtcVersion(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 164
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_5

    .line 170
    const-string v2, "<< onUpgrade(...): true"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 172
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
