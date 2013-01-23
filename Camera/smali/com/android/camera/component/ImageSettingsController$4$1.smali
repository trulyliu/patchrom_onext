.class Lcom/android/camera/component/ImageSettingsController$4$1;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageSettingsController$4;->run()V
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
.field final synthetic this$1:Lcom/android/camera/component/ImageSettingsController$4;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageSettingsController$4;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/camera/component/ImageSettingsController$4$1;->this$1:Lcom/android/camera/component/ImageSettingsController$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
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
    .line 429
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$4$1;->this$1:Lcom/android/camera/component/ImageSettingsController$4;

    iget-object v0, v0, Lcom/android/camera/component/ImageSettingsController$4;->this$0:Lcom/android/camera/component/ImageSettingsController;

    new-instance v1, Lcom/android/camera/component/ImageSettingsController$4$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ImageSettingsController$4$1$1;-><init>(Lcom/android/camera/component/ImageSettingsController$4$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 445
    :cond_0
    return-void
.end method
