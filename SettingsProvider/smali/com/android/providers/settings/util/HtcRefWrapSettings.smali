.class public final Lcom/android/providers/settings/util/HtcRefWrapSettings;
.super Ljava/lang/Object;
.source "HtcRefWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/util/HtcRefWrapSettings$HtcServices;
    }
.end annotation


# static fields
.field private static final BOOMERANGKEY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mIsBoomerang:I

.field private static sHtcServiceClass:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static sSecureClass:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static sSystemClass:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-class v0, Lcom/android/providers/settings/util/HtcRefWrapSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/util/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/android/providers/settings/util/HtcRefWrapSettings;->mIsBoomerang:I

    .line 247
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hotspot_ssid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hotspot_security_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hotspot_password"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/util/HtcRefWrapSettings;->BOOMERANGKEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 298
    return-void
.end method

.method public static checkIfBoomerang(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 314
    const/4 v0, 0x0

    sput v0, Lcom/android/providers/settings/util/HtcRefWrapSettings;->mIsBoomerang:I

    .line 315
    const/4 v6, 0x0

    .line 317
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.htc.backup.provider/settings/transport_active"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 319
    sget-object v0, Lcom/android/providers/settings/util/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.htc.backup cursor is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, value:Ljava/lang/String;
    sget-object v0, Lcom/android/providers/settings/util/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBoomerangActivate value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-eqz v8, :cond_0

    const-string v0, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x1

    sput v0, Lcom/android/providers/settings/util/HtcRefWrapSettings;->mIsBoomerang:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v8           #value:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v7

    .line 328
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    sget-object v0, Lcom/android/providers/settings/util/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v1, "Get transport error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    if-eqz v6, :cond_1

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 331
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getBackupList(Lcom/android/providers/settings/util/HtcDatabaseTable;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "table"
    .parameter "defList"

    .prologue
    .line 211
    const-string v2, "SETTINGS_TO_BACKUP"

    invoke-static {p0, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getField(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 213
    .local v1, field:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    sget v2, Lcom/android/providers/settings/util/HtcRefWrapSettings;->mIsBoomerang:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 216
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->removeRedundantAddBoomerangKey([Ljava/lang/String;Lcom/android/providers/settings/util/HtcDatabaseTable;)[Ljava/lang/String;

    move-result-object p1

    .line 226
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 218
    .restart local p1
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->removeRedundantKey([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "table"
    .parameter "fieldName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/providers/settings/util/HtcDatabaseTable;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-static {p0, p1}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getField(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 185
    .local v1, field:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 187
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p2

    .line 194
    .end local p2           #defaultValue:Ljava/lang/Object;,"TT;"
    :cond_0
    :goto_0
    return-object p2

    .line 188
    .restart local p2       #defaultValue:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "table"
    .parameter "fieldName"
    .parameter "defKeyName"

    .prologue
    .line 165
    invoke-static {p0, p1, p2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getField(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .parameter "table"
    .parameter "fieldName"

    .prologue
    .line 124
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    if-ne p0, v2, :cond_0

    .line 125
    invoke-static {}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getSystemClass()Ljava/lang/Class;

    move-result-object v1

    .line 133
    .local v1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-nez v1, :cond_4

    .line 135
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    if-ne p0, v2, :cond_2

    .line 136
    sget-object v2, Lcom/android/providers/settings/util/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v3, "com.htc.wrap.android.provider.HtcWrapSettings$System does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 144
    const/4 v0, 0x0

    .line 149
    :goto_2
    return-object v0

    .line 126
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    if-ne p0, v2, :cond_1

    .line 127
    invoke-static {}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getSecureClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 129
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getHtcServicesClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 137
    :cond_2
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    if-ne p0, v2, :cond_3

    .line 138
    sget-object v2, Lcom/android/providers/settings/util/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v3, "com.htc.wrap.android.provider.HtcWrapSettings$Secure does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    :cond_3
    sget-object v2, Lcom/android/providers/settings/util/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v3, "com.htc.wrap.android.provider.HtcWrapSettings$HTCservices does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    :cond_4
    invoke-static {v1, p1}, Lcom/android/providers/settings/util/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 149
    .local v0, field:Ljava/lang/reflect/Field;
    goto :goto_2
.end method

.method private static getHtcServicesClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sHtcServiceClass:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sHtcServiceClass:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 103
    .restart local v0       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    if-nez v0, :cond_1

    .line 104
    const-string v1, "com.htc.wrap.android.provider.HtcWrapSettings$HTCservices"

    invoke-static {v1}, Lcom/android/providers/settings/util/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sHtcServiceClass:Ljava/lang/ref/SoftReference;

    .line 107
    :cond_1
    return-object v0
.end method

.method private static getSecureClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 80
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 83
    .restart local v0       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    if-nez v0, :cond_1

    .line 84
    const-string v1, "com.htc.wrap.android.provider.HtcWrapSettings$Secure"

    invoke-static {v1}, Lcom/android/providers/settings/util/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    .line 87
    :cond_1
    return-object v0
.end method

.method private static getSystemClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sSystemClass:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sSystemClass:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 63
    .restart local v0       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    if-nez v0, :cond_1

    .line 64
    const-string v1, "com.htc.wrap.android.provider.HtcWrapSettings$System"

    invoke-static {v1}, Lcom/android/providers/settings/util/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sSystemClass:Ljava/lang/ref/SoftReference;

    .line 67
    :cond_1
    return-object v0
.end method

.method private static removeRedundantAddBoomerangKey([Ljava/lang/String;Lcom/android/providers/settings/util/HtcDatabaseTable;)[Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 254
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 256
    array-length v3, p0

    move v1, v0

    .line 257
    :goto_0
    if-ge v1, v3, :cond_0

    .line 258
    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    if-ne p1, v1, :cond_1

    .line 261
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->BOOMERANGKEY:[Ljava/lang/String;

    array-length v1, v1

    .line 262
    :goto_1
    if-ge v0, v1, :cond_1

    .line 263
    sget-object v3, Lcom/android/providers/settings/util/HtcRefWrapSettings;->BOOMERANGKEY:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    :cond_1
    invoke-virtual {v2}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 268
    array-length v1, v0

    const-class v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 271
    return-object v0
.end method

.method private static removeRedundantKey([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 231
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 233
    array-length v2, p0

    .line 234
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 235
    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v1}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 239
    array-length v1, v0

    const-class v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 242
    return-object v0
.end method
