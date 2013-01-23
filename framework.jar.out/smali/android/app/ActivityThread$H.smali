.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CHANGE_TOP_APP:I = 0xc8

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_MAIN_HANDLER_LOG:I = 0xc9

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final NEW_INTENT:I = 0x70

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REPORT_APP_TRANSITION_END:I = 0xca

.field public static final REQUEST_THUMBNAIL:I = 0x75

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1212
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private maybeSnapshot()V
    .locals 8

    .prologue
    .line 1557
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1560
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1561
    .local v3, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1563
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1564
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1565
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1568
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1569
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-nez v4, :cond_2

    .line 1570
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid PackageManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1575
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1576
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot get package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1578
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    goto :goto_0

    .line 1573
    .restart local v0       #context:Landroid/content/Context;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 1324
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x40

    .line 1328
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1554
    :goto_0
    :pswitch_0
    return-void

    .line 1330
    :pswitch_1
    const-string v6, "activityStart"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1331
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1333
    .local v3, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v3, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v6, v7, v8}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v6

    iput-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1335
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    invoke-static {v6, v3, v9}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    .line 1336
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1339
    .end local v3           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_2
    const-string v6, "activityRestart"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1340
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1341
    .restart local v3       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    invoke-static {v6, v3}, Landroid/app/ActivityThread;->access$700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 1342
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1345
    .end local v3           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_3
    const-string v6, "activityPause"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1346
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_0

    :goto_1
    iget v10, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V
    invoke-static {v9, v6, v8, v7, v10}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    .line 1347
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1348
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :cond_0
    move v7, v8

    .line 1346
    goto :goto_1

    .line 1351
    :pswitch_4
    const-string v6, "activityPause"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1352
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_1

    move v8, v7

    :cond_1
    iget v10, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V
    invoke-static {v9, v6, v7, v8, v10}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    .line 1353
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1356
    :pswitch_5
    const-string v6, "activityStop"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1357
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v9, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v8, v6, v7, v9}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1358
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1361
    :pswitch_6
    const-string v6, "activityStop"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1362
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v9, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v7, v6, v8, v9}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1363
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1366
    :pswitch_7
    const-string v6, "activityShowWindow"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1367
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v8, v6, v7}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1368
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1371
    :pswitch_8
    const-string v6, "activityHideWindow"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1372
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v7, v6, v8}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1373
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1376
    :pswitch_9
    const-string v6, "activityResume"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1377
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {v9, v6, v7, v8}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZ)V

    .line 1379
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1382
    :pswitch_a
    const-string v6, "activityDeliverResult"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1383
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ResultData;

    #calls: Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    .line 1384
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1387
    :pswitch_b
    const-string v6, "activityDestroy"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1388
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_3

    :goto_2
    iget v10, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    invoke-static {v9, v6, v7, v10, v8}, Landroid/app/ActivityThread;->access$1200(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    .line 1390
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_3
    move v7, v8

    .line 1388
    goto :goto_2

    .line 1393
    :pswitch_c
    const-string v6, "bindApplication"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1394
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$AppBindData;

    .line 1396
    .local v1, data:Landroid/app/ActivityThread$AppBindData;
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v2

    .line 1397
    .local v2, performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1398
    .local v4, startTime:J
    if-lez v2, :cond_4

    .line 1399
    const-string v6, "Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " handleBindApplication"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_4
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    invoke-static {v6, v1}, Landroid/app/ActivityThread;->access$1300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 1403
    if-lez v2, :cond_5

    .line 1404
    const-string v6, "Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " handleBindApplication, "

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

    .line 1406
    :cond_5
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1409
    .end local v1           #data:Landroid/app/ActivityThread$AppBindData;
    .end local v2           #performanceFlag:I
    .end local v4           #startTime:J
    :pswitch_d
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v6, :cond_6

    .line 1410
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->onTerminate()V

    .line 1412
    :cond_6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 1415
    :pswitch_e
    const-string v6, "activityNewIntent"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1416
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$NewIntentData;

    #calls: Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    .line 1417
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1420
    :pswitch_f
    const-string v6, "broadcastReceiveComp"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1421
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ReceiverData;

    #calls: Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 1422
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1423
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1426
    :pswitch_10
    const-string/jumbo v6, "serviceCreate"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1427
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$CreateServiceData;

    #calls: Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 1428
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1431
    :pswitch_11
    const-string/jumbo v6, "serviceBind"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1432
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$BindServiceData;

    #calls: Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1433
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1436
    :pswitch_12
    const-string/jumbo v6, "serviceUnbind"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1437
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$BindServiceData;

    #calls: Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1438
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1441
    :pswitch_13
    const-string/jumbo v6, "serviceStart"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1442
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ServiceArgsData;

    #calls: Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 1443
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1446
    :pswitch_14
    const-string/jumbo v6, "serviceStop"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1447
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1448
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1449
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1452
    :pswitch_15
    const-string/jumbo v6, "requestThumbnail"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1453
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleRequestThumbnail(Landroid/os/IBinder;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2100(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1454
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1457
    :pswitch_16
    const-string v6, "configChanged"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1458
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/res/Configuration;

    invoke-virtual {v7, v6, v9}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1459
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1462
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 1463
    .local v0, cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v6, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v7, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v8, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1466
    .end local v0           #cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_18
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v6}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_0

    .line 1469
    :pswitch_19
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1472
    :pswitch_1a
    const-string v6, "lowMemory"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1473
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v6}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 1474
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1477
    :pswitch_1b
    const-string v6, "activityConfigChanged"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1478
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v7, v6}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 1479
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1482
    :pswitch_1c
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_7

    :goto_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ProfilerControlData;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v7, v6, v8}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ActivityThread$ProfilerControlData;I)V

    goto/16 :goto_0

    :cond_7
    move v7, v8

    goto :goto_3

    .line 1485
    :pswitch_1d
    const-string v6, "backupCreateAgent"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1486
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$CreateBackupAgentData;

    #calls: Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1487
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1490
    :pswitch_1e
    const-string v6, "backupDestroyAgent"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1491
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$CreateBackupAgentData;

    #calls: Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1492
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1495
    :pswitch_1f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 1498
    :pswitch_20
    const-string/jumbo v6, "providerRemove"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1499
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v7, v6}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 1500
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1503
    :pswitch_21
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v6}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_0

    .line 1506
    :pswitch_22
    const-string v6, "broadcastPackage"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1507
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 1508
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1511
    :pswitch_23
    new-instance v7, Landroid/app/RemoteServiceException;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v6}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1513
    :pswitch_24
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_8

    :goto_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v7, v6}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_0

    :cond_8
    move v7, v8

    goto :goto_4

    .line 1516
    :pswitch_25
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1519
    :pswitch_26
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1522
    :pswitch_27
    const-string/jumbo v6, "sleeping"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1523
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_9

    :goto_5
    #calls: Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V
    invoke-static {v9, v6, v7}, Landroid/app/ActivityThread;->access$2700(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1524
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_9
    move v7, v8

    .line 1523
    goto :goto_5

    .line 1527
    :pswitch_28
    const-string/jumbo v6, "setCoreSettings"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1528
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    #calls: Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2800(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 1529
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1532
    :pswitch_29
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$UpdateCompatibilityData;

    #calls: Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_0

    .line 1535
    :pswitch_2a
    const-string/jumbo v6, "trimMemory"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1536
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    .line 1537
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1540
    :pswitch_2b
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v7, v6, v8}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    .line 1545
    :pswitch_2c
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleReportAppTransitionEnd(Landroid/os/IBinder;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$3000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1550
    :pswitch_2d
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    #calls: Landroid/app/ActivityThread;->handleChangeTopApp(I)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$3100(Landroid/app/ActivityThread;I)V

    goto/16 :goto_0

    .line 1328
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_11
        :pswitch_12
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_2
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_26
        :pswitch_2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2d
        :pswitch_0
        :pswitch_2c
    .end packed-switch
.end method
