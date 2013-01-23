.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$StopInfo;,
        Landroid/app/ActivityThread$ResourcesKey;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$ProfilerControlData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$ResultData;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$NewIntentData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ActivityClientRecord;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final BUILD_TEST_KEY:Z = false

.field private static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_BROADCAST:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_MEMORY_TRIM:Z = false

.field static final DEBUG_MESSAGES:Z = false

.field private static final DEBUG_PROVIDER:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final DEBUG_SERVICE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DISABLE_GC_THRESHOLD:J = 0x0L

.field private static final LAUNCHING_THREAD_PRIORITY:I = -0x5

.field private static final LOG_ON_PAUSE_CALLED:I = 0x7545

.field private static final LOG_ON_RESUME_CALLED:I = 0x7546

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final PATTERN_SEMICOLON:Ljava/util/regex/Pattern; = null

.field private static PRELOAD_SKIN_PACKAGE_NAME:Ljava/lang/String; = null

.field private static PRELOAD_SKIN_PACKAGE_PATH:Ljava/lang/String; = null

.field private static final PROV_TAG:Ljava/lang/String; = "Providers"

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field static final localLOGV:Z

.field private static final mCursorRecordsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPrevPriority:I

.field static mSystemContext:Landroid/app/ContextImpl;

.field private static myTid:I

.field private static priorityRaised:Z

.field private static final sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceGcRunnable:Ljava/lang/Runnable;

.field private static sIsSystemServer:Z

.field private static sIsTopApp:Z

.field private static sLogProviderCriteria:I

.field static sMainThreadHandler:Landroid/os/Handler;

.field static sPackageManager:Landroid/content/pm/IPackageManager;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/app/ActivityThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActiveResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/ActivityThread$ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field final mActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field private mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

.field final mBackupAgents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/callbacks/ActivityThreadCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field mCompatConfiguration:Landroid/content/res/Configuration;

.field mConfiguration:Landroid/content/res/Configuration;

.field mCoreSettings:Landroid/os/Bundle;

.field final mDisplayMetrics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mH:Landroid/app/ActivityThread$H;

.field mInitialApplication:Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationAppLibraryDir:Ljava/lang/String;

.field mInstrumentationAppPackage:Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field mInstrumentedAppLibraryDir:Ljava/lang/String;

.field mJitEnabled:Z

.field final mLocalProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLooper:Landroid/os/Looper;

.field private mMainThreadConfig:Landroid/content/res/Configuration;

.field mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

.field mNumVisibleActivities:I

.field final mOnPauseListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;

.field mProfiler:Landroid/app/ActivityThread$Profiler;

.field final mProviderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;

.field final mResourcePackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mSystemThread:Z

.field private mThumbnailCanvas:Landroid/graphics/Canvas;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 166
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->PATTERN_SEMICOLON:Ljava/util/regex/Pattern;

    .line 172
    const-string v0, "com.htc.skin.Slate"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_NAME:Ljava/lang/String;

    .line 173
    const-string v0, "/system/app/Slate.apk"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_PATH:Ljava/lang/String;

    .line 177
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    sput-wide v0, Landroid/app/ActivityThread;->DISABLE_GC_THRESHOLD:J

    .line 181
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string/jumbo v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityThread;->BUILD_TEST_KEY:Z

    .line 184
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 211
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 2195
    sput-boolean v4, Landroid/app/ActivityThread;->priorityRaised:Z

    .line 2196
    sput v4, Landroid/app/ActivityThread;->mPrevPriority:I

    .line 2508
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    .line 3799
    new-instance v0, Landroid/app/ActivityThread$1;

    invoke-direct {v0}, Landroid/app/ActivityThread$1;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sForceGcRunnable:Ljava/lang/Runnable;

    .line 5500
    sput-boolean v4, Landroid/app/ActivityThread;->sIsSystemServer:Z

    .line 5508
    sput-boolean v4, Landroid/app/ActivityThread;->sIsTopApp:Z

    .line 5600
    const/4 v0, -0x1

    sput v0, Landroid/app/ActivityThread;->sLogProviderCriteria:I

    .line 5615
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->mCursorRecordsMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 189
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 190
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    .line 195
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 197
    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    .line 213
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 214
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppLibraryDir:Ljava/lang/String;

    .line 215
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 217
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppLibraryDir:Ljava/lang/String;

    .line 218
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 219
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Ljava/util/HashMap;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 239
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Ljava/util/HashMap;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mCallbacks:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    .line 259
    new-instance v0, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 260
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 264
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 1698
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 3175
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 3176
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 3177
    iput-object v1, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 3178
    iput-object v1, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 1954
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    sput v0, Landroid/app/ActivityThread;->myTid:I

    .line 1958
    iget-object v0, p0, Landroid/app/ActivityThread;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/HtcAppUsageStatsListener;

    invoke-direct {v1}, Landroid/app/HtcAppUsageStatsListener;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1961
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_1

    .line 1962
    const-string v0, "com.htc.skin.Burgundy"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_NAME:Ljava/lang/String;

    .line 1963
    const-string v0, "/system/app/Burgundy.apk"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_PATH:Ljava/lang/String;

    .line 1983
    :cond_0
    :goto_0
    return-void

    .line 1965
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    .line 1966
    :cond_2
    const-string v0, "com.htc.skin.Turquoise"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_NAME:Ljava/lang/String;

    .line 1967
    const-string v0, "/system/app/Turquoise.apk"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 1968
    :cond_3
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 1969
    const-string v0, "com.htc.skin.GreenImmersion"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_NAME:Ljava/lang/String;

    .line 1970
    const-string v0, "/system/app/GreenImmersion.apk"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 1971
    :cond_4
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x41

    if-eq v0, v1, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-ne v0, v1, :cond_6

    .line 1972
    :cond_5
    const-string v0, "com.htc.skin.Herring"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_NAME:Ljava/lang/String;

    .line 1973
    const-string v0, "/system/app/Herring.apk"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 1974
    :cond_6
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "3.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1975
    :cond_7
    const-string v0, "com.htc.skin.Burgundy"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_NAME:Ljava/lang/String;

    .line 1976
    const-string v0, "/system/app/Burgundy.apk"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 1977
    :cond_8
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "4.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1978
    :cond_9
    const-string v0, "com.htc.skin.Aluminum"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_NAME:Ljava/lang/String;

    .line 1979
    const-string v0, "/system/app/Aluminum.apk"

    sput-object v0, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$1100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    return-void
.end method

