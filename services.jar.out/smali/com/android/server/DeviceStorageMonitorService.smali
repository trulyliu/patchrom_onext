.class public Lcom/android/server/DeviceStorageMonitorService;
.super Landroid/os/Binder;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceStorageMonitorService$SmsReceiveReceiver;,
        Lcom/android/server/DeviceStorageMonitorService$BootCompletedReceiver;,
        Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "/cache"

.field private static final DATADATA_PATH:Ljava/lang/String; = "/data/data"

.field private static final DATA_PATH:Ljava/lang/String; = "/data"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_CRITICAL_THRESHOLD_MAX_BYTES:I = 0x1400000

.field private static final DEFAULT_CRITICAL_THRESHOLD_MAX_BYTES_FOR_FUSE:I = 0x7800000

.field private static final DEFAULT_CRITICAL_THRESHOLD_PERCENTAGE:I = 0x5

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:I = 0x100000

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:I = 0x1f400000

.field private static final DEFAULT_THRESHOLD_MAX_BYTES_FOR_FUSE:I = 0x40000000

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field private static final DEVICE_MEMORY_WHAT:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DUMP_LOWER_BOUND:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final DUMP_THRESHOLD:J = 0x0L

.field private static final FILE_LIST_1:Ljava/lang/String; = "/data/misc/filelist.1.txt"

.field private static final FILE_LIST_2:Ljava/lang/String; = "/data/misc/filelist.2.txt"

.field private static final LOWSTORAGE_TAG:Ljava/lang/String; = "LowStorage"

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final MONITOR_INTERVAL:I = 0x1

.field private static final NO_MORE_SMS_NOTIFICATION_ID:I = 0x2

.field public static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SKY_SMS_RECEIVE_SIZE_MEGA:F = 2.5f

.field private static final SMS_AVAILABLE_THRESHOLD:J = 0x80000L

.field private static final SYSTEM_PATH:Ljava/lang/String; = "/system"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field private static final localLOGV:Z

.field private static mSmsStorageBootCheck:I


# instance fields
.field private final mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private mCacheFileStats:Landroid/os/StatFs;

.field private mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

.field private mClearSucceeded:Z

.field private mClearingCache:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCriticalMemFlag:Z

.field private mDataDataFileStats:Landroid/os/StatFs;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mFreeMem:J

.field private mFreeMemDataData:J

.field mHandler:Landroid/os/Handler;

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemDataData:J

.field private mLastReportedFreeMemTime:J

.field private mLowMemFlag:Z

.field private mLowOmaDmMemFlag:Z

.field private mLowOmaDmMemThreshold:J

.field private mMemCriticalThreshold:J

.field private mMemFullFlag:Z

.field private mMemFullThreshold:I

.field private mMemLowThreshold:J

.field private mNoSmsMemFlag:Z

.field private mOmaDmStorageOKIntent:Landroid/content/Intent;

.field private mPhoneStorageMonitor:Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;

.field private mSmsStorageLowIntent:Landroid/content/Intent;

.field private mSmsStorageOkIntent:Landroid/content/Intent;

.field private mStorageEnterCriticalIntent:Landroid/content/Intent;

.field private mStorageFullIntent:Landroid/content/Intent;

.field private mStorageLeaveCriticalIntent:Landroid/content/Intent;

.field private mStorageLowIntent:Landroid/content/Intent;

.field private mStorageNotFullIntent:Landroid/content/Intent;

.field private mStorageOkIntent:Landroid/content/Intent;

.field private mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private mTotalMemory:J

