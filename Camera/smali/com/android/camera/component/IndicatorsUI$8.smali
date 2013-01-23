.class Lcom/android/camera/component/IndicatorsUI$8;
.super Lcom/android/camera/trigger/Trigger;
.source "IndicatorsUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$8;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$8;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V
    invoke-static {v0, v2}, Lcom/android/camera/component/IndicatorsUI;->access$600(Lcom/android/camera/component/IndicatorsUI;Z)V

    .line 338
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$8;->this$0:Lcom/android/camera/component/IndicatorsUI;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V
    invoke-static {v0, v2, v1}, Lcom/android/camera/component/IndicatorsUI;->access$1200(Lcom/android/camera/component/IndicatorsUI;ZZ)V

    .line 339
    return-void
.end method