.method static synthetic access$1300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$2000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRequestThumbnail(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$2800(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReportAppTransitionEnd(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/app/ActivityThread;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleChangeTopApp(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$500(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V

    return-void
.end method

.method private attach(Z)V
    .locals 7
    .parameter "system"

    .prologue
    .line 5373
    sget-object v4, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5374
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 5375
    if-nez p1, :cond_1

    .line 5376
    new-instance v4, Landroid/app/ActivityThread$2;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Landroid/view/ViewRootImpl;->addFirstDrawHandler(Ljava/lang/Runnable;)V

    .line 5381
    const-string v4, "<pre-initialized>"

    invoke-static {v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 5382
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 5383
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 5386
    .local v3, mgr:Landroid/app/IActivityManager;
    :try_start_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v4

    if-lez v4, :cond_0

    .line 5387
    const-string v4, "Performance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attachApplication"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5389
    :cond_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5419
    .end local v3           #mgr:Landroid/app/IActivityManager;
    :goto_0
    new-instance v4, Landroid/app/ActivityThread$3;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$3;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 5442
    return-void

    .line 5396
    :cond_1
    const-string/jumbo v4, "system_process"

    invoke-static {v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 5398
    :try_start_1
    new-instance v4, Landroid/app/Instrumentation;

    invoke-direct {v4}, Landroid/app/Instrumentation;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 5399
    new-instance v1, Landroid/app/ContextImpl;

    invoke-direct {v1}, Landroid/app/ContextImpl;-><init>()V

    .line 5400
    .local v1, context:Landroid/app/ContextImpl;
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 5401
    const-class v4, Landroid/app/Application;

    invoke-static {v4, v1}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 5402
    .local v0, app:Landroid/app/Application;
    iget-object v4, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5403
    iput-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 5405
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5406
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    .line 5407
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/ApplicationInfo;->hasHtcSignature:Z

    .line 5408
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isHtcApp()Z

    .line 5409
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->hasHtcSignature()Z

    .line 5412
    :cond_2
    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5413
    .end local v0           #app:Landroid/app/Application;
    .end local v1           #context:Landroid/app/ContextImpl;
    :catch_0
    move-exception v2

    .line 5414
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate Application():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 5390
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #mgr:Landroid/app/IActivityManager;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method static final cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 5
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 3029
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3030
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3031
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 3032
    .local v0, wtoken:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3033
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activity"

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    .end local v0           #wtoken:Landroid/os/IBinder;
    :cond_0
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    .line 3038
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 3039
    return-void
.end method

.method private createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "r"

    .prologue
    .line 3181
    iget-object v4, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 3183
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    .line 3184
    :try_start_0
    iget v5, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 3186
    .local v5, w:I
    if-gez v5, :cond_4

    .line 3187
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3188
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x1050001

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, h:I
    iput v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 3191
    const v6, 0x1050002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 3198
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    if-lez v5, :cond_0

    if-lez v2, :cond_0

    .line 3199
    sget-object v6, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3200
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 3204
    .end local v2           #h:I
    .end local v5           #w:I
    :cond_0
    if-eqz v4, :cond_3

    .line 3205
    iget-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 3206
    .local v0, cv:Landroid/graphics/Canvas;
    if-nez v0, :cond_1

    .line 3207
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0           #cv:Landroid/graphics/Canvas;
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .restart local v0       #cv:Landroid/graphics/Canvas;
    iput-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 3210
    :cond_1
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3211
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v4, v0}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3212
    iput-object v4, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 3213
    const/4 v4, 0x0

    .line 3215
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3228
    .end local v0           #cv:Landroid/graphics/Canvas;
    :cond_3
    :goto_1
    return-object v4

    .line 3194
    .restart local v5       #w:I
    :cond_4
    iget v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #h:I
    goto :goto_0

    .line 3218
    .end local v2           #h:I
    .end local v5           #w:I
    :catch_0
    move-exception v1

    .line 3219
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3220
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create thumbnail of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 3225
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    .prologue
    .line 1655
    sget-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 2

    .prologue
    .line 1665
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1666
    .local v0, am:Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static currentPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1659
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1660
    .local v0, am:Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static debugProviderRef()Z
    .locals 2

    .prologue
    .line 5688
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "com.htc.FilePicker"

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 6
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2462
    .local p2, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2463
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    sget-wide v4, Landroid/app/ActivityThread;->DISABLE_GC_THRESHOLD:J

    invoke-virtual {v3, v4, v5}, Ldalvik/system/VMRuntime;->disableGc(J)V

    .line 2466
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2467
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2468
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 2469
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2470
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2471
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2475
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2476
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->enableGc()V

    .line 2479
    :cond_2
    return-void
.end method

.method private deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 9
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3613
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3614
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3615
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResultInfo;

    .line 3617
    .local v3, ri:Landroid/app/ResultInfo;
    :try_start_0
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 3618
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3622
    :cond_0
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v3, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v6, v3, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v3, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3614
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3624
    :catch_0
    move-exception v1

    .line 3625
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3626
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3633
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ri:Landroid/app/ResultInfo;
    :cond_2
    return-void
.end method

.method public static dumpCursorStackTrace()V
    .locals 9

    .prologue
    .line 5634
    const/4 v1, 0x0

    .line 5635
    .local v1, count:I
    sget-object v6, Landroid/app/ActivityThread;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v6

    .line 5636
    :try_start_0
    sget-object v5, Landroid/app/ActivityThread;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 5637
    monitor-exit v6

    .line 5659
    :goto_0
    return-void

    .line 5639
    :cond_0
    const-string v5, "Providers"

    const-string v7, ">> dumpCursorStackTrace()"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5640
    sget-object v5, Landroid/app/ActivityThread;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 5641
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/Cursor;Ljava/lang/String;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5642
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5643
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/Cursor;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 5644
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 5646
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5650
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5651
    .local v2, elem:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 5652
    const-string v5, "Providers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[stack"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5654
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5657
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #elem:Ljava/lang/String;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/Cursor;Ljava/lang/String;>;"
    :cond_3
    const-string v5, "Providers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<< dumpCursorStackTrace(): Total cursor count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5658
    monitor-exit v6

    goto :goto_0

    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/Cursor;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private native dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
.end method

.method public static getIntentBeingBroadcast()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2516
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;
    .locals 10
    .parameter "aInfo"
    .parameter "compatInfo"
    .parameter "baseLoader"
    .parameter "securityViolation"
    .parameter "includeCode"

    .prologue
    .line 1920
    iget-object v9, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    .line 1922
    if-eqz p5, :cond_2

    .line 1923
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 1927
    .local v8, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    move-object v0, v1

    .line 1928
    .local v0, packageInfo:Landroid/app/LoadedApk;
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1935
    :cond_0
    new-instance v0, Landroid/app/LoadedApk;

    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    if-eqz p5, :cond_4

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/4 v7, 0x1

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Landroid/app/ActivityThread;Ljava/lang/ClassLoader;ZZ)V

    .line 1939
    .restart local v0       #packageInfo:Landroid/app/LoadedApk;
    if-eqz p5, :cond_5

    .line 1940
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    :cond_1
    :goto_3
    monitor-exit v9

    return-object v0

    .line 1925
    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    .end local v8           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .restart local v8       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    .line 1927
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1935
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 1943
    .restart local v0       #packageInfo:Landroid/app/LoadedApk;
    :cond_5
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1948
    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    .end local v8           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 1670
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    .line 1672
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 1678
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 1674
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1676
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 1678
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    goto :goto_0
.end method

.method private getPackageResDir(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"
    .parameter "compat"

    .prologue
    .line 4219
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4220
    .local v0, pi:Landroid/app/LoadedApk;
    if-nez v0, :cond_0

    .line 4221
    const/4 v1, 0x0

    .line 4223
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getStackTraceLocked()Ljava/lang/String;
    .locals 7

    .prologue
    .line 5663
    const/4 v4, -0x1

    .local v4, startLine:I
    const/4 v2, -0x1

    .line 5665
    .local v2, lastLine:I
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 5666
    .local v0, elem:[Ljava/lang/StackTraceElement;
    array-length v5, v0

    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 5667
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.content.ContentResolver"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 5668
    move v4, v1

    .line 5672
    :cond_0
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 5673
    const/4 v4, 0x0

    .line 5674
    array-length v2, v0

    .line 5678
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5679
    .local v3, sb:Ljava/lang/StringBuilder;
    move v1, v4

    :goto_2
    if-ge v1, v2, :cond_3

    .line 5680
    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5679
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5666
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5676
    :cond_2
    array-length v5, v0

    add-int/lit8 v6, v4, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 5682
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_3
    return-object v5

    :cond_4
    const-string v5, ""

    goto :goto_3
.end method

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 26
    .parameter "data"

    .prologue
    .line 4572
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 4573
    new-instance v2, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 4574
    new-instance v2, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 4576
    new-instance v2, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v2}, Landroid/app/ActivityThread$Profiler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 4577
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfileFile:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 4578
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 4579
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/app/ActivityThread$AppBindData;->initAutoStopProfiler:Z

    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 4586
    sget-boolean v2, Landroid/app/ActivityThread;->BUILD_TEST_KEY:Z

    if-eqz v2, :cond_0

    .line 4587
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    const-string/jumbo v4, "profile.launch"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4588
    const/high16 v2, 0x100

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/Debug;->startMethodTracingDdms(II)V

    .line 4589
    const/4 v2, 0x1

    new-array v0, v2, [B

    move-object/from16 v23, v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-byte v4, v23, v2

    .line 4590
    .local v23, reply:[B
    new-instance v2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    const/4 v5, 0x0

    move-object/from16 v0, v23

    array-length v7, v0

    move-object/from16 v0, v23

    invoke-direct {v2, v4, v0, v5, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    invoke-static {v2}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 4599
    .end local v23           #reply:[B
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 4600
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v2}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 4602
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    if-eqz v2, :cond_1

    .line 4606
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    .line 4607
    .local v15, display:Landroid/view/Display;
    invoke-static {v15}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4608
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/HardwareRenderer;->disable(Z)V

    .line 4612
    .end local v15           #display:Landroid/view/Display;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 4613
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 4620
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xc

    if-gt v2, v4, :cond_3

    .line 4621
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 4630
    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 4635
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 4642
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/app/ActivityThread;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 4643
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->applyCompatConfiguration()Landroid/content/res/Configuration;

    .line 4645
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 4647
    new-instance v11, Landroid/app/ContextImpl;

    invoke-direct {v11}, Landroid/app/ContextImpl;-><init>()V

    .line 4648
    .local v11, appContext:Landroid/app/ContextImpl;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v11, v2, v4, v0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 4649
    invoke-virtual {v11}, Landroid/app/ContextImpl;->getCacheDir()Ljava/io/File;

    move-result-object v13

    .line 4652
    .local v13, cacheDir:Ljava/io/File;
    if-nez v13, :cond_4

    .line 4653
    const-string v2, "ActivityThread"

    const-string v4, "coud not create cacheDir, it may due to /data space full"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4657
    :cond_4
    const-string v4, "java.io.tmpdir"

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v4, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4660
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V

    .line 4666
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_5

    .line 4669
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    .line 4679
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x9

    if-le v2, v4, :cond_6

    .line 4680
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnNetwork()V

    .line 4686
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_7

    .line 4688
    const/16 v2, 0xa0

    invoke-static {v2}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 4691
    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-eqz v2, :cond_8

    .line 4693
    const/16 v2, 0x1fa4

    invoke-static {v2}, Landroid/os/Debug;->changeDebugPort(I)V

    .line 4694
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    .line 4695
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is waiting for the debugger on port 8100..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4698
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v19

    .line 4700
    .local v19, mgr:Landroid/app/IActivityManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    .line 4704
    :goto_1
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 4707
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    .line 4718
    .end local v19           #mgr:Landroid/app/IActivityManager;
    :cond_8
    :goto_2
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->enableOpenGlTrace:Z

    if-eqz v2, :cond_9

    .line 4719
    invoke-static {}, Landroid/opengl/GLUtils;->enableTracing()V

    .line 4725
    :cond_9
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 4726
    .local v12, b:Landroid/os/IBinder;
    if-eqz v12, :cond_a

    .line 4730
    invoke-static {v12}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v25

    .line 4732
    .local v25, service:Landroid/net/IConnectivityManager;
    :try_start_2
    invoke-interface/range {v25 .. v25}, Landroid/net/IConnectivityManager;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v22

    .line 4733
    .local v22, proxyProperties:Landroid/net/ProxyProperties;
    invoke-static/range {v22 .. v22}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyProperties;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4737
    .end local v22           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v25           #service:Landroid/net/IConnectivityManager;
    :cond_a
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    if-eqz v2, :cond_12

    .line 4738
    const/16 v18, 0x0

    .line 4740
    .local v18, ii:Landroid/content/pm/InstrumentationInfo;
    :try_start_3
    invoke-virtual {v11}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v18

    .line 4744
    :goto_4
    if-nez v18, :cond_d

    .line 4745
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find instrumentation info for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4657
    .end local v12           #b:Landroid/os/IBinder;
    .end local v18           #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_b
    const-string v2, "."

    goto/16 :goto_0

    .line 4712
    :cond_c
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " can be debugged on port 8100..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4750
    .restart local v12       #b:Landroid/os/IBinder;
    .restart local v18       #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_d
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 4751
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationAppLibraryDir:Ljava/lang/String;

    .line 4752
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 4753
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 4754
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedAppLibraryDir:Ljava/lang/String;

    .line 4756
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 4757
    .local v3, instrApp:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4758
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 4759
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 4760
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 4761
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 4762
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v11}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v20

    .line 4764
    .local v20, pi:Landroid/app/LoadedApk;
    new-instance v6, Landroid/app/ContextImpl;

    invoke-direct {v6}, Landroid/app/ContextImpl;-><init>()V

    .line 4765
    .local v6, instrContext:Landroid/app/ContextImpl;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v6, v0, v2, v1}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 4768
    :try_start_4
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 4769
    .local v14, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 4777
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    move-object/from16 v5, p0

    move-object v7, v11

    invoke-virtual/range {v4 .. v9}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;)V

    .line 4780
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v2, :cond_e

    move-object/from16 v0, v18

    iget-boolean v2, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_e

    .line 4782
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 4783
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4784
    .local v17, file:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 4785
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x80

    invoke-static {v2, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 4792
    .end local v3           #instrApp:Landroid/content/pm/ApplicationInfo;
    .end local v6           #instrContext:Landroid/app/ContextImpl;
    .end local v14           #cl:Ljava/lang/ClassLoader;
    .end local v17           #file:Ljava/io/File;
    .end local v18           #ii:Landroid/content/pm/InstrumentationInfo;
    .end local v20           #pi:Landroid/app/LoadedApk;
    :cond_e
    :goto_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v2, v4

    if-eqz v2, :cond_f

    .line 4793
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 4799
    :cond_f
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v24

    .line 4803
    .local v24, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v10

    .line 4804
    .local v10, app:Landroid/app/Application;
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 4808
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    if-nez v2, :cond_10

    .line 4809
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    move-object/from16 v21, v0

    .line 4810
    .local v21, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v21, :cond_10

    .line 4811
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v10, v1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 4814
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v4, 0x84

    const-wide/16 v7, 0x2710

    invoke-virtual {v2, v4, v7, v8}, Landroid/app/ActivityThread$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4821
    .end local v21           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :cond_10
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 4830
    :try_start_7
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isHtcApp()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4833
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v10}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 4842
    :cond_11
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4844
    return-void

    .line 4771
    .end local v10           #app:Landroid/app/Application;
    .end local v24           #savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    .restart local v3       #instrApp:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #instrContext:Landroid/app/ContextImpl;
    .restart local v18       #ii:Landroid/content/pm/InstrumentationInfo;
    .restart local v20       #pi:Landroid/app/LoadedApk;
    :catch_0
    move-exception v16

    .line 4772
    .local v16, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate instrumentation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4789
    .end local v3           #instrApp:Landroid/content/pm/ApplicationInfo;
    .end local v6           #instrContext:Landroid/app/ContextImpl;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v18           #ii:Landroid/content/pm/InstrumentationInfo;
    .end local v20           #pi:Landroid/app/LoadedApk;
    :cond_12
    new-instance v2, Landroid/app/Instrumentation;

    invoke-direct {v2}, Landroid/app/Instrumentation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    goto/16 :goto_5

    .line 4823
    .restart local v10       #app:Landroid/app/Application;
    .restart local v24       #savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :catch_1
    move-exception v16

    .line 4824
    .restart local v16       #e:Ljava/lang/Exception;
    :try_start_9
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onCreate() of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4842
    .end local v10           #app:Landroid/app/Application;
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2

    .line 4834
    .restart local v10       #app:Landroid/app/Application;
    :catch_2
    move-exception v16

    .line 4835
    .restart local v16       #e:Ljava/lang/Exception;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v16

    invoke-virtual {v2, v10, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 4836
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4742
    .end local v10           #app:Landroid/app/Application;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v24           #savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    .restart local v18       #ii:Landroid/content/pm/InstrumentationInfo;
    :catch_3
    move-exception v2

    goto/16 :goto_4

    .line 4734
    .end local v18           #ii:Landroid/content/pm/InstrumentationInfo;
    .restart local v25       #service:Landroid/net/IConnectivityManager;
    :catch_4
    move-exception v2

    goto/16 :goto_3

    .line 4708
    .end local v12           #b:Landroid/os/IBinder;
    .end local v25           #service:Landroid/net/IConnectivityManager;
    .restart local v19       #mgr:Landroid/app/IActivityManager;
    :catch_5
    move-exception v2

    goto/16 :goto_2

    .line 4701
    :catch_6
    move-exception v2

    goto/16 :goto_1
.end method

.method private handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 11
    .parameter "data"

    .prologue
    .line 2771
    iget-object v6, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 2774
    .local v3, s:Landroid/app/Service;
    if-eqz v3, :cond_2

    .line 2776
    :try_start_0
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2778
    :try_start_1
    iget-boolean v6, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v6, :cond_3

    .line 2780
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v2

    .line 2781
    .local v2, performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2782
    .local v4, startTime:J
    if-lez v2, :cond_0

    .line 2783
    const-string v6, "Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onReBind"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_0
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 2787
    .local v0, binder:Landroid/os/IBinder;
    if-lez v2, :cond_1

    .line 2788
    const-string v6, "Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onBind, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v8, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v6, v7, v8, v0}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 2807
    .end local v0           #binder:Landroid/os/IBinder;
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 2818
    .end local v2           #performanceFlag:I
    .end local v4           #startTime:J
    :cond_2
    :goto_1
    return-void

    .line 2794
    :cond_3
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v2

    .line 2795
    .restart local v2       #performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2796
    .restart local v4       #startTime:J
    if-lez v2, :cond_4

    .line 2797
    const-string v6, "Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onBind"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    :cond_4
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 2801
    if-lez v2, :cond_5

    .line 2802
    const-string v6, "Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onBind, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    :cond_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2808
    .end local v2           #performanceFlag:I
    .end local v4           #startTime:J
    :catch_0
    move-exception v6

    goto :goto_1

    .line 2810
    :catch_1
    move-exception v1

    .line 2811
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v6, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2812
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to bind to service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private final handleChangeTopApp(I)V
    .locals 4
    .parameter "isTopApp"

    .prologue
    const/4 v1, 0x1

    .line 5517
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_1

    .line 5529
    sput-boolean v1, Landroid/app/ActivityThread;->sIsTopApp:Z

    .line 5530
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5531
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    sget-object v1, Landroid/app/ActivityThread;->sForceGcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5549
    :cond_0
    :goto_0
    return-void

    .line 5544
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityThread;->sIsTopApp:Z

    .line 5545
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5546
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    sget-object v1, Landroid/app/ActivityThread;->sForceGcRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityThread$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 16
    .parameter "data"

    .prologue
    .line 2607
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2610
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v7

    .line 2611
    .local v7, packageInfo:Landroid/app/LoadedApk;
    iget-object v8, v7, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 2612
    .local v8, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 2613
    const-string v12, "ActivityThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BackupAgent   for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " already exists"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    :goto_0
    return-void

    .line 2618
    :cond_0
    const/4 v1, 0x0

    .line 2619
    .local v1, agent:Landroid/app/backup/BackupAgent;
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v12, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2622
    .local v4, classname:Ljava/lang/String;
    if-nez v4, :cond_2

    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 2624
    :cond_1
    const-string v4, "android.app.backup.FullBackupAgent"

    .line 2628
    :cond_2
    const/4 v2, 0x0

    .line 2632
    .local v2, binder:Landroid/os/IBinder;
    :try_start_0
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 2633
    .local v3, cl:Ljava/lang/ClassLoader;
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/app/backup/BackupAgent;

    move-object v1, v0

    .line 2636
    new-instance v5, Landroid/app/ContextImpl;

    invoke-direct {v5}, Landroid/app/ContextImpl;-><init>()V

    .line 2637
    .local v5, context:Landroid/app/ContextImpl;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v5, v7, v12, v0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2638
    invoke-virtual {v5, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 2639
    invoke-virtual {v1, v5}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 2642
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v9

    .line 2643
    .local v9, performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2644
    .local v10, startTime:J
    if-lez v9, :cond_3

    .line 2645
    const-string v12, "Performance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ">>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " onCreate"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_3
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 2649
    if-lez v9, :cond_4

    .line 2650
    const-string v12, "Performance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<<"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " onCreate, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2654
    if-lez v9, :cond_5

    .line 2655
    const-string v12, "Performance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ">>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " onBind"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :cond_5
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v2

    .line 2659
    if-lez v9, :cond_6

    .line 2660
    const-string v12, "Performance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<<"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " onBind, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v12, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2676
    .end local v3           #cl:Ljava/lang/ClassLoader;
    .end local v5           #context:Landroid/app/ContextImpl;
    .end local v9           #performanceFlag:I
    .end local v10           #startTime:J
    :cond_7
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    invoke-interface {v12, v8, v2}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 2677
    :catch_0
    move-exception v12

    goto/16 :goto_0

    .line 2663
    :catch_1
    move-exception v6

    .line 2666
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    const-string v12, "ActivityThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Agent threw during creation: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_7

    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_7

    .line 2669
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2680
    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 2681
    .restart local v6       #e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to create BackupAgent "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
.end method

.method private handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 16
    .parameter "data"

    .prologue
    .line 2709
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2711
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v10

    .line 2713
    .local v10, packageInfo:Landroid/app/LoadedApk;
    const/4 v1, 0x0

    .line 2715
    .local v1, service:Landroid/app/Service;
    :try_start_0
    invoke-virtual {v10}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 2716
    .local v8, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/Service;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2728
    .end local v8           #cl:Ljava/lang/ClassLoader;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/app/ContextImpl;

    invoke-direct {v2}, Landroid/app/ContextImpl;-><init>()V

    .line 2729
    .local v2, context:Landroid/app/ContextImpl;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v10, v3, v0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2731
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v10, v3, v4}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v6

    .line 2732
    .local v6, app:Landroid/app/Application;
    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 2733
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 2736
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v11

    .line 2737
    .local v11, performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2738
    .local v12, startTime:J
    if-lez v11, :cond_1

    .line 2739
    const-string v3, "Performance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onCreate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    :cond_1
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 2743
    if-lez v11, :cond_2

    .line 2744
    const-string v3, "Performance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onCreate, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2749
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-static {v1, v3, v4, v5}, Lcom/htc/autotest/Recorder;->startMonitor(Landroid/content/Context;Landroid/os/MessageQueue;Landroid/os/Handler;Landroid/app/Instrumentation;)V

    .line 2754
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2756
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    invoke-interface {v3, v4, v5, v7, v14}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2768
    .end local v2           #context:Landroid/app/ContextImpl;
    .end local v6           #app:Landroid/app/Application;
    .end local v11           #performanceFlag:I
    .end local v12           #startTime:J
    :cond_4
    :goto_0
    return-void

    .line 2717
    :catch_0
    move-exception v9

    .line 2718
    .local v9, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v9}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2719
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2761
    .end local v9           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 2762
    .restart local v9       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v9}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2763
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2758
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v2       #context:Landroid/app/ContextImpl;
    .restart local v6       #app:Landroid/app/Application;
    .restart local v11       #performanceFlag:I
    .restart local v12       #startTime:J
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    .locals 8
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"
    .parameter "getNonConfigInstance"

    .prologue
    .line 3815
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 3817
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_5

    .line 3818
    invoke-static {v1}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 3819
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 3820
    .local v3, wm:Landroid/view/WindowManager;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3821
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 3822
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v5, :cond_0

    .line 3823
    iget v5, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3825
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 3826
    .local v4, wtoken:Landroid/os/IBinder;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v5, :cond_1

    .line 3827
    iget-boolean v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-eqz v5, :cond_7

    .line 3830
    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    .line 3831
    iput-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 3836
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    if-nez v5, :cond_2

    .line 3837
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, v4, v6, v7}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3840
    :cond_2
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3842
    .end local v4           #wtoken:Landroid/os/IBinder;
    :cond_3
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    if-nez v5, :cond_4

    .line 3849
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, p1, v6, v7}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3857
    :cond_4
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 3858
    .local v0, c:Landroid/content/Context;
    instance-of v5, v0, Landroid/app/ContextImpl;

    if-eqz v5, :cond_5

    .line 3859
    check-cast v0, Landroid/app/ContextImpl;

    .end local v0           #c:Landroid/content/Context;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Activity"

    invoke-virtual {v0, v5, v6}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 3863
    .end local v2           #v:Landroid/view/View;
    .end local v3           #wm:Landroid/view/WindowManager;
    :cond_5
    if-eqz p2, :cond_6

    .line 3865
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3870
    :cond_6
    :goto_1
    return-void

    .line 3833
    .restart local v2       #v:Landroid/view/View;
    .restart local v3       #wm:Landroid/view/WindowManager;
    .restart local v4       #wtoken:Landroid/os/IBinder;
    :cond_7
    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 3866
    .end local v2           #v:Landroid/view/View;
    .end local v3           #wm:Landroid/view/WindowManager;
    .end local v4           #wtoken:Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 2690
    iget-object v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    .line 2691
    .local v2, packageInfo:Landroid/app/LoadedApk;
    iget-object v3, v2, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 2692
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/backup/BackupAgent;

    .line 2693
    .local v0, agent:Landroid/app/backup/BackupAgent;
    if-eqz v0, :cond_0

    .line 2695
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2700
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2704
    :goto_1
    return-void

    .line 2696
    :catch_0
    move-exception v1

    .line 2697
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2702
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to destroy unknown backup agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    .line 2872
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2874
    .local v0, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2875
    .local v2, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 2876
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2877
    .local v1, pw:Ljava/io/PrintWriter;
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2878
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2881
    .end local v1           #pw:Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2882
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2884
    return-void

    .line 2881
    .end local v2           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2882
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2881
    throw v3
.end method

.method static final handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V
    .locals 4
    .parameter "managed"
    .parameter "dhd"

    .prologue
    .line 4459
    if-eqz p0, :cond_0

    .line 4461
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4467
    :try_start_1
    iget-object v1, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4475
    :goto_0
    return-void

    .line 4462
    :catch_0
    move-exception v0

    .line 4463
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Managed heap dump failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4467
    :try_start_3
    iget-object v1, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 4468
    :catch_1
    move-exception v0

    .line 4469
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4466
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 4467
    :try_start_4
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 4466
    :goto_2
    throw v1

    .line 4473
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 4468
    :catch_2
    move-exception v0

    .line 4469
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4468
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 4469
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    goto :goto_1
.end method

.method private handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 2887
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2889
    .local v0, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 2890
    .local v2, r:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v3, :cond_0

    .line 2891
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2892
    .local v1, pw:Ljava/io/PrintWriter;
    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2893
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2896
    .end local v1           #pw:Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2897
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2899
    return-void

    .line 2896
    .end local v2           #r:Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2897
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2896
    throw v3
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 2857
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2859
    .local v0, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2860
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 2861
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2862
    .local v1, pw:Ljava/io/PrintWriter;
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2863
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2866
    .end local v1           #pw:Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2867
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2869
    return-void

    .line 2866
    .end local v2           #s:Landroid/app/Service;
    :catchall_0
    move-exception v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2867
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2866
    throw v3
.end method

.method private handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 10
    .parameter "r"
    .parameter "customIntent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2378
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2380
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_0

    .line 2381
    iget-object v5, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFile:Ljava/lang/String;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5, v6, v7}, Landroid/app/ActivityThread$Profiler;->setProfiler(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 2382
    iget-object v5, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v5}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 2383
    iget-object v5, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->autoStopProfiler:Z

    iput-boolean v6, v5, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 2387
    :cond_0
    invoke-virtual {p0, v9, v9}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 2391
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 2393
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_5

    .line 2394
    new-instance v5, Landroid/content/res/Configuration;

    iget-object v6, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 2395
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2396
    .local v4, oldState:Landroid/os/Bundle;
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-boolean v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    invoke-virtual {p0, v5, v8, v6}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZ)V

    .line 2398
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mFinished:Z

    if-nez v5, :cond_4

    iget-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    if-eqz v5, :cond_4

    .line 2409
    :try_start_0
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/app/Activity;->mCalled:Z

    .line 2410
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2413
    iget-object v5, p0, Landroid/app/ActivityThread;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/callbacks/ActivityThreadCallbacks;

    .line 2414
    .local v1, cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v5}, Lcom/htc/callbacks/ActivityThreadCallbacks;->afterCallActivityOnPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2434
    .end local v1           #cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 2435
    .local v2, e:Landroid/app/SuperNotCalledException;
    throw v2

    .line 2425
    .end local v2           #e:Landroid/app/SuperNotCalledException;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2426
    iput-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2428
    :cond_2
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mCalled:Z

    if-nez v5, :cond_3

    .line 2429
    new-instance v5, Landroid/app/SuperNotCalledException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " did not call through to super.onPause()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2437
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 2438
    .local v2, e:Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v6, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2439
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to pause activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2445
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2457
    .end local v4           #oldState:Landroid/os/Bundle;
    :cond_4
    :goto_1
    return-void

    .line 2451
    :cond_5
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 2453
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method private handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 2505
    iget-object v0, p1, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    iget-object v1, p1, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2506
    return-void
