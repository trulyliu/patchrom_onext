.class Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;
.super Lcom/android/camera/Handle;
.source "OperationTimeoutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/OperationTimeoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimerHandle"
.end annotation


# instance fields
.field public final callback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field public final callbackExecutor:Lcom/android/camera/IAsyncOperationExecutor;

.field public final startTime:J

.field public final timeout:J

.field public final userState:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "timeout"
    .parameter "callback"
    .parameter "callbackExecutor"
    .parameter "userState"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p4, p0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->callback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    .line 36
    iput-object p5, p0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->callbackExecutor:Lcom/android/camera/IAsyncOperationExecutor;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->startTime:J

    .line 38
    iput-wide p2, p0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->timeout:J

    .line 39
    iput-object p6, p0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->userState:Ljava/lang/Object;

    .line 40
    return-void
.end method
