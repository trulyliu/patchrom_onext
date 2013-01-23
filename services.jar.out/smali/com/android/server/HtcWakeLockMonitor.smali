.class final Lcom/android/server/HtcWakeLockMonitor;
.super Ljava/lang/Object;
.source "HtcWakeLockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HtcWakeLockMonitor$UpdateTask;,
        Lcom/android/server/HtcWakeLockMonitor$MonitorTask;,
        Lcom/android/server/HtcWakeLockMonitor$DumpRecordTask;,
        Lcom/android/server/HtcWakeLockMonitor$LockRecordList;,
        Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;,
        Lcom/android/server/HtcWakeLockMonitor$SettingsObserver;
    }
.end annotation


# instance fields
.field private ABNORMAL_COUNT:I

.field private final DB_KEY_APP_MONITOR:Ljava/lang/String;

.field private DEBUG_ON:Z

.field private final DUMP_RECORD_INTERVAL:J

.field private final ENABLE_DUMP_RECORD:Z

.field private ENABLE_MONITOR:Z

.field private final MASTER_ENABLE:Z

.field private final MAX_RECORDS:I

.field private final MAX_SCREEN_OFF_COUNT:I

.field private MINIMUM_DURATION:J

.field private final MY_UID:I

.field private final NOTIFY_CONTENT_KEY:Ljava/lang/String;

.field private final NOTIFY_INTENT:Ljava/lang/String;

.field private SCREEN_OFF_MINIMUM:J

.field private SCREEN_OFF_RATIO:I

.field private final SHOW_RECORDS:I

.field private final SYS_PROP_ABNORMAL_COUNT:Ljava/lang/String;

.field private final SYS_PROP_DEBUG_ON:Ljava/lang/String;

.field private final SYS_PROP_MINIMUM_DURATION:Ljava/lang/String;

.field private final SYS_PROP_MONITOR:Ljava/lang/String;

.field private final SYS_PROP_ON:Ljava/lang/String;

.field private final SYS_PROP_SCREEN_OFF_MINIMUM:Ljava/lang/String;

.field private final SYS_PROP_SCREEN_OFF_RATIO:Ljava/lang/String;

.field private final SYS_PROP_UID_CHECK_RANGE:Ljava/lang/String;

.field private final SYS_PROP_WHITELIST_VALID_UID:Ljava/lang/String;

.field private final SYS_PROP_WL_HELD_RATIO:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TAG_WHITE_LIST_PREFIX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private UID_CHECK_RANGE:I

.field private WHITELIST_VALID_UID:I

.field private WL_HELD_RATIO:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDumpRecordTask:Lcom/android/server/HtcWakeLockMonitor$DumpRecordTask;

.field private mLastScanTime:J

.field private final mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

.field private final mMonitorTask:Lcom/android/server/HtcWakeLockMonitor$MonitorTask;

.field private final mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mScreenState:Z