.end method

.method private handlePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 4
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 3234
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3235
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    sget-wide v2, Landroid/app/ActivityThread;->DISABLE_GC_THRESHOLD:J

    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->disableGc(J)V

    .line 3238
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3239
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_3

    .line 3241
    if-eqz p3, :cond_1

    .line 3242
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 3245
    :cond_1
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, p4

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3246
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    .line 3249
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3250
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 3255
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3259
    :cond_3
    :goto_0
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3260
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->enableGc()V

    .line 3263
    :cond_4
    return-void

    .line 3256
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 16
    .parameter "data"

    .prologue
    .line 2522
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2524
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2526
    .local v3, component:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v7

    .line 2529
    .local v7, packageInfo:Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 2533
    .local v6, mgr:Landroid/app/IActivityManager;
    :try_start_0
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2534
    .local v2, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2535
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2536
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2547
    .local v9, receiver:Landroid/content/BroadcastReceiver;
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v7, v12, v13}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v1

    .line 2557
    .local v1, app:Landroid/app/Application;
    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/ContextImpl;

    .line 2558
    .local v4, context:Landroid/app/ContextImpl;
    sget-object v12, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v12, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2559
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 2561
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v8

    .line 2562
    .local v8, performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2563
    .local v10, startTime:J
    if-lez v8, :cond_0

    .line 2564
    const-string v12, "Performance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ">>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " onReceive:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", tid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    :cond_0
    invoke-virtual {v4}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v12, v13}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2569
    if-lez v8, :cond_1

    .line 2570
    const-string v12, "Performance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<<"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " onReceive, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2582
    :cond_1
    sget-object v12, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    .end local v1           #app:Landroid/app/Application;
    .end local v4           #context:Landroid/app/ContextImpl;
    .end local v8           #performanceFlag:I
    .end local v10           #startTime:J
    :goto_0
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2585
    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 2586
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    .line 2588
    sget-boolean v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v12, :cond_2

    .line 2590
    :try_start_2
    const-string v12, "ActivityThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "called finishReceiver() from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v14}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2600
    :cond_2
    :goto_1
    return-void

    .line 2537
    .end local v2           #cl:Ljava/lang/ClassLoader;
    .end local v9           #receiver:Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v5

    .line 2540
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 2541
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to instantiate receiver "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 2572
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #cl:Ljava/lang/ClassLoader;
    .restart local v9       #receiver:Landroid/content/BroadcastReceiver;
    :catch_1
    move-exception v5

    .line 2575
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 2576
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v12, v9, v5}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 2577
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to start receiver "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2582
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    sget-object v13, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v12

    .line 2593
    :catch_2
    move-exception v5

    .line 2594
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v12, "ActivityThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "called finishReceiver() from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " but app thread has some problem"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2582
    :cond_3
    sget-object v12, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    goto/16 :goto_0
.end method

.method private handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 13
    .parameter "tmp"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 3931
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3933
    const/4 v1, 0x0

    .line 3934
    .local v1, changedConfig:Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .line 3939
    .local v2, configChanges:I
    iget-object v8, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v8

    .line 3940
    :try_start_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3941
    .local v0, N:I
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 3942
    .local v6, token:Landroid/os/IBinder;
    const/4 p1, 0x0

    .line 3943
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 3944
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3945
    .local v5, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v7, v6, :cond_0

    .line 3946
    move-object p1, v5

    .line 3947
    iget v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v2, v7

    .line 3948
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3949
    add-int/lit8 v4, v4, -0x1

    .line 3950
    add-int/lit8 v0, v0, -0x1

    .line 3943
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3954
    .end local v5           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    if-nez p1, :cond_3

    .line 3956
    monitor-exit v8

    .line 4037
    :cond_2
    :goto_1
    return-void

    .line 3963
    :cond_3
    iget-object v7, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_4

    .line 3964
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3965
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3967
    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3969
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_7

    .line 3973
    iget-object v7, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_5

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v7

    if-eqz v7, :cond_7

    .line 3976
    :cond_5
    if-eqz v1, :cond_6

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3978
    :cond_6
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 3987
    :cond_7
    if-eqz v1, :cond_8

    .line 3988
    invoke-virtual {p0, v1, v10}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 3991
    :cond_8
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3993
    .restart local v5       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v5, :cond_2

    .line 3997
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v8, v2

    iput v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3998
    iget-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 3999
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v7, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 4001
    .local v3, currentIntent:Landroid/content/Intent;
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v12, v7, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 4004
    iget-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v7, :cond_9

    .line 4005
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v8

    invoke-virtual {p0, v7, v11, v8}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    .line 4007
    :cond_9
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v7, :cond_a

    iget-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v7, :cond_a

    invoke-virtual {v5}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v7

    if-nez v7, :cond_a

    .line 4008
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 4009
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 4010
    iget-object v7, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v9}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4013
    :cond_a
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-direct {p0, v7, v11, v2, v12}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    .line 4015
    iput-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4016
    iput-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 4017
    iput-boolean v11, v5, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 4018
    iput-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4020
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v7, :cond_b

    .line 4021
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v7, :cond_d

    .line 4022
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 4027
    :cond_b
    :goto_2
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v7, :cond_c

    .line 4028
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v7, :cond_e

    .line 4029
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 4034
    :cond_c
    :goto_3
    iget-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 4036
    invoke-direct {p0, v5, v3}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3967
    .end local v0           #N:I
    .end local v3           #currentIntent:Landroid/content/Intent;
    .end local v4           #i:I
    .end local v5           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v6           #token:Landroid/os/IBinder;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 4024
    .restart local v0       #N:I
    .restart local v3       #currentIntent:Landroid/content/Intent;
    .restart local v4       #i:I
    .restart local v5       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v6       #token:Landroid/os/IBinder;
    :cond_d
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 4031
    :cond_e
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method private handleReportAppTransitionEnd(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 5554
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5555
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v1, :cond_1

    .line 5556
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 5557
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleReportAppTransitionEnd: no activity for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5566
    :cond_0
    :goto_0
    return-void

    .line 5560
    :cond_1
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5561
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 5562
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    .line 5563
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleReportAppTransitionEnd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5564
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->performReportAppTransitionEnd()V

    goto :goto_0
.end method

.method private handleRequestThumbnail(Landroid/os/IBinder;)V
    .locals 7
    .parameter "token"

    .prologue
    .line 4040
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4041
    .local v2, r:Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-direct {p0, v2}, Landroid/app/ActivityThread;->createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4042
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 4044
    .local v0, description:Ljava/lang/CharSequence;
    :try_start_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4055
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v3, v0}, Landroid/app/IActivityManager;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4059
    :goto_0
    return-void

    .line 4045
    :catch_0
    move-exception v1

    .line 4046
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4047
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create description of activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4057
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    .locals 9
    .parameter "res"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3636
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3638
    .local v3, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v3, :cond_4

    .line 3639
    iget-boolean v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v7, :cond_1

    move v4, v5

    .line 3640
    .local v4, resumed:Z
    :goto_0
    iget-object v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v7, v7, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_0

    iget-object v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v7, v7, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-boolean v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 3645
    invoke-direct {p0, v3, v5}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 3647
    :cond_0
    if-eqz v4, :cond_3

    .line 3650
    :try_start_0
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/app/Activity;->mCalled:Z

    .line 3651
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/app/Activity;->mTemporaryPause:Z

    .line 3652
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v7}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3655
    iget-object v5, p0, Landroid/app/ActivityThread;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/callbacks/ActivityThreadCallbacks;

    .line 3656
    .local v0, cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Lcom/htc/callbacks/ActivityThreadCallbacks;->afterCallActivityOnPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3665
    .end local v0           #cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 3666
    .local v1, e:Landroid/app/SuperNotCalledException;
    throw v1

    .end local v1           #e:Landroid/app/SuperNotCalledException;
    .end local v4           #resumed:Z
    :cond_1
    move v4, v6

    .line 3639
    goto :goto_0

    .line 3660
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #resumed:Z
    :cond_2
    :try_start_1
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mCalled:Z

    if-nez v5, :cond_3

    .line 3661
    new-instance v5, Landroid/app/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onPause()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3667
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .line 3668
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v7, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3669
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to pause activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3676
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v5, p1, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    invoke-direct {p0, v3, v5}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 3677
    if-eqz v4, :cond_4

    .line 3678
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->performResume()V

    .line 3679
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v6, v5, Landroid/app/Activity;->mTemporaryPause:Z

    .line 3682
    .end local v4           #resumed:Z
    :cond_4
    return-void
.end method

