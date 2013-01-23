.class Lcom/android/camera/component/HandShakeUI$10$1;
.super Ljava/lang/Object;
.source "HandShakeUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HandShakeUI$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/HandShakeUI$10;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HandShakeUI$10;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/camera/component/HandShakeUI$10$1;->this$1:Lcom/android/camera/component/HandShakeUI$10;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .line 304
    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI$10$1;->this$1:Lcom/android/camera/component/HandShakeUI$10;

    iget-object v0, v0, Lcom/android/camera/component/HandShakeUI$10;->this$0:Lcom/android/camera/component/HandShakeUI;

    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI$10$1;->this$1:Lcom/android/camera/component/HandShakeUI$10;

    iget-object v1, v1, Lcom/android/camera/component/HandShakeUI$10;->this$0:Lcom/android/camera/component/HandShakeUI;

    const/16 v2, 0x2711

    iget-object v5, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    const/4 v6, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/HandShakeUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 305
    return-void
.end method
