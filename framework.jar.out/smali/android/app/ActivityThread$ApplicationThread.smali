.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x1

.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%17s %8s %8s %8s %8s %8s"

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%17s %8d"

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%17s %8d %17s %8d"

.field private static final TWO_COUNT_COLUMNS_DB:Ljava/lang/String; = "%20s %8d %20s %8d"


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 539
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;ZZ)Landroid/os/Debug$MemoryInfo;
    .locals 52
    .parameter "pw"
    .parameter "checkin"
    .parameter "all"

    .prologue
    .line 953
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v44

    const-wide/16 v46, 0x400

    div-long v30, v44, v46

    .line 954
    .local v30, nativeMax:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v44

    const-wide/16 v46, 0x400

    div-long v26, v44, v46

    .line 955
    .local v26, nativeAllocated:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v44

    const-wide/16 v46, 0x400

    div-long v28, v44, v46

    .line 957
    .local v28, nativeFree:J
    new-instance v25, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v25 .. v25}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 958
    .local v25, memInfo:Landroid/os/Debug$MemoryInfo;
    invoke-static/range {v25 .. v25}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 960
    if-nez p3, :cond_1

    .line 1164
    :cond_0
    :goto_0
    return-object v25

    .line 964
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v38

    .line 967
    .local v38, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v44

    const-wide/16 v46, 0x400

    div-long v22, v44, v46

    .line 970
    .local v22, heapLimit:J
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v44

    const-wide/16 v46, 0x400

    div-long v17, v44, v46

    .line 971
    .local v17, dalvikMax:J
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v44

    const-wide/16 v46, 0x400

    div-long v15, v44, v46

    .line 972
    .local v15, dalvikFree:J
    sub-long v13, v17, v15

    .line 973
    .local v13, dalvikAllocated:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v40

    .line 974
    .local v40, viewInstanceCount:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v42

    .line 975
    .local v42, viewRootInstanceCount:J
    const-class v44, Landroid/app/ContextImpl;

    invoke-static/range {v44 .. v44}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v7

    .line 976
    .local v7, appContextInstanceCount:J
    const-class v44, Landroid/app/Activity;

    invoke-static/range {v44 .. v44}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v5

    .line 977
    .local v5, activityInstanceCount:J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v20

    .line 978
    .local v20, globalAssetCount:I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v21

    .line 979
    .local v21, globalAssetManagerCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v11

    .line 980
    .local v11, binderLocalObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v12

    .line 981
    .local v12, binderProxyObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v10

    .line 982
    .local v10, binderDeathObjectCount:I
    const-class v44, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-static/range {v44 .. v44}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v32

    .line 983
    .local v32, openSslSocketCount:J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v39

    .line 986
    .local v39, stats:Landroid/database/sqlite/SQLiteDebug$PagerStats;
    if-eqz p2, :cond_4

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v44, v0

    if-eqz v44, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 993
    .local v37, processName:Ljava/lang/String;
    :goto_1
    const/16 v44, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 994
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v44

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 995
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 998
    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 999
    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1000
    const-string v44, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1001
    add-long v44, v30, v17

    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1004
    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1005
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1006
    const-string v44, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1007
    add-long v44, v26, v13

    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1010
    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1011
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1012
    const-string v44, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1013
    add-long v44, v28, v15

    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1016
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1017
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1018
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1019
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v44, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1022
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1023
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1024
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1025
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v44, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1026
    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1029
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1030
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1031
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1032
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v44, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1033
    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1036
    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1037
    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1038
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1039
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1041
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1042
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1043
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1044
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1046
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1047
    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1050
    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v44, v0

    move/from16 v0, v44

    div-int/lit16 v0, v0, 0x400

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1051
    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v44, v0

    move/from16 v0, v44

    div-int/lit16 v0, v0, 0x400

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1052
    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    move/from16 v44, v0

    move/from16 v0, v44

    div-int/lit16 v0, v0, 0x400

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1053
    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v44, v0

    move/from16 v0, v44

    div-int/lit16 v0, v0, 0x400

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1054
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v24

    move/from16 v1, v44

    if-ge v0, v1, :cond_3

    .line 1055
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1056
    .local v19, dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1058
    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1059
    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1060
    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 989
    .end local v19           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v24           #i:I
    .end local v37           #processName:Ljava/lang/String;
    :cond_2
    const-string/jumbo v37, "unknown"

    goto/16 :goto_1

    .line 1063
    .restart local v24       #i:I
    .restart local v37       #processName:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    .line 1069
    .end local v24           #i:I
    .end local v37           #processName:Ljava/lang/String;
    :cond_4
    const-string v44, "%17s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "Shared"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    const-string v47, "Private"

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-string v47, "Heap"

    aput-object v47, v45, v46

    const/16 v46, 0x5

    const-string v47, "Heap"

    aput-object v47, v45, v46

    const/16 v46, 0x6

    const-string v47, "Heap"

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    const-string v44, "%17s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "Pss"

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "Dirty"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    const-string v47, "Dirty"

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-string v47, "Size"

    aput-object v47, v45, v46

    const/16 v46, 0x5

    const-string v47, "Alloc"

    aput-object v47, v45, v46

    const/16 v46, 0x6

    const-string v47, "Free"

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    const-string v44, "%17s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "------"

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "------"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    const-string v47, "------"

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-string v47, "------"

    aput-object v47, v45, v46

    const/16 v46, 0x5

    const-string v47, "------"

    aput-object v47, v45, v46

    const/16 v46, 0x6

    const-string v47, "------"

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    const-string v44, "%17s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Native"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x3

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x4

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x5

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x6

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1075
    const-string v44, "%17s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Dalvik"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x3

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x4

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x6

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v35, v0

    .line 1079
    .local v35, otherPss:I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v36, v0

    .line 1080
    .local v36, otherSharedDirty:I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v34, v0

    .line 1082
    .local v34, otherPrivateDirty:I
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_3
    const/16 v44, 0x9

    move/from16 v0, v24

    move/from16 v1, v44

    if-ge v0, v1, :cond_5

    .line 1083
    const-string v44, "%17s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-static/range {v24 .. v24}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x5

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x6

    const-string v47, ""

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1086
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v44

    sub-int v35, v35, v44

    .line 1087
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v44

    sub-int v36, v36, v44

    .line 1088
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v44

    sub-int v34, v34, v44

    .line 1082
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    .line 1091
    :cond_5
    const-string v44, "%17s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Unknown"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x3

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x5

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x6

    const-string v47, ""

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1093
    const-string v44, "%17s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "TOTAL"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-virtual/range {v25 .. v25}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    invoke-virtual/range {v25 .. v25}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x3

    invoke-virtual/range {v25 .. v25}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x4

    add-long v47, v30, v17

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x5

    add-long v47, v26, v13

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x6

    add-long v47, v28, v15

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    const-string v44, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    const-string v44, " Objects"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    const-string v44, "%17s %8d %17s %8d"

    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Views:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "ViewRootImpl:"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    const-string v44, "%17s %8d %17s %8d"

    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "AppContexts:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "Activities:"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1106
    const-string v44, "%17s %8d %17s %8d"

    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Assets:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "AssetManagers:"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1109
    const-string v44, "%17s %8d %17s %8d"

    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Local Binders:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "Proxy Binders:"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    const-string v44, "%17s %8d"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Death Recipients:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    const-string v44, "%17s %8d"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "OpenSSL Sockets:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1116
    const-string v44, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    const-string v44, " SQL"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    const-string v44, "%17s %8d"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "MEMORY_USED:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v47, v0

    move/from16 v0, v47

    div-int/lit16 v0, v0, 0x400

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    const-string v44, "%17s %8d %17s %8d"

    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "PAGECACHE_OVERFLOW:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    move/from16 v47, v0

    move/from16 v0, v47

    div-int/lit16 v0, v0, 0x400

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "MALLOC_SIZE:"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v47, v0

    move/from16 v0, v47

    div-int/lit16 v0, v0, 0x400

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    const-string v44, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1123
    .local v4, N:I
    if-lez v4, :cond_9

    .line 1124
    const-string v44, " DATABASES"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    const-string v44, "  %8s %8s %14s %14s  %s"

    const/16 v45, 0x5

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string/jumbo v47, "pgsz"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "dbsz"

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "Lookaside(b)"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    const-string v47, "cache"

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-string v47, "Dbname"

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    const/16 v24, 0x0

    :goto_4
    move/from16 v0, v24

    if-ge v0, v4, :cond_9

    .line 1128
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1129
    .restart local v19       #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string v45, "  %8s %8s %14s %14s  %s"

    const/16 v44, 0x5

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v48, v0

    const-wide/16 v50, 0x0

    cmp-long v44, v48, v50

    if-lez v44, :cond_6

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v44

    :goto_5
    aput-object v44, v46, v47

    const/16 v47, 0x1

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v48, v0

    const-wide/16 v50, 0x0

    cmp-long v44, v48, v50

    if-lez v44, :cond_7

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v44

    :goto_6
    aput-object v44, v46, v47

    const/16 v47, 0x2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v44, v0

    if-lez v44, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v44

    :goto_7
    aput-object v44, v46, v47

    const/16 v44, 0x3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v47, v0

    aput-object v47, v46, v44

    const/16 v44, 0x4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v47, v0

    aput-object v47, v46, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 1129
    :cond_6
    const-string v44, " "

    goto :goto_5

    :cond_7
    const-string v44, " "

    goto :goto_6

    :cond_8
    const-string v44, " "

    goto :goto_7

    .line 1138
    .end local v19           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    :cond_9
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v9

    .line 1139
    .local v9, assetAlloc:Ljava/lang/String;
    if-eqz v9, :cond_a

    .line 1140
    const-string v44, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1141
    const-string v44, " Asset Allocations"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1142
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    :cond_a
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Uptime: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v45

    invoke-virtual/range {v44 .. v46}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " Realtime now="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v45

    invoke-virtual/range {v44 .. v46}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1148
    const/16 v44, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_b

    .line 1149
    const-string v44, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    const-string v44, " Cursor"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpRecordMap(Ljava/io/PrintWriter;)V

    .line 1156
    :cond_b
    const/16 v44, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_0

    .line 1157
    const-string v44, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, " Bitmap ( Threshold: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmapSize()I

    move-result v45

    move/from16 v0, v45

    mul-int/lit16 v0, v0, 0x400

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " Bytes)"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    invoke-static/range {p1 .. p1}, Landroid/graphics/Bitmap;->dumpStackTrace(Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method private varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "pw"
    .parameter "format"
    .parameter "objs"

    .prologue
    .line 1187
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    return-void
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 557
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 562
    :cond_1
    monitor-exit v1

    .line 563
    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 4
    .parameter "processName"
    .parameter "appInfo"
    .parameter
    .parameter "instrumentationName"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .parameter "instrumentationArgs"
    .parameter "instrumentationWatcher"
    .parameter "debugMode"
    .parameter "enableOpenGlTrace"
    .parameter "isRestrictedBackupMode"
    .parameter "persistent"
    .parameter "config"
    .parameter "compatInfo"
    .parameter
    .parameter "coreSettings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "IZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 778
    .local p3, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p16, services:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p16, :cond_0

    .line 780
    invoke-static/range {p16 .. p16}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 783
    :cond_0
    move-object/from16 v0, p17

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 785
    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 786
    .local v1, data:Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 787
    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 788
    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 789
    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 790
    iput-object p8, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 791
    iput-object p9, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 792
    iput p10, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 793
    iput-boolean p11, v1, Landroid/app/ActivityThread$AppBindData;->enableOpenGlTrace:Z

    .line 794
    move/from16 v0, p12

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 795
    move/from16 v0, p13

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 796
    move-object/from16 v0, p14

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 797
    move-object/from16 v0, p15

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 798
    iput-object p5, v1, Landroid/app/ActivityThread$AppBindData;->initProfileFile:Ljava/lang/String;

    .line 799
    iput-object p6, v1, Landroid/app/ActivityThread$AppBindData;->initProfileFd:Landroid/os/ParcelFileDescriptor;

    .line 800
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$AppBindData;->initAutoStopProfiler:Z

    .line 801
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x6e

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 802
    return-void
.end method

.method public clearDnsCache()V
    .locals 0

    .prologue
    .line 827
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 828
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .parameter "cmd"
    .parameter "packages"

    .prologue
    .line 900
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 901
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "activitytoken"
    .parameter "prefix"
    .parameter "args"

    .prologue
    .line 909
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 911
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 912
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 913
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 914
    iput-object p4, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 915
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x88

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v1

    .line 917
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 1175
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1176
    .local v1, pw:Ljava/io/PrintWriter;
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1177
    .local v0, printer:Landroid/util/PrintWriterPrinter;
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1179
    return-void
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 1169
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
    invoke-static {v0, p1}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    .line 1170
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerImpl;->dumpGfxInfo(Ljava/io/FileDescriptor;)V

    .line 1171
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "managed"
    .parameter "path"
    .parameter "fd"

    .prologue
    .line 877
    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 878
    .local v0, dhd:Landroid/app/ActivityThread$DumpHeapData;
    iput-object p2, v0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 879
    iput-object p3, v0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 880
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x87

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v2, v3, v0, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 881
    return-void

    .line 880
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final dumpMainHandlerLog()V
    .locals 4

    .prologue
    .line 567
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    new-instance v1, Landroid/util/LogPrinter;

    const/4 v2, 0x6

    const-string v3, "ActivityThread"

    invoke-direct {v1, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v2, "MSG: "

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    const-string v0, "ActivityThread"

    const-string v1, "Fail to dump looper because it is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;ZZ[Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    .locals 3
    .parameter "fd"
    .parameter "checkin"
    .parameter "all"
    .parameter "args"

    .prologue
    .line 943
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 944
    .local v0, fout:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 946
    .local v1, pw:Ljava/io/PrintWriter;
    :try_start_0
    invoke-direct {p0, v1, p2, p3}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;ZZ)Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 948
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 946
    return-object v2

    .line 948
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v2
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "providertoken"
    .parameter "args"

    .prologue
    .line 929
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 931
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 932
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 933
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 934
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x8d

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :goto_0
    return-void

    .line 935
    :catch_0
    move-exception v1

    .line 936
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpProvider failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final dumpProviderStackTrace()V
    .locals 1

    .prologue
    .line 585
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDumpProviderStackOnDying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-static {}, Landroid/app/ActivityThread;->dumpCursorStackTrace()V

    .line 588
    :cond_0
    return-void
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "servicetoken"
    .parameter "args"

    .prologue
    .line 840
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 842
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 843
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 844
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 845
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x7b

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v1

    .line 847
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getBitmapAllocation()I
    .locals 1

    .prologue
    .line 579
    invoke-static {}, Landroid/graphics/Bitmap;->getTotalBitmapSize()I

    move-result v0

    return v0
.end method

.method public getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
    .locals 0
    .parameter "outInfo"

    .prologue
    .line 896
    invoke-static {p1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 897
    return-void
.end method

.method public processInBackground()V
    .locals 3

    .prologue
    const/16 v2, 0x78

    .line 835
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 836
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 837
    return-void
.end method

.method public profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .parameter "start"
    .parameter "path"
    .parameter "fd"
    .parameter "profileType"

    .prologue
    .line 870
    new-instance v0, Landroid/app/ActivityThread$ProfilerControlData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ProfilerControlData;-><init>()V

    .line 871
    .local v0, pcd:Landroid/app/ActivityThread$ProfilerControlData;
    iput-object p2, v0, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    .line 872
    iput-object p3, v0, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 873
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x7f

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v2, v3, v0, v1, p4}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 874
    return-void

    .line 873
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestThumbnail(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 813
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x75

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 814
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 865
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7d

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 866
    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 3
    .parameter "token"
    .parameter "intent"
    .parameter "rebind"

    .prologue
    .line 734
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 735
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 736
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 737
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 742
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 743
    return-void
.end method

.method public final scheduleChangeTopApp(I)V
    .locals 3
    .parameter "isTopApp"

    .prologue
    .line 923
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xc8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 924
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 817
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 818
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 819
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 904
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 905
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .parameter "app"
    .parameter "compatInfo"
    .parameter "backupMode"

    .prologue
    .line 705
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 706
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 707
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 708
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 710
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 711
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "token"
    .parameter "info"
    .parameter "compatInfo"

    .prologue
    .line 724
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 725
    .local v0, s:Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 726
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 727
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 729
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 730
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"

    .prologue
    .line 676
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6d

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v2, p1, v0, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 678
    return-void

    .line 676
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "app"
    .parameter "compatInfo"

    .prologue
    .line 715
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 716
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 717
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 719
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 720
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .prologue
    .line 805
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 806
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V
    .locals 4
    .parameter "intent"
    .parameter "token"
    .parameter "ident"
    .parameter "info"
    .parameter "curConfig"
    .parameter "compatInfo"
    .parameter "state"
    .parameter
    .parameter
    .parameter "notResumed"
    .parameter "isForward"
    .parameter "profileName"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p8, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p9, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v1}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 637
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 638
    iput p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 639
    iput-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 640
    iput-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 641
    iput-object p6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 642
    iput-object p7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 644
    iput-object p8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 645
    iput-object p9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 647
    iput-boolean p10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 648
    iput-boolean p11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 650
    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFile:Ljava/lang/String;

    .line 651
    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 652
    move/from16 v0, p14

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->autoStopProfiler:Z

    .line 654
    invoke-direct {p0, p5}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 656
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x64

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 657
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .prologue
    .line 861
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 862
    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    .line 668
    .local v0, data:Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    .line 669
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    .line 671
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 672
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 3
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 593
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x66

    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_1
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v2, v1, p1, v0, p4}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 598
    return-void

    .line 593
    :cond_0
    const/16 v0, 0x65

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 10
    .parameter "intent"
    .parameter "info"
    .parameter "compatInfo"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 684
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 686
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 687
    .local v8, component:Ljava/lang/String;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received scheduleReceiver() from server for broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    .end local v8           #component:Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/ActivityThread$ReceiverData;

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v1, p1

    move v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;)V

    .line 698
    .local v0, r:Landroid/app/ActivityThread$ReceiverData;
    iput-object p2, v0, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 699
    iput-object p3, v0, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 700
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x71

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 701
    return-void

    .line 690
    .end local v0           #r:Landroid/app/ActivityThread$ReceiverData;
    :catch_0
    move-exception v9

    .line 691
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    const-string/jumbo v2, "received scheduleReceiver() from server but intent data has problem"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0
    .parameter "receiver"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "dataStr"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 857
    invoke-interface/range {p1 .. p7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 858
    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .locals 8
    .parameter "token"
    .parameter
    .parameter
    .parameter "configChanges"
    .parameter "notResumed"
    .parameter "config"
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
            ")V"
        }
    .end annotation

    .prologue
    .line 662
    .local p2, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V

    .line 664
    return-void