.method private handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 10
    .parameter "data"

    .prologue
    .line 2902
    iget-object v6, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 2903
    .local v3, s:Landroid/app/Service;
    if-eqz v3, :cond_3

    .line 2905
    :try_start_0
    iget-object v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 2906
    iget-object v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2909
    :cond_0
    iget-boolean v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    if-nez v6, :cond_4

    .line 2911
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v1

    .line 2912
    .local v1, performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2913
    .local v4, startTime:J
    if-lez v1, :cond_1

    .line 2914
    const-string v6, "Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onStartCommand:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    :cond_1
    iget-object v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v7, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v8, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v3, v6, v7, v8}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .line 2918
    .local v2, res:I
    if-lez v1, :cond_2

    .line 2919
    const-string v6, "Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onStartCommand, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    .end local v1           #performanceFlag:I
    .end local v4           #startTime:J
    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2929
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    const/4 v8, 0x1

    iget v9, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-interface {v6, v7, v8, v9, v2}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2934
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 2943
    .end local v2           #res:I
    :cond_3
    return-void

    .line 2922
    :cond_4
    iget-object v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2923
    const/16 v2, 0x3e8

    .restart local v2       #res:I
    goto :goto_0

    .line 2935
    .end local v2           #res:I
    :catch_0
    move-exception v0

    .line 2936
    .local v0, e:Ljava/lang/Exception;
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v6, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2937
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to start service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2931
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #res:I
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private handleSetCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .parameter "coreSettings"

    .prologue
    .line 3594
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 3595
    :try_start_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 3596
    monitor-exit v1

    .line 3597
    return-void

    .line 3596
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSleeping(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "sleeping"

    .prologue
    .line 3552
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3554
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v1, :cond_1

    .line 3555
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSleeping: no activity for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    :cond_0
    :goto_0
    return-void

    .line 3559
    :cond_1
    if-eqz p2, :cond_5

    .line 3560
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3563
    :try_start_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3572
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3576
    :cond_3
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3577
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 3582
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->activitySlept(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3583
    :catch_0
    move-exception v2

    goto :goto_0

    .line 3564
    :catch_1
    move-exception v0

    .line 3565
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3566
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3586
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v2, :cond_0

    .line 3587
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performRestart()V

    .line 3588
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_0
.end method

.method private handleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 4
    .parameter "token"
    .parameter "show"
    .parameter "configChanges"

    .prologue
    .line 3491
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3492
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3494
    new-instance v0, Landroid/app/ActivityThread$StopInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/app/ActivityThread$StopInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 3495
    .local v0, info:Landroid/app/ActivityThread$StopInfo;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, p2, v2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    .line 3501
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 3504
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3505
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 3513
    :cond_0
    iput-object v1, v0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3514
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iput-object v2, v0, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    .line 3515
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 3516
    return-void
.end method

.method private handleStopService(Landroid/os/IBinder;)V
    .locals 8
    .parameter "token"

    .prologue
    .line 2946
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2947
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_1

    .line 2950
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V

    .line 2951
    invoke-virtual {v2}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2952
    .local v0, context:Landroid/content/Context;
    instance-of v4, v0, Landroid/app/ContextImpl;

    if-eqz v4, :cond_0

    .line 2953
    invoke-virtual {v2}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2954
    .local v3, who:Ljava/lang/String;
    check-cast v0, Landroid/app/ContextImpl;

    .end local v0           #context:Landroid/content/Context;
    const-string v4, "Service"

    invoke-virtual {v0, v3, v4}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2957
    .end local v3           #who:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2960
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, p1, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2974
    :cond_1
    :goto_0
    return-void

    .line 2965
    :catch_0
    move-exception v1

    .line 2966
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2967
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to stop service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2962
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 11
    .parameter "data"

    .prologue
    .line 2821
    iget-object v6, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 2822
    .local v3, s:Landroid/app/Service;
    if-eqz v3, :cond_2

    .line 2824
    :try_start_0
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2826
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v2

    .line 2827
    .local v2, performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2828
    .local v4, startTime:J
    if-lez v2, :cond_0

    .line 2829
    const-string v6, "Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onUnBind"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_0
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    .line 2833
    .local v0, doRebind:Z
    if-lez v2, :cond_1

    .line 2834
    const-string v6, "Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onUnBind, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2837
    :cond_1
    if-eqz v0, :cond_3

    .line 2838
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v8, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v6, v7, v8, v0}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 2854
    .end local v0           #doRebind:Z
    .end local v2           #performanceFlag:I
    .end local v4           #startTime:J
    :cond_2
    :goto_0
    return-void

    .line 2841
    .restart local v0       #doRebind:Z
    .restart local v2       #performanceFlag:I
    .restart local v4       #startTime:J
    :cond_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2844
    :catch_0
    move-exception v6

    goto :goto_0

    .line 2846
    .end local v0           #doRebind:Z
    .end local v2           #performanceFlag:I
    .end local v4           #startTime:J
    :catch_1
    move-exception v1

    .line 2847
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v6, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2848
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to unbind to service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3600
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 3601
    .local v0, apk:Landroid/app/LoadedApk;
    if-eqz v0, :cond_0

    .line 3602
    iget-object v1, v0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/view/CompatibilityInfoHolder;->set(Landroid/content/res/CompatibilityInfo;)V

    .line 3604
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 3605
    if-eqz v0, :cond_1

    .line 3606
    iget-object v1, v0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/view/CompatibilityInfoHolder;->set(Landroid/content/res/CompatibilityInfo;)V

    .line 3608
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 3609
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    .line 3610
    return-void
.end method

.method private handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 4
    .parameter "token"
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 3527
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3529
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_1

    .line 3530
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWindowVisibility: no activity for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    :cond_0
    :goto_0
    return-void

    .line 3534
    :cond_1
    if-nez p2, :cond_3

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v1, :cond_3

    .line 3535
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    .line 3544
    :cond_2
    :goto_1
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3547
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    goto :goto_0

    .line 3536
    :cond_3
    if-eqz p2, :cond_2

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_2

    .line 3539
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3541
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 3542
    iput-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_1
.end method

.method private final incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .locals 9
    .parameter "prc"
    .parameter "stable"

    .prologue
    const/16 v8, 0x83

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4934
    invoke-static {}, Landroid/app/ActivityThread;->debugProviderRef()Z

    move-result v0

    .line 4935
    .local v0, debugProviderRef:Z
    const/4 v1, 0x0

    .line 4936
    .local v1, pName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4937
    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v3, v3, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-nez v3, :cond_4

    const-string v1, ""

    .line 4938
    :goto_0
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incProviderRefLocked stable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; prc.s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; prc.u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; prc.removePending="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4945
    :cond_0
    if-eqz p2, :cond_6

    .line 4946
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 4947
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-ne v3, v6, :cond_3

    .line 4950
    iget-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v3, :cond_5

    .line 4954
    const/4 v2, -0x1

    .line 4957
    .local v2, unstableDelta:I
    if-eqz v0, :cond_1

    .line 4958
    const-string v3, "ActivityThread"

    const-string v4, "incProviderRef: stable snatched provider from the jaws of death"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    :cond_1
    iput-boolean v7, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 4962
    iget-object v3, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v3, v8, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 4968
    :goto_1
    if-eqz v0, :cond_2

    .line 4969
    :try_start_0
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incProviderRef Now stable - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unstableDelta="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4973
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v4, v4, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5012
    .end local v2           #unstableDelta:I
    :cond_3
    :goto_2
    return-void

    .line 4937
    :cond_4
    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v3, v3, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 4964
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #unstableDelta:I
    goto :goto_1

    .line 4980
    .end local v2           #unstableDelta:I
    :cond_6
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 4981
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-ne v3, v6, :cond_3

    .line 4983
    iget-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v3, :cond_8

    .line 4989
    if-eqz v0, :cond_7

    .line 4990
    const-string v3, "ActivityThread"

    const-string v4, "incProviderRef: unstable snatched provider from the jaws of death"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4993
    :cond_7
    iput-boolean v7, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 4994
    iget-object v3, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v3, v8, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_2

    .line 5000
    :cond_8
    if-eqz v0, :cond_9

    .line 5001
    :try_start_1
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incProviderRef: Now unstable - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    :cond_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v4, v4, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 5006
    :catch_0
    move-exception v3

    goto :goto_2

    .line 4975
    .restart local v2       #unstableDelta:I
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    const/4 v5, 0x1

    .line 4862
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4865
    .local v10, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;

    .line 4866
    .local v3, cpi:Landroid/content/pm/ProviderInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4867
    .local v7, buf:Ljava/lang/StringBuilder;
    const-string v0, "Pub "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4868
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4869
    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4870
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4871
    const-string v0, "ActivityThread"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v8

    .line 4874
    .local v8, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v8, :cond_0

    .line 4875
    iput-boolean v5, v8, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 4876
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4881
    .end local v3           #cpi:Landroid/content/pm/ProviderInfo;
    .end local v7           #buf:Ljava/lang/StringBuilder;
    .end local v8           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4885
    :goto_1
    return-void

    .line 4883
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 18
    .parameter "context"
    .parameter "holder"
    .parameter "info"
    .parameter "noisy"
    .parameter "noReleaseNeeded"
    .parameter "stable"

    .prologue
    .line 5252
    const/4 v10, 0x0

    .line 5254
    .local v10, localProvider:Landroid/content/ContentProvider;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v15, :cond_7

    .line 5255
    :cond_0
    if-eqz p4, :cond_1

    .line 5256
    const-string v15, "ActivityThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Loading provider "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5259
    :cond_1
    const/4 v3, 0x0

    .line 5260
    .local v3, c:Landroid/content/Context;
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5261
    .local v2, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 5262
    move-object/from16 v3, p1

    .line 5274
    :goto_0
    if-nez v3, :cond_4

    .line 5275
    const-string v15, "ActivityThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to get context for package "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " while loading content provider "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5279
    const/4 v14, 0x0

    .line 5369
    .end local v2           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #c:Landroid/content/Context;
    :goto_1
    return-object v14

    .line 5263
    .restart local v2       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #c:Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v15}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 5265
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_0

    .line 5268
    :cond_3
    :try_start_0
    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto :goto_0

    .line 5282
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 5283
    .local v4, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Landroid/content/ContentProvider;

    move-object v10, v0

    .line 5285
    invoke-virtual {v10}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v13

    .line 5286
    .local v13, provider:Landroid/content/IContentProvider;
    if-nez v13, :cond_5

    .line 5287
    const-string v15, "ActivityThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to instantiate class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " from sourceDir "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5290
    const/4 v14, 0x0

    goto :goto_1

    .line 5295
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5312
    .end local v2           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #c:Landroid/content/Context;
    .end local v4           #cl:Ljava/lang/ClassLoader;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 5315
    :try_start_2
    invoke-interface {v13}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 5316
    .local v9, jBinder:Landroid/os/IBinder;
    if-eqz v10, :cond_9

    .line 5317
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v6, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5318
    .local v6, cname:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mLocalProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5319
    .local v11, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v11, :cond_8

    .line 5324
    iget-object v13, v11, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 5333
    :goto_3
    iget-object v14, v11, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    .line 5367
    .end local v6           #cname:Landroid/content/ComponentName;
    .end local v11           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    .local v14, retHolder:Landroid/app/IActivityManager$ContentProviderHolder;
    :goto_4
    monitor-exit v16

    goto/16 :goto_1

    .end local v9           #jBinder:Landroid/os/IBinder;
    .end local v14           #retHolder:Landroid/app/IActivityManager$ContentProviderHolder;
    :catchall_0
    move-exception v15

    :goto_5
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    .line 5296
    .end local v13           #provider:Landroid/content/IContentProvider;
    .restart local v2       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #c:Landroid/content/Context;
    :catch_0
    move-exception v7

    .line 5297
    .local v7, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 5298
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to get provider "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 5302
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 5305
    .end local v2           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #c:Landroid/content/Context;
    .end local v7           #e:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .restart local v13       #provider:Landroid/content/IContentProvider;
    goto :goto_2

    .line 5326
    .restart local v6       #cname:Landroid/content/ComponentName;
    .restart local v9       #jBinder:Landroid/os/IBinder;
    .restart local v11       #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_8
    :try_start_3
    new-instance v8, Landroid/app/IActivityManager$ContentProviderHolder;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5327
    .end local p2
    .local v8, holder:Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_4
    iput-object v13, v8, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 5328
    const/4 v15, 0x1

    iput-boolean v15, v8, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 5329
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v8}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v11

    .line 5330
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    invoke-virtual {v15, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5331
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mLocalProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v15, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 p2, v8

    .end local v8           #holder:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local p2
    goto :goto_3

    .line 5335
    .end local v6           #cname:Landroid/content/ComponentName;
    .end local v11           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityThread$ProviderRefCount;

    .line 5336
    .local v12, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v12, :cond_b

    .line 5344
    if-nez p5, :cond_a

    .line 5345
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v12, v1}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5347
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-interface {v15, v0, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 5365
    :cond_a
    :goto_6
    :try_start_7
    iget-object v14, v12, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    .restart local v14       #retHolder:Landroid/app/IActivityManager$ContentProviderHolder;
    goto/16 :goto_4

    .line 5354
    .end local v14           #retHolder:Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v10, v1}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v5

    .line 5356
    .local v5, client:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz p5, :cond_c

    .line 5357
    new-instance v12, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v12           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    const/16 v15, 0x3e8

    const/16 v17, 0x3e8

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-direct {v12, v0, v5, v15, v1}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .line 5363
    .restart local v12       #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v15, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 5359
    :cond_c
    if-eqz p6, :cond_d

    new-instance v12, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v12           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-direct {v12, v0, v5, v15, v1}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .restart local v12       #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :goto_8
    goto :goto_7

    :cond_d
    new-instance v12, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v12           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-direct {v12, v0, v5, v15, v1}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    .line 5367
    .end local v5           #client:Landroid/app/ActivityThread$ProviderClientRecord;
    .end local p2
    .restart local v6       #cname:Landroid/content/ComponentName;
    .restart local v8       #holder:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v11       #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_1
    move-exception v15

    move-object/from16 p2, v8

    .end local v8           #holder:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local p2
    goto/16 :goto_5

    .line 5349
    .end local v6           #cname:Landroid/content/ComponentName;
    .end local v11           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v12       #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catch_1
    move-exception v15

    goto :goto_6

    .line 5270
    .end local v9           #jBinder:Landroid/os/IBinder;
    .end local v12           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    .end local v13           #provider:Landroid/content/IContentProvider;
    .restart local v2       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #c:Landroid/content/Context;
    :catch_2
    move-exception v15

    goto/16 :goto_0
.end method

.method private installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .locals 8
    .parameter "provider"
    .parameter "localProvider"
    .parameter "holder"

    .prologue
    .line 5220
    sget-object v1, Landroid/app/ActivityThread;->PATTERN_SEMICOLON:Ljava/util/regex/Pattern;

    iget-object v3, p3, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 5221
    .local v2, names:[Ljava/lang/String;
    new-instance v0, Landroid/app/ActivityThread$ProviderClientRecord;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)V

    .line 5223
    .local v0, pcr:Landroid/app/ActivityThread$ProviderClientRecord;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v1, v2

    if-ge v7, v1, :cond_1

    .line 5224
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    aget-object v3, v2, v7

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5225
    .local v6, existing:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v6, :cond_0

    .line 5226
    const-string v1, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v4, v4, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already published as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5223
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5229
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    aget-object v3, v2, v7

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5232
    .end local v6           #existing:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_1
    return-object v0
.end method

.method private static isLogProviderEnable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5602
    sget v1, Landroid/app/ActivityThread;->sLogProviderCriteria:I

    if-gez v1, :cond_0

    .line 5603
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileProviderClient()I

    move-result v0

    .line 5604
    .local v0, logCriteria:I
    if-ne v0, v2, :cond_2

    .line 5605
    const-string v1, "com.htc.launcher"

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sput v1, Landroid/app/ActivityThread;->sLogProviderCriteria:I

    .line 5610
    :cond_0
    :goto_1
    sget v1, Landroid/app/ActivityThread;->sLogProviderCriteria:I

    if-lez v1, :cond_3

    :goto_2
    return v2

    :cond_1
    move v1, v3

    .line 5605
    goto :goto_0

    .line 5607
    :cond_2
    sput v0, Landroid/app/ActivityThread;->sLogProviderCriteria:I

    goto :goto_1

    :cond_3
    move v2, v3

    .line 5610
    goto :goto_2
.end method

.method public static isSystemServer()Z
    .locals 1

    .prologue
    .line 5503
    sget-boolean v0, Landroid/app/ActivityThread;->sIsSystemServer:Z

    return v0
.end method

.method public static isTopApp()Z
    .locals 1

    .prologue
    .line 5511
    sget-boolean v0, Landroid/app/ActivityThread;->sIsTopApp:Z

    return v0
.end method

.method private logProviderStackTrace(Ljava/lang/String;Landroid/content/IContentProvider;)V
    .locals 9
    .parameter "name"
    .parameter "provider"

    .prologue
    .line 5573
    if-nez p2, :cond_1

    .line 5598
    :cond_0
    :goto_0
    return-void

    .line 5576
    :cond_1
    invoke-interface {p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5577
    .local v0, jBinder:Landroid/os/IBinder;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderRefCount;

    .line 5578
    .local v2, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v2, :cond_2

    .line 5579
    const-string v6, "Providers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>acquireProvider: name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", provider = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", refcount(s) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", refcount(u) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5586
    :goto_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5587
    .local v4, stackTraceByteStream:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 5588
    .local v5, stackTraceStream:Ljava/io/PrintStream;
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 5589
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5592
    .local v3, stackTrace:Ljava/lang/String;
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5593
    .local v1, lines:[Ljava/lang/String;
    array-length v6, v1

    const/16 v7, 0x8

    if-lt v6, v7, :cond_0

    .line 5594
    const-string v6, "Providers"

    const/4 v7, 0x5

    aget-object v7, v1, v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5595
    const-string v6, "Providers"

    const/4 v7, 0x6

    aget-object v7, v1, v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5596
    const-string v6, "Providers"

    const/4 v7, 0x7

    aget-object v7, v1, v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5582
    .end local v1           #lines:[Ljava/lang/String;
    .end local v3           #stackTrace:Ljava/lang/String;
    .end local v4           #stackTraceByteStream:Ljava/io/ByteArrayOutputStream;
    .end local v5           #stackTraceStream:Ljava/io/PrintStream;
    :cond_2
    const-string v6, "Providers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acquireProvider: name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", provider = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 5469
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 5474
    invoke-static {v2}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 5476
    const-string v1, "<pre-initialized>"

    invoke-static {v1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 5478
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 5479
    sget-object v1, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 5480
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 5483
    :cond_0
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 5484
    .local v0, thread:Landroid/app/ActivityThread;
    invoke-direct {v0, v2}, Landroid/app/ActivityThread;->attach(Z)V

    .line 5486
    invoke-static {}, Landroid/os/AsyncTask;->init()V

    .line 5493
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 5495
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Main thread loop unexpectedly exited"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "cb"
    .parameter "config"

    .prologue
    const/4 v7, 0x0

    .line 4141
    instance-of v5, p0, Landroid/app/Activity;

    if-eqz v5, :cond_5

    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    move-object v0, v5

    .line 4142
    .local v0, activity:Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_0

    .line 4143
    iput-boolean v7, v0, Landroid/app/Activity;->mCalled:Z

    .line 4146
    :cond_0
    const/4 v2, 0x0

    .line 4147
    .local v2, shouldChangeConfig:Z
    if-eqz v0, :cond_1

    iget-object v5, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    if-nez v5, :cond_6

    .line 4148
    :cond_1
    const/4 v2, 0x1

    .line 4179
    :cond_2
    :goto_1
    if-eqz v2, :cond_b

    .line 4180
    if-eqz p0, :cond_9

    .line 4182
    const-wide/16 v3, 0x0

    .line 4183
    .local v3, startTime:J
    sget-boolean v5, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v5, :cond_3

    .line 4184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 4187
    :cond_3
    invoke-interface {p0, p1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4189
    sget-boolean v5, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v5, :cond_4

    .line 4190
    invoke-static {p0, v3, v4}, Lcom/htc/utils/PerformanceLogUtil;->logPerformConfigurationChange(Landroid/content/ComponentCallbacks;J)V

    .line 4198
    .end local v3           #startTime:J
    :cond_4
    :goto_2
    if-eqz v0, :cond_b

    .line 4199
    iget-boolean v5, v0, Landroid/app/Activity;->mCalled:Z

    if-nez v5, :cond_a

    .line 4200
    new-instance v5, Landroid/app/SuperNotCalledException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4141
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #shouldChangeConfig:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 4154
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v2       #shouldChangeConfig:Z
    :cond_6
    iget-object v5, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 4155
    .local v1, diff:I
    if-eqz v1, :cond_2

    .line 4159
    iget-object v5, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v1

    if-nez v5, :cond_7

    .line 4160
    const/4 v2, 0x1

    .line 4163
    :cond_7
    if-nez v2, :cond_8

    iget-object v5, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->allowSkinChangeAlive:Z

    if-eqz v5, :cond_8

    .line 4164
    const/4 v2, 0x1

    .line 4171
    :cond_8
    if-nez v2, :cond_2

    iget-object v5, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->allowFontsizeChange:Z

    if-nez v5, :cond_2

    .line 4172
    const/4 v2, 0x1

    goto :goto_1

    .line 4195
    .end local v1           #diff:I
    :cond_9
    const-string v5, "ActivityThread"

    const-string/jumbo v6, "performConfigurationChanged callback is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4204
    :cond_a
    iput v7, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4205
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v5, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 4208
    :cond_b
    return-void
.end method

.method private performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 12
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"
    .parameter "getNonConfigInstance"

    .prologue
    .line 3690
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3691
    .local v5, r:Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v0, 0x0

    .line 3693
    .local v0, activityClass:Ljava/lang/Class;
    if-eqz v5, :cond_a

    .line 3694
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3695
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v9, v8, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v9, p3

    iput v9, v8, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3696
    if-eqz p2, :cond_0

    .line 3697
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/app/Activity;->mFinished:Z

    .line 3699
    :cond_0
    iget-boolean v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v8, :cond_3

    .line 3701
    :try_start_0
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/app/Activity;->mCalled:Z

    .line 3702
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3705
    iget-object v8, p0, Landroid/app/ActivityThread;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/callbacks/ActivityThreadCallbacks;

    .line 3706
    .local v1, cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v8}, Lcom/htc/callbacks/ActivityThreadCallbacks;->afterCallActivityOnPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3717
    .end local v1           #cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 3718
    .local v2, e:Landroid/app/SuperNotCalledException;
    throw v2

    .line 3710
    .end local v2           #e:Landroid/app/SuperNotCalledException;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    const/16 v8, 0x7545

    :try_start_1
    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3712
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v8, v8, Landroid/app/Activity;->mCalled:Z

    if-nez v8, :cond_2

    .line 3713
    new-instance v8, Landroid/app/SuperNotCalledException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v10}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " did not call through to super.onPause()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3719
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 3720
    .local v2, e:Ljava/lang/Exception;
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3721
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to pause activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v10}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 3727
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 3729
    :cond_3
    iget-boolean v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v8, :cond_5

    .line 3731
    :try_start_2
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->performStop()V
    :try_end_2
    .catch Landroid/app/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 3742
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3744
    :cond_5
    if-eqz p4, :cond_6

    .line 3746
    :try_start_3
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object v8

    iput-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 3758
    :cond_6
    :try_start_4
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/app/Activity;->mCalled:Z

    .line 3760
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v4

    .line 3761
    .local v4, performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3762
    .local v6, startTime:J
    if-lez v4, :cond_7

    .line 3763
    const-string v8, "Performance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " onDestroy"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    :cond_7
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 3767
    if-lez v4, :cond_8

    .line 3768
    const-string v8, "Performance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " onDestroy, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    :cond_8
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v8, v8, Landroid/app/Activity;->mCalled:Z

    if-nez v8, :cond_9

    .line 3771
    new-instance v8, Landroid/app/SuperNotCalledException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v10}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " did not call through to super.onDestroy()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catch Landroid/app/SuperNotCalledException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 3778
    .end local v4           #performanceFlag:I
    .end local v6           #startTime:J
    :catch_2
    move-exception v2

    .line 3779
    .local v2, e:Landroid/app/SuperNotCalledException;
    throw v2

    .line 3732
    .end local v2           #e:Landroid/app/SuperNotCalledException;
    :catch_3
    move-exception v2

    .line 3733
    .restart local v2       #e:Landroid/app/SuperNotCalledException;
    throw v2

    .line 3734
    .end local v2           #e:Landroid/app/SuperNotCalledException;
    :catch_4
    move-exception v2

    .line 3735
    .local v2, e:Ljava/lang/Exception;
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 3736
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to stop activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v10}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 3748
    .end local v2           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 3749
    .restart local v2       #e:Ljava/lang/Exception;
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3750
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to retain activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 3775
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #performanceFlag:I
    .restart local v6       #startTime:J
    :cond_9
    :try_start_5
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v8, :cond_a

    .line 3776
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->closeAllPanels()V
    :try_end_5
    .catch Landroid/app/SuperNotCalledException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 3788
    .end local v4           #performanceFlag:I
    .end local v6           #startTime:J
    :cond_a
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3789
    invoke-static {v0}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 3790
    return-object v5

    .line 3780
    :catch_6
    move-exception v2

    .line 3781
    .restart local v2       #e:Ljava/lang/Exception;
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 3782
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to destroy activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v10}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 20
    .parameter "r"
    .parameter "customIntent"

    .prologue
    .line 2229
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2230
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    sget-wide v4, Landroid/app/ActivityThread;->DISABLE_GC_THRESHOLD:J

    invoke-virtual {v3, v4, v5}, Ldalvik/system/VMRuntime;->disableGc(J)V

    .line 2237
    :cond_0
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isHtcApp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2238
    invoke-static {}, Landroid/app/ActivityThread;->raiseThreadPriority()V

    .line 2241
    :cond_1
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2242
    .local v15, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    if-nez v3, :cond_2

    .line 2243
    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 2247
    :cond_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    .line 2248
    .local v17, component:Landroid/content/ComponentName;
    if-nez v17, :cond_3

    .line 2249
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v17

    .line 2251
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2254
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 2255
    new-instance v17, Landroid/content/ComponentName;

    .end local v17           #component:Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    .restart local v17       #component:Landroid/content/ComponentName;
    :cond_4
    const/4 v1, 0x0

    .line 2261
    .local v1, activity:Landroid/app/Activity;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    .line 2262
    .local v16, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4, v5}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    .line 2264
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 2265
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2266
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v3, :cond_5

    .line 2267
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2278
    .end local v16           #cl:Ljava/lang/ClassLoader;
    :cond_5
    :try_start_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v4, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v7

    .line 2288
    .local v7, app:Landroid/app/Application;
    if-eqz v1, :cond_c

    .line 2289
    new-instance v2, Landroid/app/ContextImpl;

    invoke-direct {v2}, Landroid/app/ContextImpl;-><init>()V

    .line 2290
    .local v2, appContext:Landroid/app/ContextImpl;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2291
    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 2292
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2293
    .local v10, title:Ljava/lang/CharSequence;
    new-instance v14, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v14, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2296
    .local v14, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v14}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;)V

    .line 2300
    if-eqz p2, :cond_6

    .line 2301
    move-object/from16 v0, p2

    iput-object v0, v1, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 2303
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 2304
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/app/Activity;->mStartedActivity:Z

    .line 2305
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v19

    .line 2306
    .local v19, theme:I
    if-eqz v19, :cond_7

    .line 2307
    move/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 2310
    :cond_7
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/app/Activity;->mCalled:Z

    .line 2311
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v4}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2314
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2315
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-static {v1, v3, v4, v5}, Lcom/htc/autotest/Recorder;->startMonitor(Landroid/content/Context;Landroid/os/MessageQueue;Landroid/os/Handler;Landroid/app/Instrumentation;)V

    .line 2320
    :cond_8
    iget-boolean v3, v1, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_9

    .line 2321
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onCreate()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2350
    .end local v2           #appContext:Landroid/app/ContextImpl;
    .end local v7           #app:Landroid/app/Application;
    .end local v10           #title:Ljava/lang/CharSequence;
    .end local v14           #config:Landroid/content/res/Configuration;
    .end local v19           #theme:I
    :catch_0
    move-exception v18

    .line 2351
    .local v18, e:Landroid/app/SuperNotCalledException;
    throw v18

    .line 2269
    .end local v18           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v18

    .line 2270
    .local v18, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v3, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2271
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2325
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v2       #appContext:Landroid/app/ContextImpl;
    .restart local v7       #app:Landroid/app/Application;
    .restart local v10       #title:Ljava/lang/CharSequence;
    .restart local v14       #config:Landroid/content/res/Configuration;
    .restart local v19       #theme:I
    :cond_9
    :try_start_2
    move-object/from16 v0, p1

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2326
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2327
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_a

    .line 2328
    invoke-virtual {v1}, Landroid/app/Activity;->performStart()V

    .line 2329
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2331
    :cond_a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_b

    .line 2332
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v3, :cond_b

    .line 2333
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v4}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2336
    :cond_b
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_c

    .line 2337
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/app/Activity;->mCalled:Z

    .line 2338
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v4}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2339
    iget-boolean v3, v1, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_c

    .line 2340
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onPostCreate()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/app/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2353
    .end local v2           #appContext:Landroid/app/ContextImpl;
    .end local v7           #app:Landroid/app/Application;
    .end local v10           #title:Ljava/lang/CharSequence;
    .end local v14           #config:Landroid/content/res/Configuration;
    .end local v19           #theme:I
    :catch_2
    move-exception v18

    .line 2354
    .restart local v18       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v3, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2355
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2346
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v7       #app:Landroid/app/Application;
    :cond_c
    const/4 v3, 0x1

    :try_start_3
    move-object/from16 v0, p1

    iput-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2348
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/app/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2363
    .end local v7           #app:Landroid/app/Application;
    :cond_d
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isHtcApp()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2364
    invoke-static {}, Landroid/app/ActivityThread;->restoreThreadPriority()V

    .line 2368
    :cond_e
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2369
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->enableGc()V

    .line 2372
    :cond_f
    return-object v1
