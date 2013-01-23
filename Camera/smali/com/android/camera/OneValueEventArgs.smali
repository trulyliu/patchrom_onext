.class public Lcom/android/camera/OneValueEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "OneValueEventArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/event/EventArgs;"
    }
.end annotation


# instance fields
.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, this:Lcom/android/camera/OneValueEventArgs;,"Lcom/android/camera/OneValueEventArgs<TTValue;>;"
    .local p1, value:Ljava/lang/Object;,"TTValue;"
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    .line 18
    return-void
.end method