.field private mTotalMemoryDataData:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3

    .line 157
    const/4 v0, 0x3

    sput v0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    .line 162
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getLowStorageThreshold()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/DeviceStorageMonitorService;->DUMP_THRESHOLD:J

    .line 163
    sget-wide v0, Lcom/android/server/DeviceStorageMonitorService;->DUMP_THRESHOLD:J

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/DeviceStorageMonitorService;->DUMP_LOWER_BOUND:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const-wide/16 v9, 0x64

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x800

    const/4 v3, 0x0

    .line 564
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 111
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    .line 113
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    .line 114
    iput-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    .line 132
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 133
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 178
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 565
    iput-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 566
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    .line 567
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 569
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    .line 570
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/system"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    .line 571
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/cache"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    .line 573
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    div-long/2addr v1, v9

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    .line 576
    const/16 v1, 0x40

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v2, :cond_0

    .line 577
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataDataFileStats:Landroid/os/StatFs;

    .line 578
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    div-long/2addr v1, v9

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemoryDataData:J

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->prepareStorageCriticalIntent()V

    .line 585
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    .line 586
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    .line 588
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 589
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    .line 590
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 591
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    .line 592
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.SMS_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageLowIntent:Landroid/content/Intent;

    .line 596
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.SMS_STORAGE_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageOkIntent:Landroid/content/Intent;

    .line 597
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/DeviceStorageMonitorService$BootCompletedReceiver;

    invoke-direct {v2, p0, v6}, Lcom/android/server/DeviceStorageMonitorService$BootCompletedReceiver;-><init>(Lcom/android/server/DeviceStorageMonitorService;Lcom/android/server/DeviceStorageMonitorService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 600
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getCriticalMemThreshold()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    .line 602
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemThreshold()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    .line 603
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemFullThreshold()I

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:I

    .line 606
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 607
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v1}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 609
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->InitialForOmaDm()V

    .line 612
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd1

    if-ne v1, v2, :cond_1

    .line 613
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 614
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    const-string v1, "com.htc.intent.action.CB_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/DeviceStorageMonitorService$SmsReceiveReceiver;

    invoke-direct {v2, p0, v6}, Lcom/android/server/DeviceStorageMonitorService$SmsReceiveReceiver;-><init>(Lcom/android/server/DeviceStorageMonitorService;Lcom/android/server/DeviceStorageMonitorService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 620
    :cond_1
    new-instance v1, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mPhoneStorageMonitor:Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;

    .line 622
    return-void
.end method

.method private final HasLowMemoryWizardApp()Z
    .locals 8

    .prologue
    .line 841
    const/4 v3, 0x0

    .line 842
    .local v3, bRet:Z
    const/4 v6, 0x4

    new-array v1, v6, [B

    fill-array-data v1, :array_0

    .line 850
    .local v1, PhoneWhiteList:[B
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v6, :cond_3

    .line 852
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x4040

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 853
    const/4 v3, 0x1

    .line 870
    :cond_0
    :goto_0
    return v3

    .line 856
    :cond_1
    move-object v2, v1

    .local v2, arr$:[B
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-byte v0, v2, v4

    .line 857
    .local v0, DeviceID:B
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v0, :cond_2

    .line 858
    const/4 v3, 0x1

    .line 859
    goto :goto_0

    .line 856
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 867
    .end local v0           #DeviceID:B
    .end local v2           #arr$:[B
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 842
    nop

    :array_0
    .array-data 0x1
        0x42t
        0x62t
        0x63t
        0x10t
    .end array-data
.end method

.method private InitialForOmaDm()V
    .locals 2

    .prologue
    .line 495
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.OMA_DM_STORAGE_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mOmaDmStorageOKIntent:Landroid/content/Intent;

    .line 496
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceStorageMonitorService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/DeviceStorageMonitorService;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final cancelCriticalNotification()V
    .locals 4

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageEnterCriticalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 916
    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending leave critical memory Intent, freeMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMemLowThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLeaveCriticalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 919
    return-void
.end method

.method private final cancelFullNotification()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 695
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 696
    return-void
.end method

.method private final cancelNotification()V
    .locals 3

    .prologue
    .line 669
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 673
    .local v0, mNotificationMgr:Landroid/app/NotificationManager;
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->HasLowMemoryWizardApp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 678
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 679
    return-void
.end method

.method private final cancelSmsStorageNotification()V
    .locals 3

    .prologue
    .line 770
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 774
    .local v0, mNotificationMgr:Landroid/app/NotificationManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 776
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 777
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 778
    return-void
.end method

.method private final checkAvailableOmaDmMemory()V
    .locals 11

    .prologue
    const-wide/16 v7, 0x400

    const-wide/16 v9, 0x0

    .line 452
    const/4 v0, 0x0

    .line 454
    .local v0, bThresholdChange:Z
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    .line 456
    .local v3, remainMem:J
    const-string v5, "omadm.fumo.storage.cap"

    invoke-static {v5, v9, v10}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    mul-long/2addr v5, v7

    mul-long v1, v5, v7

    .line 460
    .local v1, nThreshold:J
    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    cmp-long v5, v5, v1

    if-eqz v5, :cond_0

    .line 461
    const/4 v0, 0x1

    .line 462
    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    .line 463
    const-string v5, "DeviceStorageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMA DM Low Memory threshold = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    cmp-long v5, v1, v9

    if-gtz v5, :cond_2

    .line 467
    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mOmaDmStorageOKIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 490
    :cond_1
    :goto_0
    return-void

    .line 471
    :cond_2
    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_4

    .line 472
    iget-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    if-eqz v5, :cond_3

    if-eqz v0, :cond_1

    .line 473
    :cond_3
    const-string v5, "DeviceStorageMonitorService"

    const-string v6, "Running out of memory for OMA DM."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    .line 477
    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mOmaDmStorageOKIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 482
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    if-nez v5, :cond_5

    if-eqz v0, :cond_1

    .line 483
    :cond_5
    const-string v5, "DeviceStorageMonitorService"

    const-string v6, "OMA DM Memory available. send Intents.ACTION_OMA_DM_STORAGE_OK"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mOmaDmStorageOKIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 485
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    goto :goto_0
.end method

.method private final checkAvailableSmsMemory(Z)V
    .locals 6
    .parameter "checkCache"

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    .line 415
    .local v0, remainMem:J
    const/16 v4, 0x40

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v4, v5, :cond_0

    .line 416
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemDataData:J

    .line 418
    :cond_0
    const-wide/32 v2, 0x80000

    .line 419
    .local v2, threshold:J
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xd2

    if-ne v4, v5, :cond_1

    .line 420
    const-wide/32 v2, 0x280000

    .line 422
    :cond_1
    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    .line 424
    iget-boolean v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    if-eqz v4, :cond_2

    sget v4, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    if-lez v4, :cond_4

    .line 425
    :cond_2
    const-string v4, "DeviceStorageMonitorService"

    const-string v5, "Running out of memory for SMS. Sending notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget v4, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    if-lez v4, :cond_3

    .line 427
    sget v4, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    .line 428
    :cond_3
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendSmsStorageNotification()V

    .line 429
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    .line 446
    :cond_4
    :goto_0
    return-void

    .line 435
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    if-nez v4, :cond_6

    sget v4, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    if-lez v4, :cond_4

    .line 437
    :cond_6
    sget v4, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    if-lez v4, :cond_7

    .line 438
    sget v4, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    .line 439
    :cond_7
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelSmsStorageNotification()V

    .line 440
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    goto :goto_0
.end method

.method private final checkEnterCriticalMemory()V
    .locals 4

    .prologue
    .line 922
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 924
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    if-nez v0, :cond_0

    .line 925
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendCriticalNotification()V

    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    .line 931
    :cond_0
    return-void
.end method

.method private final checkLeaveCriticalMemory()V
    .locals 4

    .prologue
    .line 934
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 936
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    if-eqz v0, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelCriticalNotification()V

    .line 938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    .line 941
    :cond_0
    return-void
.end method

.method private final checkMemory(Z)V
    .locals 8
    .parameter "checkCache"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 335
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->forceDumpFileList()V

    .line 338
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mPhoneStorageMonitor:Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;

    invoke-virtual {v2}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->checkPhoneStorageStats()V

    .line 340
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v2, :cond_1

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v2, v4

    .line 344
    .local v0, diffTime:J
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 345
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Thread that clears cache file seems to run for ever"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v0           #diffTime:J
    :cond_0
    :goto_0
    const-wide/32 v2, 0xea60

    invoke-direct {p0, v7, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 407
    return-void

    .line 348
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->restatDataDir()V

    .line 352
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->checkLeaveCriticalMemory()V

    .line 357
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->isHtcDeviceLowDataData()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 360
    :cond_2
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->dumpFileListToLogFile()V

    .line 362
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v2, :cond_3

    .line 363
    if-eqz p1, :cond_5

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 368
    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 369
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->clearCache()V

    .line 387
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->checkEnterCriticalMemory()V

    .line 389
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    .line 390
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v2, :cond_4

    .line 391
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendFullNotification()V

    .line 392
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 401
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->checkAvailableSmsMemory(Z)V

    .line 402
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->checkAvailableOmaDmMemory()V

    goto :goto_0

    .line 371
    :cond_5
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Running low on memory. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendNotification()V

    .line 373
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    .line 380
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v2, :cond_3

    .line 381
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Memory available. Cancelling notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelNotification()V

    .line 383
    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    .line 395
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v2, :cond_4

    .line 396
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelFullNotification()V

    .line 397
    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_2
.end method

.method private final clearCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 286
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    .line 290
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 294
    const/16 v1, 0x40

    :try_start_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v2, :cond_1

    .line 302
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemThresholdDataData()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 313
    :goto_0
    return-void

    .line 306
    :cond_1
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 311
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private final dumpFileList(Ljava/lang/String;)V
    .locals 12
    .parameter "filename"

    .prologue
    .line 979
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 980
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 981
    const-string v8, "LowStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start dumping file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 984
    .local v0, begin:J
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 985
    .local v2, buffer:Ljava/lang/StringBuffer;
    const-string v8, "df"

    invoke-direct {p0, v8}, Lcom/android/server/DeviceStorageMonitorService;->executeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 986
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 987
    const-string v8, "ls -a -l -R /data"

    invoke-direct {p0, v8}, Lcom/android/server/DeviceStorageMonitorService;->executeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 988
    const-string v8, "\nDump end"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 989
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 991
    .local v7, writer:Ljava/io/BufferedWriter;
    invoke-virtual {v7, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 992
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 993
    const-string v8, "LowStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dump file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " done. duration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    .end local v0           #begin:J
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .end local v7           #writer:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 994
    :catch_0
    move-exception v4

    .line 995
    .local v4, ioe:Ljava/io/IOException;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 996
    .local v6, stacktrace:Ljava/io/Writer;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 997
    .local v5, printWriter:Ljava/io/PrintWriter;
    invoke-virtual {v4, v5}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 998
    const-string v8, "LowStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpFileListToLogFile()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3

    .line 958
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckLowStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    sget-wide v2, Lcom/android/server/DeviceStorageMonitorService;->DUMP_THRESHOLD:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 965
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    sget-wide v2, Lcom/android/server/DeviceStorageMonitorService;->DUMP_LOWER_BOUND:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    sget-wide v2, Lcom/android/server/DeviceStorageMonitorService;->DUMP_THRESHOLD:J

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 968
    const-string v0, "LowStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device in Low Storage status.(free size <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/DeviceStorageMonitorService;->DUMP_THRESHOLD:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const-string v0, "/data/misc/filelist.2.txt"

    invoke-direct {p0, v0}, Lcom/android/server/DeviceStorageMonitorService;->dumpFileList(Ljava/lang/String;)V

    goto :goto_0

    .line 971
    :cond_2
    const-string v0, "LowStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device in Low Storage status.(free size <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/DeviceStorageMonitorService;->DUMP_THRESHOLD:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const-string v0, "/data/misc/filelist.1.txt"

    invoke-direct {p0, v0}, Lcom/android/server/DeviceStorageMonitorService;->dumpFileList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final executeCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "command"

    .prologue
    .line 1004
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1006
    .local v3, output:Ljava/lang/StringBuffer;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 1007
    .local v5, process:Ljava/lang/Process;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1011
    .local v7, reader:Ljava/io/BufferedReader;
    const/16 v9, 0x1000

    new-array v0, v9, [C

    .line 1012
    .local v0, buffer:[C
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v6

    .local v6, read:I
    if-lez v6, :cond_0

    .line 1013
    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1017
    .end local v0           #buffer:[C
    .end local v5           #process:Ljava/lang/Process;
    .end local v6           #read:I
    .end local v7           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 1018
    .local v2, ioe:Ljava/io/IOException;
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 1019
    .local v8, stacktrace:Ljava/io/Writer;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1020
    .local v4, printWriter:Ljava/io/PrintWriter;
    invoke-virtual {v2, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1021
    const-string v9, "LowStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v4           #printWriter:Ljava/io/PrintWriter;
    .end local v8           #stacktrace:Ljava/io/Writer;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1015
    .restart local v0       #buffer:[C
    .restart local v5       #process:Ljava/lang/Process;
    .restart local v6       #read:I
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 1016
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1022
    .end local v0           #buffer:[C
    .end local v5           #process:Ljava/lang/Process;
    .end local v6           #read:I
    .end local v7           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 1023
    .local v1, inte:Ljava/lang/InterruptedException;
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 1024
    .restart local v8       #stacktrace:Ljava/io/Writer;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1025
    .restart local v4       #printWriter:Ljava/io/PrintWriter;
    invoke-virtual {v1, v4}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1026
    const-string v9, "LowStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InterruptedException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private forceDumpFileList()V
    .locals 2

    .prologue
    .line 947
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckLowStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    const-string v0, "debug.dumpfile.force"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 949
    const-string v0, "LowStorage"

    const-string v1, "Force dumpfile: FILE_LIST_2:/data/misc/filelist.2.txt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string v0, "/data/misc/filelist.2.txt"

    invoke-direct {p0, v0}, Lcom/android/server/DeviceStorageMonitorService;->dumpFileList(Ljava/lang/String;)V

    .line 951
    const-string v0, "LowStorage"

    const-string v1, "Force dumpfile: FILE_LIST_1:/data/misc/filelist.1.txt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const-string v0, "/data/misc/filelist.1.txt"

    invoke-direct {p0, v0}, Lcom/android/server/DeviceStorageMonitorService;->dumpFileList(Ljava/lang/String;)V

    .line 955
    :cond_0
    return-void
.end method

.method private getCriticalMemThreshold()J
    .locals 2

    .prologue
    .line 887
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x7800000

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x1400000

    goto :goto_0
.end method

.method private getMemFullThreshold()I
    .locals 4

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sys_storage_full_threshold_bytes"

    const/high16 v3, 0x10

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 557
    .local v0, value:I
    return v0
.end method

.method private getMemThreshold()J
    .locals 7

    .prologue
    .line 514
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "sys_storage_threshold_percentage"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v2, v4

    .line 519
    .local v2, value:J
    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    mul-long/2addr v2, v4

    .line 522
    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "sys_storage_threshold_max_bytes"

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x4000

    :goto_0
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v0, v4

    .line 528
    .local v0, maxValue:J
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .end local v2           #value:J
    :goto_1
    return-wide v2

    .line 522
    .end local v0           #maxValue:J
    .restart local v2       #value:J
    :cond_0
    const/high16 v4, 0x1f40

    goto :goto_0

    .restart local v0       #maxValue:J
    :cond_1
    move-wide v2, v0

    .line 528
    goto :goto_1
.end method

.method private getMemThresholdDataData()J
    .locals 5

    .prologue
    .line 533
    const/16 v1, 0x40

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v2, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sys_storage_threshold_percentage"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 540
    .local v0, value:I
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemoryDataData:J

    int-to-long v3, v0

    mul-long/2addr v1, v3

    .line 542
    .end local v0           #value:I
    :goto_0
    return-wide v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemThreshold()J

    move-result-wide v1

    goto :goto_0
.end method

.method private isHtcDeviceLowDataData()Z
    .locals 5

    .prologue
    .line 317
    const/4 v2, 0x0

    .line 319
    .local v2, ret:Z
    const/16 v3, 0x40

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v4, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemThresholdDataData()J

    move-result-wide v0

    .line 321
    .local v0, memThresholdDataData:J
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemDataData:J

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 322
    const/4 v2, 0x1

    .line 325
    .end local v0           #memThresholdDataData:J
    :cond_0
    return v2
.end method

.method private postCheckMemoryMsg(ZJ)V
    .locals 5
    .parameter "clearCache"
    .parameter "delay"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 502
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 503
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 506
    return-void

    :cond_0
    move v0, v2

    .line 503
    goto :goto_0
.end method

.method private prepareStorageCriticalIntent()V
    .locals 3

    .prologue
    const/high16 v2, 0x800

    .line 892
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.DEVICE_STORAGE_CRITICAL_ENTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageEnterCriticalIntent:Landroid/content/Intent;

    .line 893
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageEnterCriticalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 894
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.DEVICE_STORAGE_CRITICAL_LEAVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLeaveCriticalIntent:Landroid/content/Intent;

    .line 895
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLeaveCriticalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 896
    return-void
.end method

.method private final restatDataDir()V
    .locals 24

    .prologue
    .line 202
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    const-string v20, "/data"

    invoke-virtual/range {v19 .. v20}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getBlockSize()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    mul-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 209
    :goto_0
    const-string v19, "debug.freemem"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, debugFreeMem:Ljava/lang/String;
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 211
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    .line 214
    :cond_0
    const/16 v19, 0x40

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 216
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataDataFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    const-string v20, "/data/data"

    invoke-virtual/range {v19 .. v20}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataDataFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataDataFileStats:Landroid/os/StatFs;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getBlockSize()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    mul-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemDataData:J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 223
    :goto_1
    const-string v19, "debug.freemem.datadata"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, debugFreeMemDataData:Ljava/lang/String;
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 225
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemDataData:J

    .line 230
    .end local v6           #debugFreeMemDataData:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v20, "sys_free_storage_log_interval"

    const-wide/16 v21, 0x2d0

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    const-wide/16 v21, 0x3c

    mul-long v19, v19, v21

    const-wide/16 v21, 0x3e8

    mul-long v11, v19, v21

    .line 234
    .local v11, freeMemLogInterval:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 235
    .local v3, currTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v19, v0

    sub-long v19, v3, v19

    cmp-long v19, v19, v11

    if-ltz v19, :cond_3

    .line 237
    :cond_2
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 238
    const-wide/16 v15, -0x1

    .local v15, mFreeSystem:J
    const-wide/16 v13, -0x1

    .line 240
    .local v13, mFreeCache:J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    const-string v20, "/system"

    invoke-virtual/range {v19 .. v20}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    mul-long v15, v19, v21

    .line 247
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    const-string v20, "/cache"

    invoke-virtual/range {v19 .. v20}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    mul-long v13, v19, v21

    .line 253
    :goto_3
    const/16 v19, 0xaba

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 256
    const/16 v19, 0x40

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 258
    const/16 v19, 0xaba

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemDataData:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 264
    .end local v13           #mFreeCache:J
    .end local v15           #mFreeSystem:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v20, "disk_free_change_reporting_threshold"

    const-wide/32 v21, 0x200000

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    .line 268
    .local v17, threshold:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v21, v0

    sub-long v7, v19, v21

    .line 269
    .local v7, delta:J
    cmp-long v19, v7, v17

    if-gtz v19, :cond_4

    move-wide/from16 v0, v17

    neg-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v19, v7, v19

    if-gez v19, :cond_5

    .line 270
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    .line 271
    const/16 v19, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 274
    :cond_5
    const/16 v19, 0x40

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 275
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemDataData:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemDataData:J

    move-wide/from16 v21, v0

    sub-long v9, v19, v21

    .line 276
    .local v9, deltaDataData:J
    cmp-long v19, v9, v17

    if-gtz v19, :cond_6

    move-wide/from16 v0, v17

    neg-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v19, v9, v19

    if-gez v19, :cond_7

    .line 277
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemDataData:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemDataData:J

    .line 279
    const/16 v19, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemDataData:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 283
    .end local v9           #deltaDataData:J
    :cond_7
    return-void

    .line 250
    .end local v7           #delta:J
    .end local v17           #threshold:J
    .restart local v13       #mFreeCache:J
    .restart local v15       #mFreeSystem:J
    :catch_0
    move-exception v19

    goto/16 :goto_3

    .line 243
    :catch_1
    move-exception v19

    goto/16 :goto_2

    .line 219
    .end local v3           #currTime:J
    .end local v11           #freeMemLogInterval:J
    .end local v13           #mFreeCache:J
    .end local v15           #mFreeSystem:J
    :catch_2
    move-exception v19

    goto/16 :goto_1

    .line 205
    .end local v5           #debugFreeMem:Ljava/lang/String;
    :catch_3
    move-exception v19

    goto/16 :goto_0
.end method

.method private final sendCriticalNotification()V
    .locals 4

    .prologue
    .line 905
    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending enter critical memory Intent, freeMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMemLowThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageEnterCriticalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 908
    return-void
.end method

.method private final sendFullNotification()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 687
    return-void
.end method

.method private final sendNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 633
    const/16 v6, 0xab9

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v6, v7, v8}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 635
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "android.settings.INTERNAL_STORAGE_SETTINGS"

    :goto_0
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v2, lowMemIntent:Landroid/content/Intent;
    const-string v6, "memory"

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 639
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 640
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 643
    .local v3, mNotificationMgr:Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v7, 0x10403c9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 645
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v7, 0x10403ca

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 647
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 648
    .local v1, intent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 649
    .local v4, notification:Landroid/app/Notification;
    const v6, 0x1080507

    iput v6, v4, Landroid/app/Notification;->icon:I

    .line 650
    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 651
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Landroid/app/Notification;->when:J

    .line 652
    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 654
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v5, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 655
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->HasLowMemoryWizardApp()Z

    move-result v6

    if-nez v6, :cond_2

    .line 656
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 661
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 662
    return-void

    .line 635
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v1           #intent:Landroid/app/PendingIntent;
    .end local v2           #lowMemIntent:Landroid/content/Intent;
    .end local v3           #mNotificationMgr:Landroid/app/NotificationManager;
    .end local v4           #notification:Landroid/app/Notification;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_1
    const-string v6, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    goto :goto_0

    .line 659
    .restart local v0       #details:Ljava/lang/CharSequence;
    .restart local v1       #intent:Landroid/app/PendingIntent;
    .restart local v2       #lowMemIntent:Landroid/content/Intent;
    .restart local v3       #mNotificationMgr:Landroid/app/NotificationManager;
    .restart local v4       #notification:Landroid/app/Notification;
    .restart local v5       #title:Ljava/lang/CharSequence;
    :cond_2
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    const-string v6, "DeviceStorageMonitorService"

    const-string v7, "Not to issue Low Memory Notification, due to LMW app will do it"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final sendSmsStorageNotification()V
    .locals 17

    .prologue
    .line 706
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v5, lowMemIntent:Landroid/content/Intent;
    const-string v13, "memory"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v5, v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 708
    const/high16 v13, 0x1000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 709
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v14, "notification"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 712
    .local v6, mNotificationMgr:Landroid/app/NotificationManager;
    const/4 v8, 0x0

    .line 714
    .local v8, rc:Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "com.htc"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 719
    :goto_0
    const v13, 0x2040196

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 723
    .local v12, title:Ljava/lang/CharSequence;
    const-wide/32 v10, 0x80000

    .line 724
    .local v10, storageLimit:J
    const-wide/16 v13, 0x400

    div-long/2addr v10, v13

    .line 725
    const-string v13, "%dKB"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 727
    .local v9, sStorageLimit:Ljava/lang/String;
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xd2

    if-ne v13, v14, :cond_0

    .line 728
    const-string v13, "%.1fMB"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/high16 v16, 0x4020

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 730
    :cond_0
    const v13, 0x2040197

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, details:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 735
    .local v4, intent:Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 738
    .local v7, notification:Landroid/app/Notification;
    const v3, 0x1080507

    .line 739
    .local v3, icon:I
    iput v3, v7, Landroid/app/Notification;->icon:I

    .line 740
    iput-object v12, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 741
    const-wide/16 v13, 0x0

    iput-wide v13, v7, Landroid/app/Notification;->when:J

    .line 742
    iget v13, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x2

    iput v13, v7, Landroid/app/Notification;->flags:I

    .line 746
    sget-boolean v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 747
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13, v12, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 760
    :goto_1
    const/4 v13, 0x2

    invoke-virtual {v6, v13, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 763
    return-void

    .line 715
    .end local v1           #details:Ljava/lang/CharSequence;
    .end local v3           #icon:I
    .end local v4           #intent:Landroid/app/PendingIntent;
    .end local v7           #notification:Landroid/app/Notification;
    .end local v9           #sStorageLimit:Ljava/lang/String;
    .end local v10           #storageLimit:J
    .end local v12           #title:Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .line 716
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 752
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #details:Ljava/lang/CharSequence;
    .restart local v3       #icon:I
    .restart local v4       #intent:Landroid/app/PendingIntent;
    .restart local v7       #notification:Landroid/app/Notification;
    .restart local v9       #sStorageLimit:Ljava/lang/String;
    .restart local v10       #storageLimit:J
    .restart local v12       #title:Ljava/lang/CharSequence;
    :cond_1
    new-instance v13, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x10900ad

    invoke-direct {v13, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v13, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 754
    iget-object v13, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v14, 0x1020006

    invoke-virtual {v13, v14, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 755
    iget-object v13, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v14, 0x1020016

    invoke-virtual {v13, v14, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 756
    iget-object v13, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v14, 0x1020046

    invoke-virtual {v13, v14, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 757
    iput-object v4, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1
.end method


# virtual methods
.method public getMemoryLowThreshold()J
    .locals 2

    .prologue
    .line 797
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    return-wide v0
.end method

.method public isMemoryLow()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    return v0
.end method

.method public updateMemory()V
    .locals 4

    .prologue
    .line 782
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->getCallingUid()I

    move-result v0

    .line 783
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 788
    :goto_0
    return-void

    .line 787
    :cond_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    goto :goto_0
.end method
