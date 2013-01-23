.class Lcom/android/camera/component/GridViewUI$2;
.super Ljava/lang/Object;
.source "GridViewUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/GridViewUI;->setupPropertyChangedCallbacks()V
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
        "Lcom/android/camera/CameraType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/GridViewUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/GridViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/component/GridViewUI$2;->this$0:Lcom/android/camera/component/GridViewUI;

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
            "Lcom/android/camera/CameraType;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/CameraType;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/CameraType;>;"
    iget-object v0, p0, Lcom/android/camera/component/GridViewUI$2;->this$0:Lcom/android/camera/component/GridViewUI;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/component/GridViewUI;->showGridViewUI(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/GridViewUI;->access$000(Lcom/android/camera/component/GridViewUI;Z)V

    .line 94
    return-void
.end method
