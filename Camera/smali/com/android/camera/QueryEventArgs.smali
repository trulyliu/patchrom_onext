.class public Lcom/android/camera/QueryEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "QueryEventArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/event/EventArgs;"
    }
.end annotation


# instance fields
.field private m_HasResult:Z

.field private m_Result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, this:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<TTResult;>;"
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<TTResult;>;"
    iget-object v0, p0, Lcom/android/camera/QueryEventArgs;->m_Result:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasResult()Z
    .locals 1

    .prologue
    .line 26
    .local p0, this:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<TTResult;>;"
    iget-boolean v0, p0, Lcom/android/camera/QueryEventArgs;->m_HasResult:Z

    return v0
.end method

.method public final setResult(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<TTResult;>;"
    .local p1, result:Ljava/lang/Object;,"TTResult;"
    iput-object p1, p0, Lcom/android/camera/QueryEventArgs;->m_Result:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/QueryEventArgs;->m_HasResult:Z

    .line 36
    return-void
.end method