.field private mScreenTimeStamp:[[J

.field private mScreenTimeStampIndex:I

.field private mSettingsObserver:Lcom/android/server/HtcWakeLockMonitor$SettingsObserver;

.field private mTotalScreenOffTime:J

.field private mTotalTime:J

.field private final mUpdateTask:Lcom/android/server/HtcWakeLockMonitor$UpdateTask;

.field private final mWLM_Handler:Landroid/os/Handler;

.field private final mWLM_Thread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService$PMSInternalAPI;I)V
    .locals 10
    .parameter "context"
    .parameter "pmsInternalAPI"
    .parameter "pmsUid"

    .prologue
    const/16 v9, 0x28

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v1, "HtcWLM"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->TAG:Ljava/lang/String;

    .line 35
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    .line 38
    iput-boolean v4, p0, Lcom/android/server/HtcWakeLockMonitor;->MASTER_ENABLE:Z

    .line 39
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    .line 44
    iput-boolean v4, p0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    .line 47
    const-string v1, "abnormal_app_monitor_enable"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->DB_KEY_APP_MONITOR:Ljava/lang/String;

    .line 51
    const-wide/32 v1, 0x927c0

    iput-wide v1, p0, Lcom/android/server/HtcWakeLockMonitor;->DUMP_RECORD_INTERVAL:J

    .line 52
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/server/HtcWakeLockMonitor;->MAX_RECORDS:I

    .line 53
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SHOW_RECORDS:I

    .line 56
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AudioIn_"

    aput-object v3, v2, v6

    const-string v3, "AudioOut_"

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->TAG_WHITE_LIST_PREFIX:Ljava/util/HashSet;

    .line 58
    const-string v1, "com.htc.htcpowermanager.batterymonitor.APP_LIST_DETECTED"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->NOTIFY_INTENT:Ljava/lang/String;

    .line 59
    const-string v1, "bad_app_list"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->NOTIFY_CONTENT_KEY:Ljava/lang/String;

    .line 61
    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/server/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    .line 62
    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/server/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    .line 63
    const-wide/32 v1, 0x36ee80

    iput-wide v1, p0, Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    .line 64
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    .line 65
    iput v9, p0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    .line 66
    iput v9, p0, Lcom/android/server/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    .line 67
    iput v4, p0, Lcom/android/server/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    .line 69
    const-string v1, "persist.htc.wlm.sysprop.on"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SYS_PROP_ON:Ljava/lang/String;

    .line 70
    const-string v1, "persist.htc.wlm.debug.on"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SYS_PROP_DEBUG_ON:Ljava/lang/String;

    .line 71
    const-string v1, "persist.htc.wlm.monitor"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SYS_PROP_MONITOR:Ljava/lang/String;

    .line 72
    const-string v1, "persist.htc.wlm.uid.whitelist"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SYS_PROP_WHITELIST_VALID_UID:Ljava/lang/String;

    .line 73
    const-string v1, "persist.htc.wlm.uid.range"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SYS_PROP_UID_CHECK_RANGE:Ljava/lang/String;

    .line 74
    const-string v1, "persist.htc.wlm.min.duration"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SYS_PROP_MINIMUM_DURATION:Ljava/lang/String;

    .line 75
    const-string v1, "persist.htc.wlm.scr.minimum"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SYS_PROP_SCREEN_OFF_MINIMUM:Ljava/lang/String;

    .line 76
    const-string v1, "persist.htc.wlm.scr.ratio"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SYS_PROP_SCREEN_OFF_RATIO:Ljava/lang/String;

    .line 77
    const-string v1, "persist.htc.wlm.wl.ratio"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SYS_PROP_WL_HELD_RATIO:Ljava/lang/String;

    .line 78
    const-string v1, "persist.htc.wlm.an.count"

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SYS_PROP_ABNORMAL_COUNT:Ljava/lang/String;

    .line 92
    new-instance v1, Lcom/android/server/HtcWakeLockMonitor$DumpRecordTask;

    invoke-direct {v1, p0, v5}, Lcom/android/server/HtcWakeLockMonitor$DumpRecordTask;-><init>(Lcom/android/server/HtcWakeLockMonitor;Lcom/android/server/HtcWakeLockMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->mDumpRecordTask:Lcom/android/server/HtcWakeLockMonitor$DumpRecordTask;

    .line 93
    new-instance v1, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;

    invoke-direct {v1, p0, v5}, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;-><init>(Lcom/android/server/HtcWakeLockMonitor;Lcom/android/server/HtcWakeLockMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->mMonitorTask:Lcom/android/server/HtcWakeLockMonitor$MonitorTask;

    .line 94
    new-instance v1, Lcom/android/server/HtcWakeLockMonitor$UpdateTask;

    invoke-direct {v1, p0, v5}, Lcom/android/server/HtcWakeLockMonitor$UpdateTask;-><init>(Lcom/android/server/HtcWakeLockMonitor;Lcom/android/server/HtcWakeLockMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->mUpdateTask:Lcom/android/server/HtcWakeLockMonitor$UpdateTask;

    .line 96
    new-instance v1, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    invoke-direct {v1, p0, v5}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;-><init>(Lcom/android/server/HtcWakeLockMonitor;Lcom/android/server/HtcWakeLockMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    .line 98
    iput-boolean v6, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenState:Z

    .line 103
    iput v6, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    .line 106
    iput-wide v7, p0, Lcom/android/server/HtcWakeLockMonitor;->mLastScanTime:J

    .line 108
    iput-wide v7, p0, Lcom/android/server/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    .line 109
    iput-wide v7, p0, Lcom/android/server/HtcWakeLockMonitor;->mTotalTime:J

    .line 544
    new-instance v1, Lcom/android/server/HtcWakeLockMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/HtcWakeLockMonitor$1;-><init>(Lcom/android/server/HtcWakeLockMonitor;)V

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iget-boolean v1, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 113
    const-string v1, "HtcWLM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor: MASTER_ENABLE=true, ENABLE_DUMP_RECORD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ENABLE_MONITOR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/android/server/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/android/server/HtcWakeLockMonitor;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    .line 121
    iput p3, p0, Lcom/android/server/HtcWakeLockMonitor;->MY_UID:I

    .line 124
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WLM"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->mWLM_Thread:Landroid/os/HandlerThread;

    .line 125
    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->mWLM_Thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HtcWakeLockMonitor;->mWLM_Thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    .line 128
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor;->readSysProp()V

    .line 130
    iget-wide v1, p0, Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    iget-wide v3, p0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    .line 132
    iget-boolean v1, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 133
    const-string v1, "HtcWLM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor: MAX_SCREEN_OFF_COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor;->initObserver()V

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HtcWakeLockMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/HtcWakeLockMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/HtcWakeLockMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/HtcWakeLockMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/HtcWakeLockMonitor;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/server/HtcWakeLockMonitor;->clearRecord(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/HtcWakeLockMonitor;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/HtcWakeLockMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/server/HtcWakeLockMonitor;->MY_UID:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/HtcWakeLockMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/server/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/HtcWakeLockMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/server/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/HtcWakeLockMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/server/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/HtcWakeLockMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenState:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/HtcWakeLockMonitor;)Lcom/android/server/HtcWakeLockMonitor$LockRecordList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/HtcWakeLockMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/HtcWakeLockMonitor;)Lcom/android/server/PowerManagerService$PMSInternalAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/HtcWakeLockMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/HtcWakeLockMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/HtcWakeLockMonitor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/server/HtcWakeLockMonitor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mTotalTime:J

    return-wide v0
.end method

.method static synthetic access$3700(Lcom/android/server/HtcWakeLockMonitor;)[[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/HtcWakeLockMonitor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/android/server/HtcWakeLockMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/server/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/HtcWakeLockMonitor;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->TAG_WHITE_LIST_PREFIX:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/HtcWakeLockMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/server/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/HtcWakeLockMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/server/HtcWakeLockMonitor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/android/server/HtcWakeLockMonitor;->mLastScanTime:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/android/server/HtcWakeLockMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/HtcWakeLockMonitor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor;->criteriaToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/HtcWakeLockMonitor;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method private clearRecord(IZ)V
    .locals 6
    .parameter "uid"
    .parameter "clearAll"

    .prologue
    .line 600
    if-nez p2, :cond_0

    iget v2, p0, Lcom/android/server/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    if-ge p1, v2, :cond_0

    .line 629
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v3, p0, Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    monitor-enter v3

    .line 605
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    invoke-virtual {v2}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    .line 606
    .local v1, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->uid:I
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1500(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v2

    if-eq p1, v2, :cond_2

    if-eqz p2, :cond_1

    .line 607
    :cond_2
    const/4 v2, 0x0

    #setter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I
    invoke-static {v1, v2}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1602(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;I)I

    .line 608
    const/4 v2, 0x0

    #setter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v1, v2}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1302(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;[J)[J

    .line 610
    iget-boolean v2, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    .line 611
    const-string v2, "HtcWLM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearRecord: Clear record. uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->uid:I
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1500(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->pid:I
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1700(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1800(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 628
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 620
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz p2, :cond_4

    .line 621
    const/4 v2, 0x0

    :try_start_1
    check-cast v2, [[J

    iput-object v2, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    .line 622
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/HtcWakeLockMonitor;->mLastScanTime:J

    .line 625
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    .line 626
    const-string v2, "HtcWLM"

    const-string v4, "clearRecord: Clear all records."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private criteriaToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abnormal App(s) w/ criteria: UID>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MINIMUM_DURATION>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SCREEN_OFF_MINIMUM>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SCREEN_OFF_RATIO>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WL_HELD_RATIO>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ABNORMAL_COUNT>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getSumByOffset([[JJ)[J
    .locals 24
    .parameter "timeStamps"
    .parameter "OFFSET"

    .prologue
    .line 484
    const-wide/16 v16, 0x0

    .line 485
    .local v16, sum:J
    move-wide/from16 v18, p2

    .line 486
    .local v18, total:J
    const-wide/16 v10, 0x0

    .line 488
    .local v10, duration:J
    const/16 v20, 0x0

    :try_start_0
    aget-object v20, p1, v20

    move-object/from16 v0, v20

    array-length v7, v0

    .line 490
    .local v7, SIZE:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 491
    .local v5, NOW:J
    sub-long v3, v5, p2

    .line 494
    .local v3, MIN_RANGE:J
    const-wide/16 v20, 0x0

    cmp-long v20, v5, v20

    if-lez v20, :cond_0

    const-wide/16 v20, 0x0

    cmp-long v20, v3, v20

    if-gtz v20, :cond_2

    .line 495
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 496
    const-string v20, "HtcWLM"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getSumByOffset: Abnormal case found. OFFSET="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", NOW="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", MIN_RANGE="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_1
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-wide v16, v20, v21

    const/16 v21, 0x1

    aput-wide v18, v20, v21

    .line 541
    .end local v3           #MIN_RANGE:J
    .end local v5           #NOW:J
    .end local v7           #SIZE:I
    :goto_0
    return-object v20

    .line 504
    .restart local v3       #MIN_RANGE:J
    .restart local v5       #NOW:J
    .restart local v7       #SIZE:I
    :cond_2
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v7, :cond_9

    .line 507
    const/16 v20, 0x1

    aget-object v20, p1, v20

    aget-wide v20, v20, v13

    cmp-long v20, v3, v20

    if-gtz v20, :cond_6

    const/16 v20, 0x0

    aget-object v20, p1, v20

    aget-wide v20, v20, v13

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_6

    const/16 v20, 0x1

    aget-object v20, p1, v20

    aget-wide v20, v20, v13

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_6

    .line 508
    const/16 v20, 0x1

    aget-object v20, p1, v20

    aget-wide v20, v20, v13

    const/16 v22, 0x0

    aget-object v22, p1, v22

    aget-wide v22, v22, v13

    sub-long v10, v20, v22

    .line 509
    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-lez v20, :cond_3

    .line 510
    add-long v16, v16, v10

    .line 515
    :cond_3
    const/16 v20, 0x0

    aget-object v20, p1, v20

    aget-wide v20, v20, v13

    cmp-long v20, v20, v3

    if-gez v20, :cond_4

    const/16 v20, 0x0

    aget-object v20, p1, v20

    aget-wide v20, v20, v13

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_4

    .line 516
    const/16 v20, 0x0

    aget-object v20, p1, v20

    aget-wide v20, v20, v13

    sub-long v8, v5, v20

    .line 519
    .local v8, diff:J
    cmp-long v20, v18, v8

    if-lez v20, :cond_5

    .line 504
    .end local v8           #diff:J
    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .restart local v8       #diff:J
    :cond_5
    move-wide/from16 v18, v8

    .line 519
    goto :goto_2

    .line 522
    .end local v8           #diff:J
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/HtcWakeLockMonitor;->mScreenState:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    const/16 v20, 0x0

    aget-object v20, p1, v20

    aget-wide v20, v20, v13

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_7

    const/16 v20, 0x1

    aget-object v20, p1, v20

    aget-wide v20, v20, v13

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_4

    .line 526
    :cond_7
    const/16 v20, 0x0

    aget-object v20, p1, v20

    const-wide/16 v21, 0x0

    aput-wide v21, v20, v13

    .line 527
    const/16 v20, 0x1

    aget-object v20, p1, v20

    const-wide/16 v21, 0x0

    aput-wide v21, v20, v13

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    .line 530
    .local v15, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v15}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v20

    if-eqz v20, :cond_8

    .line 531
    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v15}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v20

    const-wide/16 v21, 0x0

    aput-wide v21, v20, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 536
    .end local v3           #MIN_RANGE:J
    .end local v5           #NOW:J
    .end local v7           #SIZE:I
    .end local v13           #i:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :catch_0
    move-exception v12

    .line 537
    .local v12, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 538
    const-string v20, "HtcWLM"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getSumByTarget: Exception caught. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v12           #e:Ljava/lang/Exception;
    :cond_9
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-wide v16, v20, v21

    const/16 v21, 0x1

    aput-wide v18, v20, v21

    goto/16 :goto_0
.end method

.method private initObserver()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 336
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "HtcWLM"

    const-string v1, "initObserver()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mContentResolver:Landroid/content/ContentResolver;

    .line 341
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "abnormal_app_monitor_enable"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 349
    .local v6, systemSettingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 350
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_2

    .line 351
    new-instance v0, Lcom/android/server/HtcWakeLockMonitor$SettingsObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/server/HtcWakeLockMonitor$SettingsObserver;-><init>(Lcom/android/server/HtcWakeLockMonitor;Lcom/android/server/HtcWakeLockMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mSettingsObserver:Lcom/android/server/HtcWakeLockMonitor$SettingsObserver;

    .line 352
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->mSettingsObserver:Lcom/android/server/HtcWakeLockMonitor$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 355
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mSettingsObserver:Lcom/android/server/HtcWakeLockMonitor$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/HtcWakeLockMonitor$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 357
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 358
    const-string v0, "HtcWLM"

    const-string v1, "initObserver: observer added successfully."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v6           #systemSettingsCursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 361
    .restart local v6       #systemSettingsCursor:Landroid/database/Cursor;
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 362
    const-string v0, "HtcWLM"

    const-string v1, "initObserver: content query map is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    .end local v6           #systemSettingsCursor:Landroid/database/Cursor;
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 367
    const-string v0, "HtcWLM"

    const-string v1, "initObserver: content resolver is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 6

    .prologue
    .line 1157
    const/4 v2, 0x0

    .line 1159
    .local v2, result:Z
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1160
    .local v1, pms:Landroid/os/IPowerManager;
    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1164
    .end local v1           #pms:Landroid/os/IPowerManager;
    :goto_0
    return v2

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcWLM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScreenOn: Exception caught. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readSysProp()V
    .locals 19

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    .line 283
    .local v5, old_debug_on:Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    .line 284
    .local v6, old_enable_monitor:Z
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    .line 285
    .local v13, old_whitelist_valid_uid:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    .line 286
    .local v12, old_uid_check_range:I
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    .line 287
    .local v7, old_minimum_duration:J
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    .line 288
    .local v9, old_screen_off_minimum:J
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    .line 289
    .local v11, old_screen_off_ratio:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    .line 290
    .local v14, old_wl_held_ratio:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    .line 292
    .local v4, old_abnormal_count:I
    const/4 v2, 0x0

    .line 294
    .local v2, PROP_ON:Z
    :try_start_0
    const-string v15, "persist.htc.wlm.sysprop.on"

    invoke-static {v15, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 296
    if-eqz v2, :cond_0

    .line 297
    const-string v15, "persist.htc.wlm.debug.on"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    .line 298
    const-string v15, "persist.htc.wlm.monitor"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    .line 300
    const-string v15, "persist.htc.wlm.uid.whitelist"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    .line 301
    const-string v15, "persist.htc.wlm.uid.range"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    .line 303
    const-string v15, "persist.htc.wlm.min.duration"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    .line 305
    const-string v15, "persist.htc.wlm.scr.minimum"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    .line 306
    const-string v15, "persist.htc.wlm.scr.ratio"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    .line 308
    const-string v15, "persist.htc.wlm.wl.ratio"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    .line 310
    const-string v15, "persist.htc.wlm.an.count"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/HtcWakeLockMonitor;->ABNORMAL_COUNT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v15, :cond_1

    .line 319
    const-string v15, "HtcWLM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readSysProp: PROP_ON=false->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", DEBUG_ON="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", MONITOR="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v15, "HtcWLM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readSysProp: WHITELIST_VALID_UID="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", UID_CHECK_RANGE="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v15, "HtcWLM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readSysProp: MINIMUM_DURATION="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", SCREEN_OFF_MINIMUM="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", SCREEN_OFF_RATIO="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", WL_HELD_RATIO="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", ABNORMAL_COUNT="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    return-void

    .line 312
    :catch_0
    move-exception v3

    .line 313
    .local v3, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v15, :cond_0

    .line 314
    const-string v15, "HtcWLM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readSysProp: Unable to get SystemProperties. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private saveScreenTimeStamp(Z)V
    .locals 14
    .parameter "on"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 401
    iput-boolean p1, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenState:Z

    .line 403
    iget-boolean v8, p0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    if-nez v8, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    .line 410
    .local v0, INDEX:I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    if-nez v8, :cond_2

    .line 411
    const/4 v8, 0x2

    iget v10, p0, Lcom/android/server/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    filled-new-array {v8, v10}, [I

    move-result-object v8

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    iput-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    .line 415
    :cond_2
    if-nez p1, :cond_3

    .line 416
    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    iget-wide v10, p0, Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    invoke-direct {p0, v8, v10, v11}, Lcom/android/server/HtcWakeLockMonitor;->getSumByOffset([[JJ)[J

    .line 419
    :cond_3
    iget v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    add-int/lit8 v6, v8, 0x1

    .line 420
    .local v6, next_index:I
    iget v8, p0, Lcom/android/server/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    add-int/lit8 v8, v8, -0x1

    if-le v6, v8, :cond_4

    move v6, v9

    .line 422
    :cond_4
    if-nez p1, :cond_7

    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x0

    aget-object v8, v8, v10

    aget-wide v10, v8, v6

    cmp-long v8, v10, v12

    if-nez v8, :cond_7

    .line 425
    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x0

    aget-object v8, v8, v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    aput-wide v10, v8, v6

    .line 426
    iput v6, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    .line 428
    iget-boolean v8, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_5

    .line 429
    const-string v8, "HtcWLM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveScreenTimeStamp: mScreenTimeStamp[0]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-wide v11, v11, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_5
    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/HtcWakeLockMonitor;->mUpdateTask:Lcom/android/server/HtcWakeLockMonitor$UpdateTask;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    .end local v6           #next_index:I
    :catch_0
    move-exception v4

    .line 471
    .local v4, e:Ljava/lang/Exception;
    iget-boolean v8, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_6

    .line 472
    const-string v8, "HtcWLM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveScreenTimeStamp: on="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", INDEX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mScreenTimeStampIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MAX_SCREEN_OFF_COUNT="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_6
    iput v9, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    goto/16 :goto_0

    .line 432
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v6       #next_index:I
    :cond_7
    if-eqz p1, :cond_5

    :try_start_1
    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x0

    aget-object v8, v8, v10

    aget-wide v10, v8, v0

    cmp-long v8, v10, v12

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x1

    aget-object v8, v8, v10

    aget-wide v10, v8, v0

    cmp-long v8, v10, v12

    if-nez v8, :cond_5

    .line 436
    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    aput-wide v10, v8, v0

    .line 438
    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x1

    aget-object v8, v8, v10

    aget-wide v10, v8, v0

    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v12, 0x0

    aget-object v8, v8, v12

    aget-wide v12, v8, v0

    sub-long v1, v10, v12

    .line 439
    .local v1, OFF_DURATION:J
    iget-wide v10, p0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    cmp-long v8, v1, v10

    if-ltz v8, :cond_a

    .line 441
    .local v3, VALID:Z
    :goto_1
    iget-boolean v8, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_8

    .line 442
    const-string v10, "HtcWLM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveScreenTimeStamp:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v3, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " off duration "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "ms ("

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aget-wide v12, v12, v0

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "~"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-wide v12, v12, v0

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ")"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", INDEX="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_8
    if-nez v3, :cond_5

    .line 450
    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x0

    aget-object v8, v8, v10

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v0

    .line 451
    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x1

    aget-object v8, v8, v10

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v0

    .line 454
    iget v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    .line 455
    iget v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    if-gez v8, :cond_c

    iget v8, p0, Lcom/android/server/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    add-int/lit8 v8, v8, -0x1

    :goto_3
    iput v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    .line 458
    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    invoke-virtual {v8}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    .line 459
    .local v7, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v8

    if-eqz v8, :cond_9

    .line 460
    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v8

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v0

    goto :goto_4

    .end local v3           #VALID:Z
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :cond_a
    move v3, v9

    .line 439
    goto/16 :goto_1

    .line 442
    .restart local v3       #VALID:Z
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " off duration "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "ms less than "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v12, p0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "ms. Skip."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 455
    :cond_c
    iget v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStampIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method protected addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V
    .locals 6
    .parameter "flags"
    .parameter "tag"
    .parameter "uid"
    .parameter "pid"
    .parameter "binder"

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    if-nez v0, :cond_1

    .line 222
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "HtcWLM"

    const-string v1, "addRecord: wake lock monitoring is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    #calls: Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->access$500(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;ILjava/lang/String;IILandroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected bootCompleted()V
    .locals 4

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor;->mDumpRecordTask:Lcom/android/server/HtcWakeLockMonitor$DumpRecordTask;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    :cond_0
    return-void
.end method

.method protected screenState(Z)V
    .locals 14
    .parameter "on"

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 160
    iget-boolean v9, p0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    if-nez v9, :cond_1

    .line 161
    iget-boolean v8, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    .line 162
    const-string v8, "HtcWLM"

    const-string v9, "screenState: wake lock monitoring is disabled."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v9, p0, Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    monitor-enter v9

    .line 169
    :try_start_0
    iget-boolean v10, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenState:Z

    if-eqz v10, :cond_3

    if-nez p1, :cond_3

    iget-object v10, p0, Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    #calls: Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z
    invoke-static {v10}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->access$400(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 170
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V

    .line 217
    :cond_2
    :goto_1
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 172
    :cond_3
    if-eqz p1, :cond_2

    .line 175
    :try_start_1
    iget-boolean v10, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenState:Z

    if-nez v10, :cond_4

    .line 177
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V

    .line 180
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 181
    .local v3, NOW:J
    iget-wide v10, p0, Lcom/android/server/HtcWakeLockMonitor;->mLastScanTime:J

    sub-long v1, v3, v10

    .line 182
    .local v1, ELAPSED:J
    iget-wide v10, p0, Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v10, v1, v10

    if-ltz v10, :cond_8

    .line 185
    :try_start_2
    iget-object v10, p0, Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    iget-wide v11, p0, Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    invoke-direct {p0, v10, v11, v12}, Lcom/android/server/HtcWakeLockMonitor;->getSumByOffset([[JJ)[J

    move-result-object v7

    .line 186
    .local v7, result:[J
    const/4 v10, 0x0

    aget-wide v10, v7, v10

    iput-wide v10, p0, Lcom/android/server/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    .line 187
    const/4 v10, 0x1

    aget-wide v10, v7, v10

    iput-wide v10, p0, Lcom/android/server/HtcWakeLockMonitor;->mTotalTime:J

    .line 190
    iget-wide v10, p0, Lcom/android/server/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    const-wide/16 v12, 0x64

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/server/HtcWakeLockMonitor;->mTotalTime:J

    div-long/2addr v10, v12

    long-to-int v5, v10

    .line 191
    .local v5, RATIO:I
    iget v10, p0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    if-lt v5, v10, :cond_6

    .line 193
    .local v0, ASSIGN:Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_5

    .line 194
    const-string v10, "HtcWLM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenState: monitoring task "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v0, :cond_7

    const-string v8, "assigned."

    :goto_3
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " ratio="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v11, p0, Lcom/android/server/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "ms/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v11, p0, Lcom/android/server/HtcWakeLockMonitor;->mTotalTime:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "ms="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", SCREEN_OFF_RATIO="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, p0, Lcom/android/server/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_5
    if-eqz v0, :cond_2

    .line 202
    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/HtcWakeLockMonitor;->mMonitorTask:Lcom/android/server/HtcWakeLockMonitor$MonitorTask;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 204
    .end local v0           #ASSIGN:Z
    .end local v5           #RATIO:I
    .end local v7           #result:[J
    :catch_0
    move-exception v6

    .line 205
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    iget-boolean v8, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_2

    .line 206
    const-string v8, "HtcWLM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenState: Exception caught. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .end local v6           #e:Ljava/lang/Exception;
    .restart local v5       #RATIO:I
    .restart local v7       #result:[J
    :cond_6
    move v0, v8

    .line 191
    goto/16 :goto_2

    .line 194
    .restart local v0       #ASSIGN:Z
    :cond_7
    :try_start_4
    const-string v8, "not assigned."
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 210
    .end local v0           #ASSIGN:Z
    .end local v5           #RATIO:I
    .end local v7           #result:[J
    :cond_8
    :try_start_5
    iget-boolean v8, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_2

    .line 211
    const-string v8, "HtcWLM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenState: monitoring task skipped. elapsed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms from last scan"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MINIMUM_DURATION="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method protected stopDeadRecord(Landroid/os/IBinder;)V
    .locals 2
    .parameter "binder"

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    if-nez v0, :cond_1

    .line 242
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "HtcWLM"

    const-string v1, "stopDeadRecord: wake lock monitoring is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    #calls: Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->stopDeadRecord(Landroid/os/IBinder;)V
    invoke-static {v0, p1}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->access$700(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .parameter "tag"
    .parameter "binder"

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    if-nez v0, :cond_1

    .line 232
    iget-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "HtcWLM"

    const-string v1, "stopRecord: wake lock monitoring is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    #calls: Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->access$600(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method