.end method

.method private performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V
    .locals 5
    .parameter "r"
    .parameter "info"
    .parameter "keepShown"
    .parameter "saveState"

    .prologue
    const/4 v4, 0x1

    .line 3399
    const/4 v1, 0x0

    .line 3400
    .local v1, state:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 3401
    if-nez p3, :cond_2

    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v2, :cond_2

    .line 3402
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-eqz v2, :cond_1

    .line 3460
    :cond_0
    :goto_0
    return-void

    .line 3408
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing stop of activity that is not resumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3411
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3414
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_2
    if-eqz p2, :cond_3

    .line 3419
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p2, Landroid/app/ActivityThread$StopInfo;->thumbnail:Landroid/graphics/Bitmap;

    .line 3420
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p2, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3432
    :cond_3
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_4

    if-eqz p4, :cond_4

    .line 3433
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v2, :cond_7

    .line 3434
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #state:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3435
    .restart local v1       #state:Landroid/os/Bundle;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 3436
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3437
    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 3443
    :cond_4
    :goto_1
    if-nez p3, :cond_6

    .line 3446
    :try_start_1
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3455
    :cond_5
    iput-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3458
    :cond_6
    iput-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    goto :goto_0

    .line 3421
    :catch_0
    move-exception v0

    .line 3422
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3423
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save state of activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3439
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    goto :goto_1

    .line 3447
    :catch_1
    move-exception v0

    .line 3448
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3449
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private queueOrSendMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 2161
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    .line 2162
    return-void
.end method

.method private queueOrSendMessage(ILjava/lang/Object;I)V
    .locals 1
    .parameter "what"
    .parameter "obj"
    .parameter "arg1"

    .prologue
    .line 2165
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    .line 2166
    return-void
.end method

.method private queueOrSendMessage(ILjava/lang/Object;II)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2169
    monitor-enter p0

    .line 2173
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2174
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2175
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2176
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 2177
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 2178
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2179
    monitor-exit p0

    .line 2180
    return-void

    .line 2179
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static raiseThreadPriority()V
    .locals 6

    .prologue
    const/4 v5, -0x5

    .line 2200
    :try_start_0
    sget v2, Landroid/app/ActivityThread;->myTid:I

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    sput v2, Landroid/app/ActivityThread;->mPrevPriority:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2207
    .local v0, e:Ljava/lang/Exception;
    .local v1, prevTid:I
    :goto_0
    sget v2, Landroid/app/ActivityThread;->mPrevPriority:I

    if-le v2, v5, :cond_0

    .line 2208
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2209
    const/4 v2, 0x1

    sput-boolean v2, Landroid/app/ActivityThread;->priorityRaised:Z

    .line 2211
    :cond_0
    return-void

    .line 2201
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #prevTid:I
    :catch_0
    move-exception v0

    .line 2202
    .restart local v0       #e:Ljava/lang/Exception;
    sget v1, Landroid/app/ActivityThread;->myTid:I

    .line 2203
    .restart local v1       #prevTid:I
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    sput v2, Landroid/app/ActivityThread;->myTid:I

    .line 2204
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get thread priority of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Tid changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/app/ActivityThread;->myTid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    sget v2, Landroid/app/ActivityThread;->myTid:I

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    sput v2, Landroid/app/ActivityThread;->mPrevPriority:I

    goto :goto_0
.end method

