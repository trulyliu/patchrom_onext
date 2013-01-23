.class Lcom/android/camera/CameraThread$22;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->linkToRequiredServiceComponents()Z
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
        "Lcom/android/camera/RecordingLimitState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter

    .prologue
    .line 4570
    iput-object p1, p0, Lcom/android/camera/CameraThread$22;->this$0:Lcom/android/camera/CameraThread;

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
            "Lcom/android/camera/RecordingLimitState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/RecordingLimitState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4574
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/RecordingLimitState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/RecordingLimitState;>;"
    iget-object v1, p0, Lcom/android/camera/CameraThread$22;->this$0:Lcom/android/camera/CameraThread;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/RecordingLimitState;

    #calls: Lcom/android/camera/CameraThread;->onRecordingLimitStateChanged(Lcom/android/camera/RecordingLimitState;)V
    invoke-static {v1, v0}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;Lcom/android/camera/RecordingLimitState;)V

    .line 4575
    return-void
.end method
