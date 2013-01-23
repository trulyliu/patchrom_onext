.class Lcom/android/camera/component/IndicatorsUI$6;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI;->initializeOverride()V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Long;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 309
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$1000(Lcom/android/camera/component/IndicatorsUI;)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/android/camera/component/IndicatorsUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 318
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator()V
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$1100(Lcom/android/camera/component/IndicatorsUI;)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$400(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/camera/component/IndicatorsUI;->access$500(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v2

    #calls: Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2, v4}, Lcom/android/camera/component/IndicatorsUI;->access$300(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 320
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$400(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/camera/component/IndicatorsUI;->access$500(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v2

    #calls: Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2, v5}, Lcom/android/camera/component/IndicatorsUI;->access$300(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 322
    :cond_0
    return-void
.end method