.method public static removeCursorStackTrace(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 5627
    sget-object v1, Landroid/app/ActivityThread;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v1

    .line 5628
    :try_start_0
    sget-object v0, Landroid/app/ActivityThread;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5629
    monitor-exit v1

    .line 5630
    return-void

    .line 5629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static restoreThreadPriority()V
    .locals 2

    .prologue
    .line 2214
    sget-boolean v1, Landroid/app/ActivityThread;->priorityRaised:Z

    if-eqz v1, :cond_1

    .line 2215
    sget v1, Landroid/app/ActivityThread;->myTid:I

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 2217
    .local v0, priority:I
    const/4 v1, -0x5

    if-ne v1, v0, :cond_0

    .line 2218
    sget v1, Landroid/app/ActivityThread;->mPrevPriority:I

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2220
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/ActivityThread;->priorityRaised:Z

    .line 2222
    :cond_1
    return-void
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 3794
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3795
    .local v0, component:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const-string v1, "[Unknown]"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V
    .locals 4
    .parameter "info"
    .parameter "cacheDir"

    .prologue
    .line 4552
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4569
    :cond_0
    :goto_0
    return-void

    .line 4557
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 4558
    .local v1, uid:I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4562
    .local v0, packages:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4563
    invoke-static {p2}, Landroid/view/HardwareRenderer;->setupDiskCache(Ljava/io/File;)V

    .line 4564
    invoke-static {p2}, Landroid/renderscript/RenderScript;->setupDiskCache(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4566
    .end local v0           #packages:[Ljava/lang/String;
    .end local v1           #uid:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static storeCursorStackTrace(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 6
    .parameter "cursor"
    .parameter "name"

    .prologue
    .line 5619
    sget-object v3, Landroid/app/ActivityThread;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v3

    .line 5620
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provider name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5621
    .local v0, providerName:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->getStackTraceLocked()Ljava/lang/String;

    move-result-object v1

    .line 5622
    .local v1, stackTrace:Ljava/lang/String;
    sget-object v2, Landroid/app/ActivityThread;->mCursorRecordsMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5623
    monitor-exit v3

    .line 5624
    return-void

    .line 5620
    .end local v0           #providerName:Ljava/lang/String;
    .end local v1           #stackTrace:Ljava/lang/String;
    .restart local p1
    :cond_0
    const-string p1, "<null>"

    goto :goto_0

    .line 5623
    .end local p1
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static systemMain()Landroid/app/ActivityThread;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5445
    sput-boolean v1, Landroid/app/ActivityThread;->sIsSystemServer:Z

    .line 5446
    invoke-static {v1}, Landroid/view/HardwareRenderer;->disable(Z)V

    .line 5447
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 5448
    .local v0, thread:Landroid/app/ActivityThread;
    invoke-direct {v0, v1}, Landroid/app/ActivityThread;->attach(Z)V

    .line 5449
    return-object v0
.end method

.method private updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 3
    .parameter "r"
    .parameter "show"

    .prologue
    .line 3463
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3464
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3465
    if-eqz p2, :cond_2

    .line 3466
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v1, :cond_0

    .line 3467
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 3468
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3469
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_0

    .line 3470
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    .line 3473
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    .line 3476
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-static {v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 3477
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 3478
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 3488
    :cond_1
    :goto_0
    return-void

    .line 3481
    :cond_2
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v1, :cond_1

    .line 3482
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 3483
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3484
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/IContentProvider;
    .locals 6
    .parameter "c"
    .parameter "name"
    .parameter "stable"

    .prologue
    .line 5016
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 5017
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5018
    .local v1, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    if-nez v1, :cond_0

    .line 5019
    const/4 v3, 0x0

    monitor-exit v5

    .line 5031
    :goto_0
    return-object v3

    .line 5022
    :cond_0
    iget-object v3, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 5023
    .local v3, provider:Landroid/content/IContentProvider;
    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5027
    .local v0, jBinder:Landroid/os/IBinder;
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderRefCount;

    .line 5028
    .local v2, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v2, :cond_1

    .line 5029
    invoke-direct {p0, v2, p3}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V

    .line 5031
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 5032
    .end local v0           #jBinder:Landroid/os/IBinder;
    .end local v1           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v2           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    .end local v3           #provider:Landroid/content/IContentProvider;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/IContentProvider;
    .locals 10
    .parameter "c"
    .parameter "name"
    .parameter "stable"

    .prologue
    const/4 v9, 0x0

    .line 4888
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/IContentProvider;

    move-result-object v8

    .line 4889
    .local v8, provider:Landroid/content/IContentProvider;
    if-eqz v8, :cond_1

    .line 4891
    invoke-static {}, Landroid/app/ActivityThread;->isLogProviderEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, v8}, Landroid/app/ActivityThread;->logProviderStackTrace(Ljava/lang/String;Landroid/content/IContentProvider;)V

    .line 4929
    .end local v8           #provider:Landroid/content/IContentProvider;
    :cond_0
    :goto_0
    return-object v8

    .line 4901
    .restart local v8       #provider:Landroid/content/IContentProvider;
    :cond_1
    const/4 v2, 0x0

    .line 4903
    .local v2, holder:Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Z)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 4907
    :goto_1
    if-nez v2, :cond_2

    .line 4908
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find provider info for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 4909
    goto :goto_0

    .line 4914
    :cond_2
    :try_start_1
    iget-object v3, v2, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v4, 0x1

    iget-boolean v5, v2, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 4928
    invoke-static {}, Landroid/app/ActivityThread;->isLogProviderEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-direct {p0, p2, v0}, Landroid/app/ActivityThread;->logProviderStackTrace(Ljava/lang/String;Landroid/content/IContentProvider;)V

    .line 4929
    :cond_3
    iget-object v8, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    goto :goto_0

    .line 4916
    :catch_0
    move-exception v7

    .line 4917
    .local v7, e:Ljava/lang/SecurityException;
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allow load provider("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "), return null to prevent query crash"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 4918
    goto :goto_0

    .line 4905
    .end local v7           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method final applyCompatConfiguration()Landroid/content/res/Configuration;
    .locals 3

    .prologue
    .line 4323
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 4324
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_0

    .line 4325
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 4327
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4328
    iget-object v1, p0, Landroid/app/ActivityThread;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/ActivityThread;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4329
    iget-object v1, p0, Landroid/app/ActivityThread;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(Landroid/content/res/Configuration;)V

    .line 4330
    iget-object v0, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 4332
    :cond_1
    return-object v0
.end method

.method applyConfigCompatMainThread(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "config"
    .parameter "compat"

    .prologue
    .line 1700
    if-nez p1, :cond_0

    .line 1701
    const/4 v0, 0x0

    .line 1708
    :goto_0
    return-object v0

    .line 1703
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1704
    iget-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1705
    iget-object p1, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 1706
    invoke-virtual {p2, p1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(Landroid/content/res/Configuration;)V

    :cond_1
    move-object v0, p1

    .line 1708
    goto :goto_0
.end method

.method public final applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 4211
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 4212
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 4213
    monitor-exit v1

    .line 4214
    return-void

    .line 4213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 13
    .parameter "config"
    .parameter "compat"

    .prologue
    .line 4230
    iget-object v10, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v10, :cond_0

    .line 4231
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    .line 4234
    iget-object v10, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    const-string v11, "default"

    iput-object v11, v10, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 4237
    :cond_0
    iget-object v10, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v10

    if-nez v10, :cond_1

    if-nez p2, :cond_1

    .line 4240
    const/4 v10, 0x0

    .line 4319
    :goto_0
    return v10

    .line 4242
    :cond_1
    iget-object v10, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    .line 4243
    .local v1, changes:I
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Landroid/content/res/CompatibilityInfo;Z)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 4245
    .local v3, dm:Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_3

    iget-object v10, p0, Landroid/app/ActivityThread;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/app/ActivityThread;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v10, p2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 4247
    :cond_2
    iput-object p2, p0, Landroid/app/ActivityThread;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 4248
    or-int/lit16 v1, v1, 0xd00

    .line 4254
    :cond_3
    iget-object v10, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v10, :cond_4

    .line 4255
    iget-object v10, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v10}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 4258
    :cond_4
    invoke-static {p1, v3, p2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 4260
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 4263
    iget-object v10, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4267
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4268
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .line 4269
    .local v9, v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/Resources;

    .line 4270
    .local v7, r:Landroid/content/res/Resources;
    if-eqz v7, :cond_a

    .line 4272
    const/high16 v10, 0x1

    and-int/2addr v10, v1

    if-eqz v10, :cond_7

    .line 4273
    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 4274
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->hasSkinSupport()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 4275
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSkinPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4276
    .local v2, curSkinPkg:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 4277
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->setSkinPackageName(Ljava/lang/String;)V

    .line 4278
    invoke-direct {p0, v2, p2}, Landroid/app/ActivityThread;->getPackageResDir(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Ljava/lang/String;

    move-result-object v6

    .line 4279
    .local v6, path:Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 4280
    invoke-virtual {v0, v6, v2}, Landroid/content/res/AssetManager;->removeAssetPath(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4288
    .end local v6           #path:Ljava/lang/String;
    :goto_2
    iget-object v5, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 4289
    .local v5, nextSkinPkg:Ljava/lang/String;
    const-string v10, "default"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4290
    sget-object v10, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->updateResourcesWithAssetPath(Ljava/lang/String;)I

    .line 4293
    :cond_6
    invoke-direct {p0, v5, p2}, Landroid/app/ActivityThread;->getPackageResDir(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 4294
    .local v8, resDir:Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 4295
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->setSkinPackageName(Ljava/lang/String;)V

    .line 4296
    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->updateResourcesWithAssetPath(Ljava/lang/String;)I

    .line 4303
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #curSkinPkg:Ljava/lang/String;
    .end local v5           #nextSkinPkg:Ljava/lang/String;
    .end local v8           #resDir:Ljava/lang/String;
    :cond_7
    invoke-virtual {v7, p1, v3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 4306
    const/high16 v10, 0x1

    and-int/2addr v10, v1

    if-eqz v10, :cond_5

    .line 4307
    invoke-virtual {v7}, Landroid/content/res/Resources;->cleanStringBlocks()V

    goto :goto_1

    .line 4282
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #curSkinPkg:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    :cond_8
    const-string v10, "ActivityThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot remove asset path of package name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4285
    .end local v6           #path:Ljava/lang/String;
    :cond_9
    sget-object v10, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_PATH:Ljava/lang/String;

    sget-object v11, Landroid/app/ActivityThread;->PRELOAD_SKIN_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/res/AssetManager;->removeAssetPath(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 4315
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #curSkinPkg:Ljava/lang/String;
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 4319
    .end local v7           #r:Landroid/content/res/Resources;
    .end local v9           #v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_b
    if-eqz v1, :cond_c

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;
    .locals 6
    .parameter "allActivities"
    .parameter "newConfig"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4064
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4065
    .local v2, providerCallbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 4066
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 4067
    iget-object v4, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 4068
    .local v3, providerClientRecord:Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v4, v3, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4071
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #providerClientRecord:Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4073
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 4074
    :try_start_2
    invoke-virtual {p0, p1, p2, v2}, Landroid/app/ActivityThread;->collectComponentCallbacksLocked(ZLandroid/content/res/Configuration;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4075
    .local v0, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    monitor-exit v5

    .line 4076
    return-object v0

    .line 4075
    .end local v0           #callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method collectComponentCallbacksLocked(ZLandroid/content/res/Configuration;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter "allActivities"
    .parameter "newConfig"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks2;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4084
    .local p3, moreCallbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4087
    .local v3, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 4088
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4089
    .local v2, ar:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v1, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4090
    .local v1, a:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 4091
    iget-object v8, v2, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v8, v8, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v8}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    invoke-virtual {p0, p2, v8}, Landroid/app/ActivityThread;->applyConfigCompatMainThread(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;

    move-result-object v7

    .line 4093
    .local v7, thisConfig:Landroid/content/res/Configuration;
    iget-object v8, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v8, v8, Landroid/app/Activity;->mFinished:Z

    if-nez v8, :cond_2

    if-nez p1, :cond_1

    iget-boolean v8, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v8, :cond_2

    .line 4096
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4097
    :cond_2
    if-eqz v7, :cond_0

    .line 4107
    iput-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    goto :goto_0

    .line 4112
    .end local v1           #a:Landroid/app/Activity;
    .end local v2           #ar:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #thisConfig:Landroid/content/res/Configuration;
    :cond_3
    iget-object v8, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 4113
    iget-object v8, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Service;

    .line 4114
    .local v6, service:Landroid/app/Service;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4118
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #service:Landroid/app/Service;
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 4119
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4129
    :cond_5
    iget-object v8, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4130
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_6

    .line 4131
    iget-object v8, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4130
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4134
    :cond_6
    return-object v3
.end method

.method final completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .locals 8
    .parameter "prc"

    .prologue
    .line 5147
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 5148
    :try_start_0
    iget-boolean v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v5, :cond_0

    .line 5154
    monitor-exit v6

    .line 5183
    :goto_0
    return-void

    .line 5157
    :cond_0
    iget-object v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v5, v5, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5158
    .local v2, jBinder:Landroid/os/IBinder;
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    .line 5159
    .local v0, existingPrc:Landroid/app/ActivityThread$ProviderRefCount;
    if-ne v0, p1, :cond_1

    .line 5160
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5163
    :cond_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5164
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderClientRecord;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5166
    .local v4, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v5, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 5167
    .local v3, myBinder:Landroid/os/IBinder;
    if-ne v3, v2, :cond_2

    .line 5168
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 5171
    .end local v0           #existingPrc:Landroid/app/ActivityThread$ProviderRefCount;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderClientRecord;>;"
    .end local v2           #jBinder:Landroid/os/IBinder;
    .end local v3           #myBinder:Landroid/os/IBinder;
    .end local v4           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #existingPrc:Landroid/app/ActivityThread$ProviderRefCount;
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderClientRecord;>;"
    .restart local v2       #jBinder:Landroid/os/IBinder;
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5178
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v6, v6, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5180
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method doGcIfNeeded()V
    .locals 6

    .prologue
    .line 2074
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2075
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2078
    .local v0, now:J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 2080
    const-string v2, "bg"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 2082
    :cond_0
    return-void
.end method

.method ensureJitEnabled()V
    .locals 1

    .prologue
    .line 2051
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    if-nez v0, :cond_0

    .line 2052
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 2053
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 2055
    :cond_0
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 4847
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4848
    .local v0, am:Landroid/app/IActivityManager;
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v1, v1, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_0

    .line 4850
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 4855
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4858
    :goto_0
    return-void

    .line 4856
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final freeTextLayoutCachesIfNeeded(I)V
    .locals 2
    .parameter "configDiff"

    .prologue
    .line 4405
    if-eqz p1, :cond_0

    .line 4407
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 4408
    .local v0, hasLocaleConfigChange:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 4409
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 4413
    .end local v0           #hasLocaleConfigChange:Z
    :cond_0
    return-void

    .line 4407
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1
    .parameter "token"

    .prologue
    .line 2145
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    .prologue
    .line 1987
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDisplayMetricsLocked(Landroid/content/res/CompatibilityInfo;Z)Landroid/util/DisplayMetrics;
    .locals 4
    .parameter "ci"
    .parameter "forceUpdate"

    .prologue
    .line 1682
    iget-object v3, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    .line 1683
    .local v1, dm:Landroid/util/DisplayMetrics;
    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    move-object v2, v1

    .line 1695
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .local v2, dm:Landroid/util/DisplayMetrics;
    :goto_0
    return-object v2

    .line 1686
    .end local v2           #dm:Landroid/util/DisplayMetrics;
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    :cond_0
    if-nez v1, :cond_1

    .line 1687
    new-instance v1, Landroid/util/DisplayMetrics;

    .end local v1           #dm:Landroid/util/DisplayMetrics;
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1688
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    :cond_1
    invoke-static {p1}, Landroid/view/WindowManagerImpl;->getDefault(Landroid/content/res/CompatibilityInfo;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1691
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object v2, v1

    .line 1695
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #dm:Landroid/util/DisplayMetrics;
    goto :goto_0
.end method

.method final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 5459
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 5460
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 5461
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .end local p2
    monitor-exit v1

    .line 5463
    :goto_0
    return p2

    .restart local p2
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 5465
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 2009
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 7
    .parameter "ai"
    .parameter "compatInfo"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1879
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3

    move v5, v0

    .line 1880
    .local v5, includeCode:Z
    :goto_0
    if-eqz v5, :cond_1

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v2, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v2}, Landroid/os/UserId;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v4, v0

    .line 1884
    .local v4, securityViolation:Z
    :cond_1
    and-int/lit8 v1, p3, 0x3

    if-ne v1, v0, :cond_4

    .line 1887
    if-eqz v4, :cond_4

    .line 1888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting code from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (with uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1890
    .local v6, msg:Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_2

    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to be run in process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (with uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1895
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v4           #securityViolation:Z
    .end local v5           #includeCode:Z
    .end local v6           #msg:Ljava/lang/String;
    :cond_3
    move v5, v4

    .line 1879
    goto/16 :goto_0

    .line 1898
    .restart local v4       #securityViolation:Z
    .restart local v5       #includeCode:Z
    :cond_4
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 7
    .parameter "packageName"
    .parameter "compatInfo"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 1837
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 1839
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_1

    .line 1840
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1844
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk;

    move-object v1, v3

    .line 1848
    .local v1, packageInfo:Landroid/app/LoadedApk;
    :goto_1
    if-eqz v1, :cond_4

    iget-object v3, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1850
    :cond_0
    invoke-virtual {v1}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_3

    .line 1852
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting code from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to be run in process "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1860
    .end local v1           #packageInfo:Landroid/app/LoadedApk;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1842
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 1844
    goto :goto_1

    .line 1858
    .restart local v1       #packageInfo:Landroid/app/LoadedApk;
    :cond_3
    monitor-exit v5

    .line 1874
    .end local v1           #packageInfo:Landroid/app/LoadedApk;
    :goto_2
    return-object v1

    .line 1860
    .restart local v1       #packageInfo:Landroid/app/LoadedApk;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1862
    const/4 v0, 0x0

    .line 1864
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v5, 0x400

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v6

    invoke-interface {v3, p1, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 1870
    :goto_3
    if-eqz v0, :cond_5

    .line 1871
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v4

    .line 1874
    goto :goto_2

    .line 1866
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .locals 6
    .parameter "ai"
    .parameter "compatInfo"

    .prologue
    .line 1903
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemContext()Landroid/app/ContextImpl;
    .locals 6

    .prologue
    .line 2021
    monitor-enter p0

    .line 2022
    :try_start_0
    sget-object v1, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v1, :cond_0

    .line 2023
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v3

    .line 2025
    .local v3, context:Landroid/app/ContextImpl;
    new-instance v0, Landroid/app/LoadedApk;

    const-string v2, "android"

    const/4 v4, 0x0

    sget-object v5, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 2027
    .local v0, info:Landroid/app/LoadedApk;
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2028
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    sget-object v4, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Landroid/content/res/CompatibilityInfo;Z)Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2031
    sput-object v3, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 2035
    .end local v0           #info:Landroid/app/LoadedApk;
    .end local v3           #context:Landroid/app/ContextImpl;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    sget-object v1, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    return-object v1

    .line 2035
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getTopLevelResources(Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 1
    .parameter "resDir"
    .parameter "pkgInfo"

    .prologue
    .line 1823
    iget-object v0, p2, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v0}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;Landroid/app/LoadedApk;Z)Landroid/content/res/Resources;
    .locals 1
    .parameter "resDir"
    .parameter "pkgInfo"
    .parameter "allowSkinChange"

    .prologue
    .line 1827
    iget-object v0, p2, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v0}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;Z)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 1
    .parameter "resDir"
    .parameter "compInfo"

    .prologue
    .line 1720
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;Z)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;Z)Landroid/content/res/Resources;
    .locals 17
    .parameter "resDir"
    .parameter "compInfo"
    .parameter "allowSkinChange"

    .prologue
    .line 1725
    new-instance v6, Landroid/app/ActivityThread$ResourcesKey;

    move-object/from16 v0, p2

    iget v14, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v14}, Landroid/app/ActivityThread$ResourcesKey;-><init>(Ljava/lang/String;F)V

    .line 1727
    .local v6, key:Landroid/app/ActivityThread$ResourcesKey;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v15

    .line 1733
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/WeakReference;

    .line 1734
    .local v13, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/Resources;

    move-object v9, v14

    .line 1736
    .local v9, r:Landroid/content/res/Resources;
    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1741
    monitor-exit v15

    move-object v4, v9

    .line 1815
    :goto_1
    return-object v4

    .line 1734
    .end local v9           #r:Landroid/content/res/Resources;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1743
    .restart local v9       #r:Landroid/content/res/Resources;
    :cond_1
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 1752
    .local v2, assets:Landroid/content/res/AssetManager;
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->setSkinSupport(Z)V

    .line 1754
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v14, v14, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_3

    .line 1755
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v14, v14, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v14, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 1756
    .local v10, resourceDirs:[Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1757
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v14, v10

    if-ge v5, v14, :cond_3

    .line 1758
    aget-object v14, v10, v5

    invoke-virtual {v2, v14}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v11

    .line 1759
    .local v11, result:I
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_2

    .line 1760
    const-string v14, "ActivityThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sourceDirs["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v10, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const-string v14, "ActivityThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Result = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1743
    .end local v2           #assets:Landroid/content/res/AssetManager;
    .end local v5           #i:I
    .end local v9           #r:Landroid/content/res/Resources;
    .end local v10           #resourceDirs:[Ljava/lang/String;
    .end local v11           #result:I
    .end local v13           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v14

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 1767
    .restart local v2       #assets:Landroid/content/res/AssetManager;
    .restart local v9       #r:Landroid/content/res/Resources;
    .restart local v13       #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_4

    .line 1768
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1771
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1772
    .local v3, config:Landroid/content/res/Configuration;
    if-eqz p3, :cond_5

    if-eqz v3, :cond_5

    .line 1773
    iget-object v14, v3, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v14, :cond_5

    iget-object v14, v3, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    const-string v15, "default"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1774
    iget-object v14, v3, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v8

    .line 1775
    .local v8, pi:Landroid/app/LoadedApk;
    if-eqz v8, :cond_5

    .line 1776
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v12

    .line 1777
    .local v12, themeResDir:Ljava/lang/String;
    invoke-virtual {v2, v12}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_6

    .line 1778
    iget-object v14, v3, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v2, v14}, Landroid/content/res/AssetManager;->setSkinPackageName(Ljava/lang/String;)V

    .line 1795
    .end local v8           #pi:Landroid/app/LoadedApk;
    .end local v12           #themeResDir:Ljava/lang/String;
    :cond_5
    :goto_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Landroid/content/res/CompatibilityInfo;Z)Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 1796
    .local v7, metrics:Landroid/util/DisplayMetrics;
    new-instance v9, Landroid/content/res/Resources;

    .end local v9           #r:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-direct {v9, v2, v7, v14, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1803
    .restart local v9       #r:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v15

    .line 1804
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v13, Ljava/lang/ref/WeakReference;

    .line 1805
    .restart local v13       #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/Resources;

    move-object v4, v14

    .line 1806
    .local v4, existing:Landroid/content/res/Resources;
    :goto_4
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1809
    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/AssetManager;->close()V

    .line 1810
    monitor-exit v15

    goto/16 :goto_1

    .line 1816
    .end local v4           #existing:Landroid/content/res/Resources;
    .end local v13           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v14

    .line 1780
    .end local v7           #metrics:Landroid/util/DisplayMetrics;
    .restart local v8       #pi:Landroid/app/LoadedApk;
    .restart local v12       #themeResDir:Ljava/lang/String;
    .restart local v13       #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_6
    const-string v14, "ActivityThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to add skin resdir="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1805
    .end local v8           #pi:Landroid/app/LoadedApk;
    .end local v12           #themeResDir:Ljava/lang/String;
    .restart local v7       #metrics:Landroid/util/DisplayMetrics;
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 1814
    .restart local v4       #existing:Landroid/content/res/Resources;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    new-instance v16, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v9

    goto/16 :goto_1
.end method

.method final handleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 4416
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4417
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 4427
    :cond_0
    :goto_0
    return-void

    .line 4424
    :cond_1
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 4426
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    goto :goto_0
.end method

.method final handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 8
    .parameter "config"
    .parameter "compat"

    .prologue
    .line 4337
    const/4 v3, 0x0

    .line 4338
    .local v3, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    const/4 v4, 0x0

    .line 4341
    .local v4, configDiff:I
    const-wide/16 v1, 0x0

    .line 4342
    .local v1, autoProfStartTime:J
    sget-boolean v6, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v6, :cond_0

    .line 4343
    sget-boolean v6, Landroid/app/ActivityThread;->sIsTopApp:Z

    if-eqz v6, :cond_0

    .line 4344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4345
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 4346
    invoke-static {p0, p1}, Lcom/htc/utils/PerformanceLogUtil;->logHandleConfigurationChangedStart(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V

    .line 4351
    :cond_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 4352
    :try_start_0
    iget-object v6, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v6, :cond_2

    .line 4353
    iget-object v6, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4354
    iget-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 4356
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 4359
    :cond_2
    if-nez p1, :cond_4

    .line 4360
    monitor-exit v7

    .line 4402
    :cond_3
    :goto_0
    return-void

    .line 4366
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 4368
    iget-object v6, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v6, :cond_5

    .line 4369
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    iput-object v6, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 4371
    :cond_5
    iget-object v6, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_6

    if-nez p2, :cond_6

    .line 4372
    monitor-exit v7

    goto :goto_0

    .line 4379
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 4374
    :cond_6
    :try_start_1
    iget-object v6, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    .line 4375
    iget-object v6, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 4376
    invoke-virtual {p0}, Landroid/app/ActivityThread;->applyCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 4379
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4381
    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4384
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManagerImpl;->trimLocalMemory()V

    .line 4386
    invoke-virtual {p0, v4}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 4388
    if-eqz v3, :cond_7

    .line 4389
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4390
    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_7

    .line 4391
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentCallbacks2;

    invoke-static {v6, p1}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 4390
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4396
    .end local v0           #N:I
    .end local v5           #i:I
    :cond_7
    sget-boolean v6, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v6, :cond_3

    .line 4397
    sget-boolean v6, Landroid/app/ActivityThread;->sIsTopApp:Z

    if-eqz v6, :cond_3

    .line 4398
    invoke-static {v1, v2}, Lcom/htc/utils/PerformanceLogUtil;->logHandleConfigurationChangedEnd(J)V

    goto :goto_0
.end method

.method final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 5
    .parameter "cmd"
    .parameter "packages"

    .prologue
    .line 4478
    const/4 v0, 0x0

    .line 4479
    .local v0, hasPkgInfo:Z
    if-eqz p2, :cond_2

    .line 4480
    array-length v3, p2

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 4482
    if-nez v0, :cond_0

    .line 4484
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4485
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4486
    const/4 v0, 0x1

    .line 4494
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4495
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4480
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4488
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4489
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4490
    const/4 v0, 0x1

    goto :goto_1

    .line 4498
    .end local v1           #i:I
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    invoke-static {p1, p2, v0}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 4500
    return-void
.end method

.method final handleLowMemory()V
    .locals 6

    .prologue
    .line 4504
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4510
    .local v1, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4511
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 4512
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-interface {v4}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 4511
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4516
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_1

    .line 4517
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v3

    .line 4518
    .local v3, sqliteReleased:I
    const v4, 0x124fb

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4522
    .end local v3           #sqliteReleased:I
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 4525
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 4527
    const-string/jumbo v4, "mem"

    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 4528
    return-void
.end method

.method final handleProfilerControl(ZLandroid/app/ActivityThread$ProfilerControlData;I)V
    .locals 4
    .parameter "start"
    .parameter "pcd"
    .parameter "profileType"

    .prologue
    .line 4430
    if-eqz p1, :cond_0

    .line 4434
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, p2, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    iget-object v3, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityThread$Profiler;->setProfiler(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 4435
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 4436
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4444
    :try_start_1
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4456
    :goto_0
    return-void

    .line 4439
    :catch_0
    move-exception v0

    .line 4440
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4444
    :try_start_3
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 4445
    :catch_1
    move-exception v0

    .line 4446
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4443
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 4444
    :try_start_4
    iget-object v2, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 4443
    :goto_2
    throw v1

    .line 4452
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    goto :goto_0

    .line 4445
    :catch_2
    move-exception v0

    .line 4446
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4445
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 4446
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    goto :goto_1
.end method

.method final handleResumeActivity(Landroid/os/IBinder;ZZ)V
    .locals 10
    .parameter "token"
    .parameter "clearHide"
    .parameter "isForward"

    .prologue
    .line 3044
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3047
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3048
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    sget-wide v8, Landroid/app/ActivityThread;->DISABLE_GC_THRESHOLD:J

    invoke-virtual {v7, v8, v9}, Ldalvik/system/VMRuntime;->disableGc(J)V

    .line 3054
    :cond_0
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isHtcApp()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3055
    invoke-static {}, Landroid/app/ActivityThread;->raiseThreadPriority()V

    .line 3059
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v4

    .line 3061
    .local v4, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v4, :cond_d

    .line 3062
    iget-object v0, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3069
    .local v0, a:Landroid/app/Activity;
    if-eqz p3, :cond_a

    const/16 v2, 0x100

    .line 3075
    .local v2, forwardBit:I
    :goto_0
    iget-boolean v7, v0, Landroid/app/Activity;->mStartedActivity:Z

    if-nez v7, :cond_b

    const/4 v5, 0x1

    .line 3076
    .local v5, willBeVisible:Z
    :goto_1
    if-nez v5, :cond_2

    .line 3078
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 3083
    :cond_2
    :goto_2
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v7, :cond_c

    iget-boolean v7, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_c

    if-eqz v5, :cond_c

    .line 3084
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 3085
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 3086
    .local v1, decor:Landroid/view/View;
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3087
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .line 3088
    .local v6, wm:Landroid/view/ViewManager;
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 3089
    .local v3, l:Landroid/view/WindowManager$LayoutParams;
    iput-object v1, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3090
    const/4 v7, 0x1

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3091
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v7, v2

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3092
    iget-boolean v7, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v7, :cond_3

    .line 3093
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/app/Activity;->mWindowAdded:Z

    .line 3094
    invoke-interface {v6, v1, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3107
    .end local v1           #decor:Landroid/view/View;
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #wm:Landroid/view/ViewManager;
    :cond_3
    :goto_3
    invoke-static {v4}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 3111
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v7, v7, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_6

    if-eqz v5, :cond_6

    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v7, v7, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v7, :cond_6

    iget-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v7, :cond_6

    .line 3113
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_4

    .line 3116
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-static {v7, v8}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 3117
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v7, v7, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 3118
    const/4 v7, 0x0

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 3122
    :cond_4
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 3123
    .restart local v3       #l:Landroid/view/WindowManager$LayoutParams;
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, 0x100

    if-eq v7, v2, :cond_5

    .line 3126
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, -0x101

    or-int/2addr v7, v2

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3129
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v7, v7, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v7, :cond_5

    .line 3130
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .line 3131
    .restart local v6       #wm:Landroid/view/ViewManager;
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 3132
    .restart local v1       #decor:Landroid/view/View;
    invoke-interface {v6, v1, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3135
    .end local v1           #decor:Landroid/view/View;
    .end local v6           #wm:Landroid/view/ViewManager;
    :cond_5
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 3136
    iget v7, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3137
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v7, v7, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v7, :cond_6

    .line 3138
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->makeVisible()V

    .line 3142
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    :cond_6
    iget-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-nez v7, :cond_7

    .line 3143
    iget-object v7, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3144
    iput-object v4, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3147
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v7

    new-instance v8, Landroid/app/ActivityThread$Idler;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    invoke-virtual {v7, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3149
    :cond_7
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 3163
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #forwardBit:I
    .end local v5           #willBeVisible:Z
    :goto_4
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isHtcApp()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3164
    invoke-static {}, Landroid/app/ActivityThread;->restoreThreadPriority()V

    .line 3169
    :cond_8
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3170
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->enableGc()V

    .line 3173
    :cond_9
    return-void

    .line 3069
    .restart local v0       #a:Landroid/app/Activity;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3075
    .restart local v2       #forwardBit:I
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3100
    .restart local v5       #willBeVisible:Z
    :cond_c
    if-nez v5, :cond_3

    .line 3103
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    goto/16 :goto_3

    .line 3155
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #forwardBit:I
    .end local v5           #willBeVisible:Z
    :cond_d
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, p1, v8, v9}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 3157
    :catch_0
    move-exception v7

    goto :goto_4

    .line 3080
    .restart local v0       #a:Landroid/app/Activity;
    .restart local v2       #forwardBit:I
    .restart local v5       #willBeVisible:Z
    :catch_1
    move-exception v7

    goto/16 :goto_2
.end method

.method final handleTrimMemory(I)V
    .locals 6
    .parameter "level"

    .prologue
    .line 4533
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    .line 4534
    .local v3, windowManager:Landroid/view/WindowManagerImpl;
    invoke-virtual {v3, p1}, Landroid/view/WindowManagerImpl;->startTrimMemory(I)V

    .line 4537
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4543
    .local v1, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4544
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 4545
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-interface {v4, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 4544
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4548
    :cond_0
    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->endTrimMemory()V

    .line 4549
    return-void
.end method

.method final handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .locals 10
    .parameter "provider"
    .parameter "fromClient"

    .prologue
    .line 5186
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 5187
    :try_start_0
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ProviderRefCount;

    .line 5188
    .local v5, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v5, :cond_2

    .line 5191
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5192
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderRefCount;->client:Landroid/app/ActivityThread$ProviderClientRecord;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/app/ActivityThread$ProviderRefCount;->client:Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v6, v6, Landroid/app/ActivityThread$ProviderClientRecord;->mNames:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 5193
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderRefCount;->client:Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v0, v6, Landroid/app/ActivityThread$ProviderClientRecord;->mNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 5194
    .local v3, name:Ljava/lang/String;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5195
    .local v4, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_0

    .line 5196
    const-string v6, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dead content provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5197
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5201
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_1
    if-eqz p2, :cond_2

    .line 5208
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v8, v5, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v8, v8, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v6, v8}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5215
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v7

    .line 5216
    return-void

    .line 5215
    .end local v5           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 5210
    .restart local v5       #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 2040
    monitor-enter p0

    .line 2041
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v3

    .line 2042
    .local v3, context:Landroid/app/ContextImpl;
    new-instance v0, Landroid/app/LoadedApk;

    const-string v2, "android"

    sget-object v5, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2046
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 2047
    monitor-exit p0

    .line 2048
    return-void

    .line 2047
    .end local v3           #context:Landroid/app/ContextImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5453
    .local p1, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_0

    .line 5454
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 5456
    :cond_0
    return-void
.end method

.method public isProfiling()Z
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .locals 3
    .parameter "packageName"
    .parameter "includeCode"

    .prologue
    .line 1907
    iget-object v2, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1909
    if-eqz p2, :cond_0

    .line 1910
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1914
    .local v0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    :goto_1
    monitor-exit v2

    return-object v1

    .line 1912
    .end local v0           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .restart local v0       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    .line 1914
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1915
    .end local v0           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 1
    .parameter "token"
    .parameter "finishing"

    .prologue
    const/4 v0, 0x0

    .line 3685
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    return-object v0
.end method

.method public final performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 7
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2483
    iget-object v6, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2484
    .local v2, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_2

    .line 2485
    iget-boolean v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v6, :cond_0

    move v3, v4

    .line 2486
    .local v3, resumed:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 2487
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v4, v6, Landroid/app/Activity;->mTemporaryPause:Z

    .line 2488
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2491
    iget-object v4, p0, Landroid/app/ActivityThread;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/callbacks/ActivityThreadCallbacks;

    .line 2492
    .local v0, cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Lcom/htc/callbacks/ActivityThreadCallbacks;->afterCallActivityOnPause(Landroid/app/Activity;)V

    goto :goto_1

    .end local v0           #cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #resumed:Z
    :cond_0
    move v3, v5

    .line 2485
    goto :goto_0

    .line 2496
    .restart local v3       #resumed:Z
    :cond_1
    invoke-direct {p0, v2, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2497
    if-eqz v3, :cond_2

    .line 2498
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->performResume()V

    .line 2499
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v5, v4, Landroid/app/Activity;->mTemporaryPause:Z

    .line 2502
    .end local v3           #resumed:Z
    :cond_2
    return-void
.end method

.method final performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;
    .locals 12
    .parameter "r"
    .parameter "finished"
    .parameter "saveState"

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 3277
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v8, :cond_2

    .line 3278
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v8, v8, Landroid/app/Activity;->mFinished:Z

    if-eqz v8, :cond_1

    .line 3282
    const/4 v6, 0x0

    .line 3341
    :cond_0
    return-object v6

    .line 3284
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Performing pause of activity that is not resumed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3287
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v8, "ActivityThread"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3289
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_2
    const/4 v6, 0x0

    .line 3290
    .local v6, state:Landroid/os/Bundle;
    if-eqz p2, :cond_3

    .line 3291
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v11, v8, Landroid/app/Activity;->mFinished:Z

    .line 3295
    :cond_3
    :try_start_0
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v8, v8, Landroid/app/Activity;->mFinished:Z

    if-nez v8, :cond_4

    if-eqz p3, :cond_4

    .line 3296
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3297
    .end local v6           #state:Landroid/os/Bundle;
    .local v7, state:Landroid/os/Bundle;
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 3298
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v7}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3299
    iput-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v6, v7

    .line 3302
    .end local v7           #state:Landroid/os/Bundle;
    .restart local v6       #state:Landroid/os/Bundle;
    :cond_4
    :try_start_2
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/app/Activity;->mCalled:Z

    .line 3303
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3306
    iget-object v8, p0, Landroid/app/ActivityThread;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/callbacks/ActivityThreadCallbacks;

    .line 3307
    .local v0, cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Lcom/htc/callbacks/ActivityThreadCallbacks;->afterCallActivityOnPause(Landroid/app/Activity;)V
    :try_end_2
    .catch Landroid/app/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3318
    .end local v0           #cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 3319
    .local v1, e:Landroid/app/SuperNotCalledException;
    :goto_1
    throw v1

    .line 3311
    .end local v1           #e:Landroid/app/SuperNotCalledException;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    const/16 v8, 0x7545

    :try_start_3
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3312
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v8, v8, Landroid/app/Activity;->mCalled:Z

    if-nez v8, :cond_6

    .line 3313
    new-instance v8, Landroid/app/SuperNotCalledException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " did not call through to super.onPause()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Landroid/app/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3321
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .line 3322
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3323
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to pause activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 3329
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    iput-boolean v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 3333
    iget-object v9, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    monitor-enter v9

    .line 3334
    :try_start_4
    iget-object v8, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3335
    .local v4, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3336
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3337
    .local v5, size:I
    :cond_7
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v5, :cond_0

    .line 3338
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/OnActivityPausedListener;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v8, v9}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 3337
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3335
    .end local v2           #i:I
    .end local v4           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    .end local v5           #size:I
    :catchall_0
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 3321
    .end local v6           #state:Landroid/os/Bundle;
    .restart local v7       #state:Landroid/os/Bundle;
    :catch_2
    move-exception v1

    move-object v6, v7

    .end local v7           #state:Landroid/os/Bundle;
    .restart local v6       #state:Landroid/os/Bundle;
    goto :goto_2

    .line 3318
    .end local v6           #state:Landroid/os/Bundle;
    .restart local v7       #state:Landroid/os/Bundle;
    :catch_3
    move-exception v1

    move-object v6, v7

    .end local v7           #state:Landroid/os/Bundle;
    .restart local v6       #state:Landroid/os/Bundle;
    goto/16 :goto_1
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;
    .locals 2
    .parameter "token"
    .parameter "finished"
    .parameter "saveState"

    .prologue
    .line 3271
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3272
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final performRestartActivity(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 3519
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3520
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_0

    .line 3521
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 3522
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3524
    :cond_0
    return-void
.end method

.method public final performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 7
    .parameter "token"
    .parameter "clearHide"

    .prologue
    const/4 v5, 0x0

    .line 2978
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2981
    .local v3, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v3, :cond_5

    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_5

    .line 2982
    if-eqz p2, :cond_0

    .line 2983
    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 2984
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v5, v4, Landroid/app/Activity;->mStartedActivity:Z

    .line 2987
    :cond_0
    :try_start_0
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 2988
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2989
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 2991
    :cond_1
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 2992
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2993
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 2997
    :cond_2
    iget-object v4, p0, Landroid/app/ActivityThread;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/callbacks/ActivityThreadCallbacks;

    .line 2998
    .local v0, cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Lcom/htc/callbacks/ActivityThreadCallbacks;->beforePerformResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3016
    .end local v0           #cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 3017
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3018
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to resume activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3001
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->performResume()V

    .line 3005
    iget-object v4, p0, Landroid/app/ActivityThread;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/callbacks/ActivityThreadCallbacks;

    .line 3006
    .restart local v0       #cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Lcom/htc/callbacks/ActivityThreadCallbacks;->afterPerformResume(Landroid/app/Activity;)V

    goto :goto_1

    .line 3010
    .end local v0           #cb:Lcom/htc/callbacks/ActivityThreadCallbacks;
    :cond_4
    const/16 v4, 0x7546

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3013
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 3014
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3015
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3025
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    return-object v3
.end method

.method final performStopActivity(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "saveState"

    .prologue
    .line 3345
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3346
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    .line 3347
    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3266
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 3267
    return-void
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 2086
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 2087
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2088
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v0, :cond_0

    .line 2089
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2090
    .restart local v0       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2093
    monitor-exit v2

    .line 2094
    return-void

    .line 2093
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;Z)Z
    .locals 12
    .parameter "provider"
    .parameter "stable"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5036
    if-nez p1, :cond_0

    .line 5142
    :goto_0
    return v7

    .line 5040
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5041
    .local v1, jBinder:Landroid/os/IBinder;
    iget-object v8, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 5042
    :try_start_0
    iget-object v9, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ProviderRefCount;

    .line 5043
    .local v5, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v5, :cond_1

    .line 5045
    monitor-exit v8

    goto :goto_0

    .line 5143
    .end local v5           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 5048
    .restart local v5       #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->debugProviderRef()Z

    move-result v0

    .line 5049
    .local v0, debugProviderRef:Z
    const/4 v4, 0x0

    .line 5050
    .local v4, pName:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 5051
    iget-object v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v9, v9, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-nez v9, :cond_3

    const-string v4, ""

    .line 5052
    :goto_1
    const-string v9, "ActivityThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "releaseProvider stable="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; prc.s="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; prc.u="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; prc.removePending="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v5, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5060
    :cond_2
    const/4 v2, 0x0

    .line 5061
    .local v2, lastRef:Z
    if-eqz p2, :cond_b

    .line 5062
    iget v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v9, :cond_4

    .line 5065
    monitor-exit v8

    goto :goto_0

    .line 5051
    .end local v2           #lastRef:Z
    :cond_3
    iget-object v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v9, v9, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 5067
    .restart local v2       #lastRef:Z
    :cond_4
    iget v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 5068
    iget v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v9, :cond_7

    .line 5075
    iget v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_a

    move v2, v6

    .line 5078
    :goto_2
    if-eqz v0, :cond_5

    .line 5079
    :try_start_2
    const-string v9, "ActivityThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "releaseProvider: No longer stable w/lastRef="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5082
    :cond_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    iget-object v10, v5, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v10, v10, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v11, -0x1

    if-eqz v2, :cond_6

    move v7, v6

    :cond_6
    invoke-interface {v9, v10, v11, v7}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5116
    :cond_7
    :goto_3
    if-eqz v2, :cond_9

    .line 5117
    :try_start_3
    iget-boolean v7, v5, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v7, :cond_f

    .line 5124
    if-eqz v0, :cond_8

    .line 5125
    const-string v7, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "releaseProvider: Enqueueing pending removal - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5128
    :cond_8
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 5129
    iget-object v7, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v9, 0x83

    invoke-virtual {v7, v9, v5}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 5130
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v7, v3}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 5136
    .end local v3           #msg:Landroid/os/Message;
    :goto_4
    invoke-static {}, Landroid/app/ActivityThread;->isLogProviderEnable()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 5137
    const-string v7, "Providers"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<<releaseProvider: provider = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", refcount(s) = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", refcount(u) = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5142
    :cond_9
    monitor-exit v8

    move v7, v6

    goto/16 :goto_0

    :cond_a
    move v2, v7

    .line 5075
    goto/16 :goto_2

    .line 5089
    :cond_b
    iget v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v9, :cond_c

    .line 5092
    monitor-exit v8

    goto/16 :goto_0

    .line 5094
    :cond_c
    iget v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 5095
    iget v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v9, :cond_7

    .line 5099
    iget v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v9, :cond_e

    move v2, v6

    .line 5100
    :goto_5
    if-nez v2, :cond_7

    .line 5103
    if-eqz v0, :cond_d

    .line 5104
    :try_start_4
    const-string v7, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "releaseProvider: No longer unstable - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5107
    :cond_d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v9, v5, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v9, v9, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-interface {v7, v9, v10, v11}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 5109
    :catch_0
    move-exception v7

    goto/16 :goto_3

    :cond_e
    move v2, v7

    .line 5099
    goto :goto_5

    .line 5132
    :cond_f
    :try_start_5
    const-string v7, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate remove pending of provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v10, v10, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 5084
    :catch_1
    move-exception v7

    goto/16 :goto_3
.end method

.method public final requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V
    .locals 7
    .parameter "token"
    .parameter
    .parameter
    .parameter "configChanges"
    .parameter "notResumed"
    .parameter "config"
    .parameter "fromServer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 3876
    .local p2, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v3, 0x0

    .line 3878
    .local v3, target:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v6, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 3879
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 3880
    iget-object v5, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3881
    .local v2, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v5, p1, :cond_7

    .line 3882
    move-object v3, v2

    .line 3883
    if-eqz p2, :cond_0

    .line 3884
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 3885
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3890
    :cond_0
    :goto_1
    if-eqz p3, :cond_9

    .line 3891
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 3892
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 3901
    .end local v2           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .local v4, target:Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_2
    if-nez v4, :cond_8

    .line 3902
    :try_start_1
    new-instance v3, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v3}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3903
    .end local v4           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    :try_start_2
    iput-object p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 3904
    iput-object p2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 3905
    iput-object p3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 3906
    if-nez p7, :cond_2

    .line 3907
    iget-object v5, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3908
    .local v0, existing:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 3909
    iget-boolean v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 3911
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 3913
    .end local v0           #existing:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_2
    iget-object v5, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3914
    const/16 v5, 0x7e

    invoke-direct {p0, v5, v3}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 3917
    :goto_3
    if-eqz p7, :cond_3

    .line 3918
    iput-boolean p5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 3919
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 3921
    :cond_3
    if-eqz p6, :cond_4

    .line 3922
    iput-object p6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 3924
    :cond_4
    iget v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v5, p4

    iput v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 3925
    monitor-exit v6

    .line 3926
    return-void

    .line 3887
    .restart local v2       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_5
    iput-object p2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    goto :goto_1

    .line 3925
    .end local v2           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 3894
    .restart local v2       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_6
    :try_start_3
    iput-object p3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v3

    .end local v3           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_2

    .line 3879
    .end local v4           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3925
    .end local v2           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_4

    .end local v3           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_8
    move-object v3, v4

    .end local v4           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_3

    :cond_9
    move-object v4, v3

    .end local v3           #target:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4       #target:Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_2
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 3
    .parameter "intent"

    .prologue
    .line 2107
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2109
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 2111
    const/4 v1, -0x2

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 2114
    :cond_0
    return-object v0
.end method

.method final scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 2184
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    .line 2185
    .local v0, cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 2186
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 2187
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 2188
    const/16 v1, 0x77

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 2189
    return-void
.end method

.method scheduleGcIdler()V
    .locals 2

    .prologue
    .line 2058
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_0

    .line 2059
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2060
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2062
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2063
    return-void
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 2
    .parameter "token"
    .parameter "id"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2154
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2155
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2156
    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;
    .locals 2
    .parameter "parent"
    .parameter "id"
    .parameter "intent"
    .parameter "activityInfo"
    .parameter "token"
    .parameter "state"
    .parameter "lastNonConfigurationInstances"

    .prologue
    .line 2120
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 2121
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 2122
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 2123
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 2124
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2125
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 2126
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 2127
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2128
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 2141
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 2098
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 2099
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2100
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v0, :cond_0

    .line 2101
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2103
    :cond_0
    monitor-exit v2

    .line 2104
    return-void

    .line 2103
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unscheduleGcIdler()V
    .locals 2

    .prologue
    .line 2066
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_0

    .line 2067
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2068
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2070
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2071
    return-void
.end method
