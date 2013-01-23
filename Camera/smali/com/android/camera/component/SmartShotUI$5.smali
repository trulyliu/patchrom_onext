.class Lcom/android/camera/component/SmartShotUI$5;
.super Ljava/lang/Object;
.source "SmartShotUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SmartShotUI;->setupPropertyChangedCallbacks()V
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
.field final synthetic this$0:Lcom/android/camera/component/SmartShotUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmartShotUI;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/camera/component/SmartShotUI$5;->this$0:Lcom/android/camera/component/SmartShotUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 1
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
    .line 452
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI$5;->this$0:Lcom/android/camera/component/SmartShotUI;

    #calls: Lcom/android/camera/component/SmartShotUI;->hideReviewScreen()V
    invoke-static {v0}, Lcom/android/camera/component/SmartShotUI;->access$100(Lcom/android/camera/component/SmartShotUI;)V

    .line 455
    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI$5;->this$0:Lcom/android/camera/component/SmartShotUI;

    #calls: Lcom/android/camera/component/SmartShotUI;->openCaptureUI()V
    invoke-static {v0}, Lcom/android/camera/component/SmartShotUI;->access$500(Lcom/android/camera/component/SmartShotUI;)V

    .line 456
    return-void
.end method
