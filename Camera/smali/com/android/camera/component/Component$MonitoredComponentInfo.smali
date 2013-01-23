.class Lcom/android/camera/component/Component$MonitoredComponentInfo;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitoredComponentInfo"
.end annotation


# instance fields
.field public component:Lcom/android/camera/component/Component;

.field public final componentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/android/camera/component/Component;)V
    .locals 0
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/camera/component/Component;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, componentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/camera/component/Component$MonitoredComponentInfo;->componentClass:Ljava/lang/Class;

    .line 99
    iput-object p2, p0, Lcom/android/camera/component/Component$MonitoredComponentInfo;->component:Lcom/android/camera/component/Component;

    .line 100
    return-void
.end method