.end method

.method public scheduleReportAppTransitionEnd(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 1207
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xca

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1208
    return-void
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "isForward"

    .prologue
    .line 618
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6b

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 619
    return-void

    .line 618
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    .line 623
    .local v0, res:Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    .line 624
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    .line 625
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 626
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "taskRemoved"
    .parameter "startId"
    .parameter "flags"
    .parameter "args"

    .prologue
    .line 755
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 756
    .local v0, s:Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 757
    iput-boolean p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 758
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 759
    iput p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 760
    iput-object p5, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 762
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 763
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "sleeping"

    .prologue
    .line 614
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x89

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 615
    return-void

    .line 614
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "showWindow"
    .parameter "configChanges"

    .prologue
    .line 602
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x67

    :goto_0
    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v0, p1, v2, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 605
    return-void

    .line 602
    :cond_0
    const/16 v0, 0x68

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 766
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 767
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .prologue
    .line 809
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 810
    return-void
.end method

.method public scheduleTrimMemory(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1203
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "intent"

    .prologue
    .line 746
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 747
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 748
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 750
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 751
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .parameter "token"
    .parameter "showWindow"

    .prologue
    .line 608
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x69

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v0, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 611
    return-void

    .line 608
    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .parameter "coreSettings"

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1192
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "port"
    .parameter "exclList"

    .prologue
    .line 831
    invoke-static {p1, p2, p3}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .parameter "group"

    .prologue
    .line 889
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 1183
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1184
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "pkg"
    .parameter "info"

    .prologue
    .line 1195
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 1196
    .local v0, ucd:Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 1197
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 1198
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1199
    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    .prologue
    .line 822
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 823
    return-void
.end method
