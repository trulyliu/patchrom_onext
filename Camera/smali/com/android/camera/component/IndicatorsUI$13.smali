.class Lcom/android/camera/component/IndicatorsUI$13;
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
    .line 411
    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$13;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 415
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$13;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$13;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$100(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$13;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/camera/component/IndicatorsUI;->access$200(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v2

    #calls: Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->access$300(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 416
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$13;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$13;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$400(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$13;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/camera/component/IndicatorsUI;->access$500(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v2

    #calls: Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->access$300(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 417
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$13;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V
    invoke-static {v0, v3}, Lcom/android/camera/component/IndicatorsUI;->access$600(Lcom/android/camera/component/IndicatorsUI;Z)V

    .line 418
    return-void
.end method
