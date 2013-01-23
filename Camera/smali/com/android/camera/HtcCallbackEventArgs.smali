.class public Lcom/android/camera/HtcCallbackEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "HtcCallbackEventArgs.java"


# instance fields
.field public final arg1:I

.field public final arg2:I

.field public final type:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "type"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 19
    iput p1, p0, Lcom/android/camera/HtcCallbackEventArgs;->type:I

    .line 20
    iput p2, p0, Lcom/android/camera/HtcCallbackEventArgs;->arg1:I

    .line 21
    iput p3, p0, Lcom/android/camera/HtcCallbackEventArgs;->arg2:I

    .line 22
    return-void
.end method
