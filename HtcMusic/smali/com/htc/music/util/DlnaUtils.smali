.class public Lcom/htc/music/util/DlnaUtils;
.super Ljava/lang/Object;
.source "DlnaUtils.java"


# static fields
.field public static final DLNA_CURPOS:Ljava/lang/String; = "cur_pos"

.field public static final DLNA_REPEAT:Ljava/lang/String; = "dlna_repeat"

.field public static final DLNA_SHUFFLE:Ljava/lang/String; = "dlna_shuffle"

.field public static final DMP_QUEUE:Ljava/lang/String; = "queue"

.field public static final DMP_QUEUE_BACKUP:Ljava/lang/String; = "queue_bak"

.field public static final DMS_CONTAINER_ID:Ljava/lang/String; = "dms_container_id"

.field public static final DMS_CONTENT_ID:Ljava/lang/String; = "dms_content_id"

.field public static final DMS_DIRECTION:Ljava/lang/String; = "dms_direction"

.field public static final DMS_END_INDEX:Ljava/lang/String; = "dms_end_index"

.field public static final DMS_FILE_PATH:Ljava/lang/String; = "dms_file_path"

.field public static final DMS_SERVER_ID:Ljava/lang/String; = "dms_server_id"

.field public static final DMS_START_INDEX:Ljava/lang/String; = "dms_start_index"

.field public static final INDEX_DEFAULT_SORT_ORDER:Ljava/lang/String; = "index_id COLLATE NOCASE ASC"

.field public static final MAX_QUERY_CONTENTS:I = 0xc7

.field public static final PREFERENCE_DLNA:Ljava/lang/String; = "DLNA"

.field public static final QUERY_CONTENTS:I = 0x1e

.field public static final QUERY_DIRECTION_DOWN:I = 0x1

.field public static final QUERY_DIRECTION_UP:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWifiEnabled(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 37
    .local v2, connManager:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    .line 39
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 41
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    check-cast v4, Landroid/net/wifi/WifiManager;

    .restart local v4       #wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_0

    .line 44
    invoke-static {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    const/4 v0, 0x1

    move v1, v0

    .line 64
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 51
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #connManager:Landroid/net/ConnectivityManager;
    check-cast v2, Landroid/net/ConnectivityManager;

    .restart local v2       #connManager:Landroid/net/ConnectivityManager;
    if-nez v2, :cond_1

    move v1, v0

    .line 52
    .restart local v1       #bResult:I
    goto :goto_0

    .line 54
    .end local v1           #bResult:I
    :cond_1
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_2

    move v1, v0

    .line 55
    .restart local v1       #bResult:I
    goto :goto_0

    .line 57
    .end local v1           #bResult:I
    :cond_2
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-eq v5, v6, :cond_3

    move v1, v0

    .line 58
    .restart local v1       #bResult:I
    goto :goto_0

    .line 60
    .end local v1           #bResult:I
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eq v5, v6, :cond_4

    move v1, v0

    .line 61
    .restart local v1       #bResult:I
    goto :goto_0

    .line 63
    .end local v1           #bResult:I
    :cond_4
    const/4 v0, 0x1

    move v1, v0

    .line 64
    .restart local v1       #bResult:I
    goto :goto_0
.end method
