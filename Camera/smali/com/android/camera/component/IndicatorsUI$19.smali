.class Lcom/android/camera/component/IndicatorsUI$19;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI;->onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$19;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotate(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "view"
    .parameter "rotation"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$19;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v0, p2}, Lcom/android/camera/component/IndicatorsUI;->access$800(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/UIRotation;)V

    .line 525
    return-void
.end method
