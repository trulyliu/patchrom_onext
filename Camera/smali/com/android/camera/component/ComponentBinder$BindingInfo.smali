.class public Lcom/android/camera/component/ComponentBinder$BindingInfo;
.super Ljava/lang/Object;
.source "ComponentBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ComponentBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindingInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final source:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/android/camera/component/ComponentBinder$BindingInfo;,"Lcom/android/camera/component/ComponentBinder$BindingInfo<TT;>;"
    .local p1, source:Ljava/lang/Object;,"TT;"
    .local p2, target:Ljava/lang/Object;,"TT;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lcom/android/camera/component/ComponentBinder$BindingInfo;->target:Ljava/lang/Object;

    .line 45
    return-void
.end method
