.class Lcom/android/server/am/ActivityStack$3;
.super Ljava/lang/Object;
.source "ActivityStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;)V
    .locals 0
    .parameter

    .prologue
    .line 5256
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5259
    const-string v0, "CpuWake"

    const-string v1, ">>nativeReleaseCpuPerfWakeLock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5260
    invoke-static {}, Lcom/android/server/PowerManagerService;->nativeReleaseCpuPerfWakeLock()V

    .line 5261
    const-string v0, "CpuWake"

    const-string v1, "<<nativeReleaseCpuPerfWakeLock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mAdjustCpuRef:I

    if-lez v0, :cond_2

    .line 5265
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mCpuPerf_cpu_count:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    .line 5266
    const-string v0, "CpuWake"

    const-string v1, ">>release mCpuPerf_cpu_count wakelock"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5267
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mCpuPerf_cpu_count:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 5268
    const-string v0, "CpuWake"

    const-string v1, "<<release mCpuPerf_cpu_count wakelock"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5270
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mCpuPerf_Freq:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_1

    .line 5271
    const-string v0, "CpuWake"

    const-string v1, ">>release mCpuPerf_Freq wakelock"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5272
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mCpuPerf_Freq:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 5273
    const-string v0, "CpuWake"

    const-string v1, "<<release mCpuPerf_Freq wakelock"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5275
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mAdjustCpuRef:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/am/ActivityStack;->mAdjustCpuRef:I

    .line 5278
    :cond_2
    return-void
.end method
