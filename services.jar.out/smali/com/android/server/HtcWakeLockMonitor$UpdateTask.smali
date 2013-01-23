.class Lcom/android/server/HtcWakeLockMonitor$UpdateTask;
.super Ljava/lang/Object;
.source "HtcWakeLockMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcWakeLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcWakeLockMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/HtcWakeLockMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/android/server/HtcWakeLockMonitor$UpdateTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/HtcWakeLockMonitor;Lcom/android/server/HtcWakeLockMonitor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1146
    invoke-direct {p0, p1}, Lcom/android/server/HtcWakeLockMonitor$UpdateTask;-><init>(Lcom/android/server/HtcWakeLockMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor$UpdateTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v0}, Lcom/android/server/HtcWakeLockMonitor;->access$2500(Lcom/android/server/HtcWakeLockMonitor;)Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    move-result-object v1

    monitor-enter v1

    .line 1150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor$UpdateTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v0}, Lcom/android/server/HtcWakeLockMonitor;->access$2500(Lcom/android/server/HtcWakeLockMonitor;)Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    move-result-object v0

    #calls: Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->update()V
    invoke-static {v0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->access$4800(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)V

    .line 1151
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor$UpdateTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v0}, Lcom/android/server/HtcWakeLockMonitor;->access$2500(Lcom/android/server/HtcWakeLockMonitor;)Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    move-result-object v0

    #calls: Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->updateAllHeldDuration()V
    invoke-static {v0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->access$4900(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)V

    .line 1152
    monitor-exit v1

    .line 1153
    return-void

    .line 1152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
